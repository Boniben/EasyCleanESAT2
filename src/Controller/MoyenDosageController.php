<?php

namespace App\Controller;

use App\Entity\MoyenDosage;
use App\Form\MoyenDosageType;
use App\Repository\MoyenDosageRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/moyen/dosage')]
final class MoyenDosageController extends AbstractController
{
    #[Route(name: 'app_moyen_dosage_index', methods: ['GET'])]
    public function index(MoyenDosageRepository $moyenDosageRepository): Response
    {
        return $this->render('moyen_dosage/index.html.twig', [
            'moyen_dosages' => $moyenDosageRepository->findAllActif(),
        ]);
    }

    #[Route('/inactif', name: 'app_moyen_dosage_inactif', methods: ['GET'])]
    public function indexInactif(MoyenDosageRepository $moyenDosageRepository): Response
    {
        return $this->render('moyen_dosage/index_inactif.html.twig', [
            'moyen_dosages' => $moyenDosageRepository->findAllInactif(),
        ]);
    }

    #[Route('/new', name: 'app_moyen_dosage_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $moyenDosage = new MoyenDosage();
        $form = $this->createForm(MoyenDosageType::class, $moyenDosage, [
            'picto_upload_mode' => true,
        ]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $uploadedPicto = $form->get('pictoFile')->getData();

            $entityManager->persist($moyenDosage);
            $entityManager->flush();

            if ($uploadedPicto) {
                $targetDirectory = $this->getParameter('kernel.project_dir').'/public/PictoMoyenDosagePNG';

                if (!is_dir($targetDirectory)) {
                    mkdir($targetDirectory, 0775, true);
                }

                $pictoFileName = $moyenDosage->getId().'.png';
                $uploadedPicto->move($targetDirectory, $pictoFileName);

                $moyenDosage->setPicto($pictoFileName);
                $entityManager->flush();
            }

            return $this->redirectToRoute('app_moyen_dosage_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('moyen_dosage/new.html.twig', [
            'moyen_dosage' => $moyenDosage,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_moyen_dosage_show', methods: ['GET'])]
    public function show(MoyenDosage $moyenDosage): Response
    {
        return $this->render('moyen_dosage/show.html.twig', [
            'moyen_dosage' => $moyenDosage,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_moyen_dosage_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, MoyenDosage $moyenDosage, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(MoyenDosageType::class, $moyenDosage, [
            'picto_upload_mode' => true,
        ]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $uploadedPicto = $form->get('pictoFile')->getData();

            if ($uploadedPicto) {
                $targetDirectory = $this->getParameter('kernel.project_dir').'/public/PictoMoyenDosagePNG';

                if (!is_dir($targetDirectory)) {
                    mkdir($targetDirectory, 0775, true);
                }

                $pictoFileName = $moyenDosage->getId().'.png';
                $targetPath = $targetDirectory.'/'.$pictoFileName;

                if (file_exists($targetPath)) {
                    unlink($targetPath);
                }

                $uploadedPicto->move($targetDirectory, $pictoFileName);
                $moyenDosage->setPicto($pictoFileName);
            }

            $entityManager->flush();

            return $this->redirectToRoute('app_moyen_dosage_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('moyen_dosage/edit.html.twig', [
            'moyen_dosage' => $moyenDosage,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_moyen_dosage_delete', methods: ['POST'])]
    public function delete(Request $request, MoyenDosage $moyenDosage, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$moyenDosage->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($moyenDosage);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_moyen_dosage_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/{id}/toggle-actif', name: 'app_moyen_dosage_toggle_actif', methods: ['POST'])]
    public function toggleActif(Request $request, MoyenDosage $moyenDosage, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('toggle_actif'.$moyenDosage->getId(), $request->getPayload()->getString('_token'))) {
            $shouldDeactivate = $moyenDosage->isActif();
            $moyenDosage->setActif(!$shouldDeactivate);
            $now = new \DateTime();

            if ($shouldDeactivate) {
                $moyenDosage->setDateDesactivation($now);
                $nbMeo = 0;
                $nbAct = 0;
                foreach ($moyenDosage->getMeoProduits() as $meo) {
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
                        'Moyen de dosage désactivé. %d MEO produit(s) et %d action(s) liée(s) ont également été désactivé(e)s.',
                        $nbMeo, $nbAct
                    ));
                } elseif ($nbMeo > 0) {
                    $this->addFlash('success', sprintf('Moyen de dosage désactivé (%d MEO produit(s) désactivé(s)).', $nbMeo));
                } else {
                    $this->addFlash('success', 'Moyen de dosage désactivé.');
                }
            } else {
                $moyenDosage->setDateDesactivation(null);
                $this->addFlash('success', 'Moyen de dosage réactivé.');
            }

            $entityManager->flush();
        }

        return $this->redirectToRoute('app_moyen_dosage_show', ['id' => $moyenDosage->getId()], Response::HTTP_SEE_OTHER);
    }

    #[Route('/bulk/reactivate', name: 'app_moyen_dosage_bulk_reactivate', methods: ['POST'])]
    public function bulkReactivate(Request $request, MoyenDosageRepository $moyenDosageRepository, EntityManagerInterface $entityManager): Response
    {
        if (!$this->isCsrfTokenValid('bulk_reactivate_moyen_dosage', $request->getPayload()->getString('_token'))) {
            $this->addFlash('danger', 'Jeton CSRF invalide.');
            return $this->redirectToRoute('app_moyen_dosage_inactif');
        }

        $ids = $request->getPayload()->all('ids');
        $ids = array_filter(array_map('intval', is_array($ids) ? $ids : []));

        if (empty($ids)) {
            $this->addFlash('warning', 'Aucun moyen de dosage sélectionné.');
            return $this->redirectToRoute('app_moyen_dosage_inactif');
        }

        $count = 0;
        foreach ($moyenDosageRepository->findBy(['id' => $ids]) as $md) {
            if (!$md->isActif()) {
                $md->setActif(true);
                $md->setDateDesactivation(null);
                $count++;
            }
        }
        $entityManager->flush();

        $this->addFlash('success', sprintf('%d moyen(s) de dosage réactivé(s).', $count));
        return $this->redirectToRoute('app_moyen_dosage_inactif');
    }
}
