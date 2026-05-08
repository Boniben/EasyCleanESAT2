<?php

namespace App\Repository;

use App\Entity\Actions;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Actions>
 */
class ActionsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Actions::class);
    }

    public function findAllActif(): array
    {
        return $this->findAllByActif(true);
    }

    public function findAllInactif(): array
    {
        return $this->findAllByActif(false);
    }

    /**
     * Charge toutes les actions (actives ou inactives) en une seule requête
     * en eager-loading les relations utilisées par le template index
     * pour éviter le problème N+1 et le timeout MySQL.
     *
     * Tri : actifs par id ASC, inactifs par dateDesactivation DESC (récent d'abord).
     */
    private function findAllByActif(bool $actif): array
    {
        $qb = $this->createQueryBuilder('a')
            ->leftJoin('a.meo_produit', 'mp')->addSelect('mp')
            ->leftJoin('mp.produit', 'p')->addSelect('p')
            ->leftJoin('mp.contenant', 'c')->addSelect('c')
            ->leftJoin('c.uniteVolume', 'cuv')->addSelect('cuv')
            ->leftJoin('mp.moyenDosage', 'md')->addSelect('md')
            ->leftJoin('mp.tempsContact', 'tc')->addSelect('tc')
            ->leftJoin('mp.uniteVolume', 'uv')->addSelect('uv')
            ->leftJoin('a.necessaire', 'n')->addSelect('n')
            ->leftJoin('n.type_necessaire', 'tn')->addSelect('tn')
            ->andWhere('a.actif = :actif')
            ->setParameter('actif', $actif);

        if ($actif) {
            $qb->orderBy('a.id', 'ASC')->addOrderBy('n.id', 'ASC');
        } else {
            // Récents d'abord ; legacy (NULL) en dernier via fallback sur l'id DESC
            $qb->orderBy('a.dateDesactivation', 'DESC')->addOrderBy('a.id', 'DESC');
        }

        return $qb->getQuery()->getResult();
    }
    //     * @return Actions[] Returns an array of Actions objects
    //     */
    //    public function findByExampleField($value): array
    //    {
    //        return $this->createQueryBuilder('a')
    //            ->andWhere('a.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->orderBy('a.id', 'ASC')
    //            ->setMaxResults(10)
    //            ->getQuery()
    //            ->getResult()
    //        ;
    //    }

    //    public function findOneBySomeField($value): ?Actions
    //    {
    //        return $this->createQueryBuilder('a')
    //            ->andWhere('a.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->getQuery()
    //            ->getOneOrNullResult()
    //        ;
    //    }
}
