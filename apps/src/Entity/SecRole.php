<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * SecRole
 *
 * @ORM\Table(name="sec_role", indexes={@ORM\Index(name="sec_role_fk_sec_role_sec_company1", columns={"company_id"}), @ORM\Index(name="sec_role_fk_role_user2", columns={"updated_by"}), @ORM\Index(name="sec_role_fk_role_user1", columns={"created_by"})})
 * @ORM\Entity
 */
class SecRole
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sec_role_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \SecCompany
     *
     * @ORM\ManyToOne(targetEntity="SecCompany")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="company_id", referencedColumnName="id")
     * })
     */
    private $company;

    /**
     * @var string|null
     *
     * @ORM\Column(name="code", type="string", length=15, nullable=true)
     */
    private $code;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=50, nullable=false)
     */
    private $name;

    /**
     * @var int|null
     *
     * @ORM\Column(name="active", type="smallint", nullable=true, options={"default"="1"})
     */
    private $active = '1';

    /**
     * @var int
     *
     * @ORM\Column(name="orderlist", type="integer", nullable=false)
     */
    private $orderlist;

    /**
     * @var int|null
     *
     * @ORM\Column(name="created_by", type="integer", nullable=true)
     */
    private $createdBy;

    /**
     * @var int|null
     *
     * @ORM\Column(name="updated_by", type="integer", nullable=true)
     */
    private $updatedBy;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created_at", type="datetimetz", nullable=false)
     */
    private $createdAt;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="updated_at", type="datetimetz", nullable=false)
     */
    private $updatedAt;

    
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->createdAt = new \DateTime(); 
        $this->updatedAt = new \DateTime();
    }     
    
    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCompany(): ?SecCompany
    {
        return $this->company;
    }

    public function setCompany(?SecCompany $company): static
    {
        $this->company = $company;

        return $this;
    }

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(?string $code): static
    {
        $this->code = $code;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getActive(): ?int
    {
        return $this->active;
    }

    public function setActive(?int $active): static
    {
        $this->active = $active;

        return $this;
    }

    public function getOrderlist(): ?int
    {
        return $this->orderlist;
    }

    public function setOrderlist(int $orderlist): static
    {
        $this->orderlist = $orderlist;

        return $this;
    }

    public function getCreatedBy(): ?int
    {
        return $this->createdBy;
    }

    public function setCreatedBy(?int $createdBy): static
    {
        $this->createdBy = $createdBy;

        return $this;
    }

    public function getUpdatedBy(): ?int
    {
        return $this->updatedBy;
    }

    public function setUpdatedBy(?int $updatedBy): static
    {
        $this->updatedBy = $updatedBy;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(\DateTimeInterface $updatedAt): static
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }


}
