<?php

namespace App\Controller;

use App\Entity\Contenant;
use App\Form\ContenantType;
use App\Repository\ContenantRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/contenant')]
final class ContenantController extends AbstractController
{
    #[Route(name: 'app_contenant_index', methods: ['GET'])]
    public function index(ContenantRepository $contenantRepository): Response
    {
        return $this->render('contenant/index.html.twig', [
            'contenants' => $contenantRepository->findAllActif(),
        ]);
    }

    #[Route('/inactif', name: 'app_contenant_inactif', methods: ['GET'])]
    public function indexInactif(ContenantRepository $contenantRepository): Response
    {
        return $this->render('contenant/index_inactif.html.twig', [
            'contenants' => $contenantRepository->findAllInactif(),
        ]);
    }

    #[Route('/new', name: 'app_contenant_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $contenant = new Contenant();
        $form = $this->createForm(ContenantType::class, $contenant, [
            'picto_upload_mode' => true,
        ]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $uploadedPicto = $form->get('pictoFile')->getData();

            $entityManager->persist($contenant);
            $entityManager->flush();

            if ($uploadedPicto) {
                $targetDirectory = $this->getParameter('kernel.project_dir').'/public/PictoContenantPNG';

                if (!is_dir($targetDirectory)) {
                    mkdir($targetDirectory, 0775, true);
                }

                $pictoFileName = $contenant->getId().'.png';
                $uploadedPicto->move($targetDirectory, $pictoFileName);

                $contenant->setPicto($pictoFileName);
                $entityManager->flush();
            }

            return $this->redirectToRoute('app_contenant_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('contenant/new.html.twig', [
            'contenant' => $contenant,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_contenant_show', methods: ['GET'])]
    public function show(Contenant $contenant): Response
    {
        return $this->render('contenant/show.html.twig', [
            'contenant' => $contenant,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_contenant_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Contenant $contenant, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ContenantType::class, $contenant, [
            'picto_upload_mode' => true,
        ]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $uploadedPicto = $form->get('pictoFile')->getData();

            if ($uploadedPicto) {
                $targetDirectory = $this->getParameter('kernel.project_dir').'/public/PictoContenantPNG';

                if (!is_dir($targetDirectory)) {
                    mkdir($targetDirectory, 0775, true);
                }

                $pictoFileName = $contenant->getId().'.png';
                $targetPath = $targetDirectory.'/'.$pictoFileName;

                if (file_exists($targetPath)) {
                    unlink($targetPath);
                }

                $uploadedPicto->move($targetDirectory, $pictoFileName);
                $contenant->setPicto($pictoFileName);
            }

            $entityManager->flush();

            return $this->redirectToRoute('app_contenant_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('contenant/edit.html.twig', [
            'contenant' => $contenant,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_contenant_delete', methods: ['POST'])]
    public function delete(Request $request, Contenant $contenant, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$contenant->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($contenant);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_contenant_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/{id}/toggle-actif', name: 'app_contenant_toggle_actif', methods: ['POST'])]
    public function toggleActif(Request $request, Contenant $contenant, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('toggle_actif'.$contenant->getId(), $request->getPayload()->getString('_token'))) {
            $shouldDeactivate = $contenant->isActif();
            $contenant->setActif(!$shouldDeactivate);
            $now = new \DateTime();

            if ($shouldDeactivate) {
                $contenant->setDateDesactivation($now);
                $nbMeo = 0;
                $nbAct = 0;
                foreach ($contenant->getMeoProduits() as $meo) {
                    if ($meo->isActif()) {
                        $meo->setActif(false);
                        $meo->setDateDesactivation($now);
                        $nbMeo++;
                    }
                    foreach ($meo->getActions() as $action) {
                        if ($action->isActif()) {
                            $action->setActif(false);
                            $action->setDateDesactivation($now);
                            $entityManager->persist($action);
                            $nbAct++;
                        }
                    }
                }
                if ($nbAct > 0) {
                    $this->addFlash('warning', sprintf(
                        'Contenant désactivé. %d MEO produit(s) et %d action(s) liée(s) ont également été désactivé(e)s.',
                        $nbMeo, $nbAct
                    ));
                } elseif ($nbMeo > 0) {
                    $this->addFlash('success', sprintf('Contenant désactivé (%d MEO produit(s) désactivé(s)).', $nbMeo));
                } else {
                    $this->addFlash('success', 'Contenant désactivé.');
                }
            } else {
                $contenant->setDateDesactivation(null);
                $this->addFlash('success', 'Contenant réactivé.');
            }

            $entityManager->flush();
        }

        return $this->redirectToRoute('app_contenant_show', ['id' => $contenant->getId()], Response::HTTP_SEE_OTHER);
    }

    #[Route('/bulk/reactivate', name: 'app_contenant_bulk_reactivate', methods: ['POST'])]
    public function bulkReactivate(Request $request, ContenantRepository $contenantRepository, EntityManagerInterface $entityManager): Response
    {
        if (!$this->isCsrfTokenValid('bulk_reactivate_contenant', $request->getPayload()->getString('_token'))) {
            $this->addFlash('danger', 'Jeton CSRF invalide.');
            return $this->redirectToRoute('app_contenant_inactif');
        }

        $ids = $request->getPayload()->all('ids');
        $ids = array_filter(array_map('intval', is_array($ids) ? $ids : []));

        if (empty($ids)) {
            $this->addFlash('warning', 'Aucun contenant sélectionné.');
            return $this->redirectToRoute('app_contenant_inactif');
        }

        $count = 0;
        foreach ($contenantRepository->findBy(['id' => $ids]) as $contenant) {
            if (!$contenant->isActif()) {
                $contenant->setActif(true);
                $contenant->setDateDesactivation(null);
                $count++;
            }
        }
        $entityManager->flush();

        $this->addFlash('success', sprintf('%d contenant(s) réactivé(s).', $count));
        return $this->redirectToRoute('app_contenant_inactif');
    }
}
