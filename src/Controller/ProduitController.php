<?php

namespace App\Controller;

use App\Entity\Produit;
use App\Form\ProduitType;
use App\Repository\ProduitRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/produit')]
final class ProduitController extends AbstractController
{
    #[Route(name: 'app_produit_index', methods: ['GET'])]
    public function index(ProduitRepository $produitRepository): Response
    {
        return $this->render('produit/index.html.twig', [
            'produits' => $produitRepository->findAllActif(),
        ]);
    }

    #[Route('/inactif', name: 'app_produit_inactif', methods: ['GET'])]
    public function indexInactif(ProduitRepository $produitRepository): Response
    {
        return $this->render('produit/index_inactif.html.twig', [
            'produits' => $produitRepository->findAllInactif(),
        ]);
    }

    #[Route('/new', name: 'app_produit_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager, ProduitRepository $produitRepository): Response
    {
        $produit = new Produit();
        $produit->setCode($produitRepository->getNextCode());
        $form = $this->createForm(ProduitType::class, $produit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($produit);
            $entityManager->flush();

            return $this->redirectToRoute('app_produit_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('produit/new.html.twig', [
            'produit' => $produit,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_produit_show', methods: ['GET'])]
    public function show(Produit $produit): Response
    {
        return $this->render('produit/show.html.twig', [
            'produit' => $produit,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_produit_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Produit $produit, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ProduitType::class, $produit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_produit_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('produit/edit.html.twig', [
            'produit' => $produit,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_produit_delete', methods: ['POST'])]
    public function delete(Request $request, Produit $produit, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$produit->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($produit);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_produit_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/{id}/toggle-actif', name: 'app_produit_toggle_actif', methods: ['POST'])]
    public function toggleActif(Request $request, Produit $produit, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('toggle_actif'.$produit->getId(), $request->getPayload()->getString('_token'))) {
            $shouldDeactivate = $produit->isActif();

            $produit->setActif(!$shouldDeactivate);
            $now = new \DateTime();

            if ($shouldDeactivate) {
                $produit->setDateDesactivation($now);
                $nbMeoDesactives    = 0;
                $nbActionsDesactivees = 0;

                foreach ($produit->getMeoProduits() as $meoProduit) {
                    if ($meoProduit->isActif()) {
                        $meoProduit->setActif(false);
                        $meoProduit->setDateDesactivation($now);
                        $nbMeoDesactives++;
                    }
                    // Cascade : désactiver toutes les actions qui utilisent ce MeoProduit
                    foreach ($meoProduit->getActions() as $action) {
                        if ($action->isActif()) {
                            $action->setActif(false);
                            $action->setDateDesactivation($now);
                            $entityManager->persist($action);
                            $nbActionsDesactivees++;
                        }
                    }
                }

                if ($nbActionsDesactivees > 0) {
                    $this->addFlash('warning', sprintf(
                        'Le produit a été désactivé. %d MEO produit(s) et %d action(s) liée(s) ont également été désactivé(e)s.',
                        $nbMeoDesactives,
                        $nbActionsDesactivees
                    ));
                } elseif ($nbMeoDesactives > 0) {
                    $this->addFlash('success', sprintf(
                        'Le produit a été désactivé (%d MEO produit(s) désactivé(s), aucune action liée).',
                        $nbMeoDesactives
                    ));
                } else {
                    $this->addFlash('success', 'Le produit a été désactivé.');
                }
            } else {
                $produit->setDateDesactivation(null);
                $this->addFlash('success', 'Le produit a été réactivé.');
            }

            $entityManager->flush();
        }

        return $this->redirectToRoute('app_produit_show', ['id' => $produit->getId()], Response::HTTP_SEE_OTHER);
    }

    #[Route('/bulk/reactivate', name: 'app_produit_bulk_reactivate', methods: ['POST'])]
    public function bulkReactivate(Request $request, ProduitRepository $produitRepository, EntityManagerInterface $entityManager): Response
    {
        if (!$this->isCsrfTokenValid('bulk_reactivate_produit', $request->getPayload()->getString('_token'))) {
            $this->addFlash('danger', 'Jeton CSRF invalide.');
            return $this->redirectToRoute('app_produit_inactif');
        }

        $ids = $request->getPayload()->all('ids');
        $ids = array_filter(array_map('intval', is_array($ids) ? $ids : []));

        if (empty($ids)) {
            $this->addFlash('warning', 'Aucun produit sélectionné.');
            return $this->redirectToRoute('app_produit_inactif');
        }

        $count = 0;
        foreach ($produitRepository->findBy(['id' => $ids]) as $produit) {
            if (!$produit->isActif()) {
                $produit->setActif(true);
                $produit->setDateDesactivation(null);
                $count++;
            }
        }
        $entityManager->flush();

        $this->addFlash('success', sprintf('%d produit(s) réactivé(s).', $count));
        return $this->redirectToRoute('app_produit_inactif');
    }
}
