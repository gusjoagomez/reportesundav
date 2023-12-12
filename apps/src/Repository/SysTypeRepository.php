<?php

namespace App\Repository;

use App\Entity\SysType;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<SysType>
 *
 * @method SysType|null find($id, $lockMode = null, $lockVersion = null)
 * @method SysType|null findOneBy(array $criteria, array $orderBy = null)
 * @method SysType[]    findAll()
 * @method SysType[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SysTypeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SysType::class);
    }

    public function add(SysType $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(SysType $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function TraerPorTipo($tipo) {
        $qb = $this->createQueryBuilder('g')
               ->select('g')
              ->where('g.type = :tipo')
              ->orderBy('g.name','ASC')
              ->setParameter('tipo', $tipo);
    
        return $qb;
    }
    
    
//    /**
//     * @return SysType[] Returns an array of SysType objects
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

//    public function findOneBySomeField($value): ?SysType
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
