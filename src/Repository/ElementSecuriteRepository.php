<?php

namespace App\Repository;

use App\Entity\ElementSecurite;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<ElementSecurite>
 */
class ElementSecuriteRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ElementSecurite::class);
    }

    /**
     * Retourne un tableau code => nom lisible depuis la table necessaire.
     * @return array<string, string>
     */
    public function findNomMap(): array
    {
        $conn = $this->getEntityManager()->getConnection();
        $sql = '
            SELECT e.nom AS code, COALESCE(n.nom, e.nom) AS label
            FROM element_securite e
            LEFT JOIN necessaire n ON n.code = e.nom
        ';
        $rows = $conn->fetchAllAssociative($sql);
        $map = [];
        foreach ($rows as $row) {
            $map[$row['code']] = $row['label'];
        }
        return $map;
    }
}
