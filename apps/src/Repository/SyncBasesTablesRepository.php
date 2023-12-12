<?php

namespace App\Repository;

use App\Entity\SyncBasesTables;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<SyncBasesTables>
 *
 * @method SyncBasesTables|null find($id, $lockMode = null, $lockVersion = null)
 * @method SyncBasesTables|null findOneBy(array $criteria, array $orderBy = null)
 * @method SyncBasesTables[]    findAll()
 * @method SyncBasesTables[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SyncBasesTablesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SyncBasesTables::class);
    }

    public function add(SyncBasesTables $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(SyncBasesTables $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    
//    /**
//     * @return SyncBasesTables[] Returns an array of SyncBasesTables objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('s.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?SyncBasesTables
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
