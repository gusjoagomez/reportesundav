<?php

namespace App\Repository;

use App\Entity\CatEntityRels;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<CatEntityRels>
 *
 * @method CatEntityRels|null find($id, $lockMode = null, $lockVersion = null)
 * @method CatEntityRels|null findOneBy(array $criteria, array $orderBy = null)
 * @method CatEntityRels[]    findAll()
 * @method CatEntityRels[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CatEntityRelsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CatEntityRels::class);
    }

    public function add(CatEntityRels $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(CatEntityRels $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    
//    /**
//     * @return CatEntityRels[] Returns an array of CatEntityRels objects
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

//    public function findOneBySomeField($value): ?CatEntityRels
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
