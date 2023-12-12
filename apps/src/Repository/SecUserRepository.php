<?php

namespace App\Repository;

use App\Entity\SecUser;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\Security\Core\Exception\UnsupportedUserException;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\PasswordUpgraderInterface;

/**
 * @extends ServiceEntityRepository<SecUser>
* @implements PasswordUpgraderInterface<SecUser>
 *
 * @method SecUser|null find($id, $lockMode = null, $lockVersion = null)
 * @method SecUser|null findOneBy(array $criteria, array $orderBy = null)
 * @method SecUser[]    findAll()
 * @method SecUser[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SecUserRepository extends ServiceEntityRepository implements PasswordUpgraderInterface
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SecUser::class);
    }

    /**
     * Used to upgrade (rehash) the user's password automatically over time.
     */
    public function upgradePassword(PasswordAuthenticatedUserInterface $user, string $newHashedPassword): void
    {
        if (!$user instanceof SecUser) {
            throw new UnsupportedUserException(sprintf('Instances of "%s" are not supported.', $user::class));
        }

        $user->setPassword($newHashedPassword);
        $this->getEntityManager()->persist($user);
        $this->getEntityManager()->flush();
    }

    public function add(SecUser $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(SecUser $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    
    
    public function GetOptionMenu(int $roleId): array
    {
        $conn = $this->getEntityManager()->getConnection();

        $sql="SELECT * FROM sec_rolemenu r LEFT JOIN sec_menu m ON m.id=r.menu_id AND r.role_id=:roleId
              WHERE m.type_id IN (1,2) AND m.availablesel=1 ORDER BY orderlist";
        $stmt = $conn->prepare($sql);
        $resultSet = $stmt->executeQuery(['roleId' => $roleId]);
        
        return $resultSet->fetchAllAssociative();
    }


//    /**
//     * @return SecUser[] Returns an array of SecUser objects
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

//    public function findOneBySomeField($value): ?SecUser
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
