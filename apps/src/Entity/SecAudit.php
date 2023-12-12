<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * SecAudit
 *
 * @ORM\Table(name="sec_audit", indexes={@ORM\Index(name="IDX_A490A15F979B1AD6", columns={"company_id"}), @ORM\Index(name="IDX_A490A15FA76ED395", columns={"user_id"})})
 * @ORM\Entity
 */
class SecAudit
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sec_audit_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="objecttype", type="string", length=5, nullable=true)
     */
    private $objecttype;

    /**
     * @var string|null
     *
     * @ORM\Column(name="code", type="string", length=15, nullable=true)
     */
    private $code;

    /**
     * @var int|null
     *
     * @ORM\Column(name="objectid", type="integer", nullable=true)
     */
    private $objectid;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="string", length=2048, nullable=true)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="crud", type="string", length=2, nullable=true)
     */
    private $crud;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="eventdate", type="datetimetz", nullable=false)
     */
    private $eventdate;

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
     * @var \SecUser
     *
     * @ORM\ManyToOne(targetEntity="SecUser")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getObjecttype(): ?string
    {
        return $this->objecttype;
    }

    public function setObjecttype(?string $objecttype): static
    {
        $this->objecttype = $objecttype;

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

    public function getObjectid(): ?int
    {
        return $this->objectid;
    }

    public function setObjectid(?int $objectid): static
    {
        $this->objectid = $objectid;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getCrud(): ?string
    {
        return $this->crud;
    }

    public function setCrud(?string $crud): static
    {
        $this->crud = $crud;

        return $this;
    }

    public function getEventdate(): ?\DateTimeInterface
    {
        return $this->eventdate;
    }

    public function setEventdate(\DateTimeInterface $eventdate): static
    {
        $this->eventdate = $eventdate;

        return $this;
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

    public function getUser(): ?SecUser
    {
        return $this->user;
    }

    public function setUser(?SecUser $user): static
    {
        $this->user = $user;

        return $this;
    }


}
