<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;


/**
 * SecCompany
 *
 * @ORM\Table(name="sec_company", uniqueConstraints={@ORM\UniqueConstraint(name="sec_company_un1", columns={"name"}), @ORM\UniqueConstraint(name="sec_company_un", columns={"cuit"})})
 * @ORM\Entity
 */
class SecCompany
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=80, nullable=false)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="text", nullable=true)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="shortdescription", type="string", length=1024, nullable=true)
     */
    private $shortdescription;

    /**
     * @var string|null
     *
     * @ORM\Column(name="logo", type="string", length=100, nullable=true)
     */
    private $logo;

    /**
     * @var string|null
     *
     * @ORM\Column(name="cuit", type="string", length=15, nullable=true)
     */
    private $cuit;

    /**
     * @var string|null
     *
     * @ORM\Column(name="telephone", type="string", length=20, nullable=true)
     */
    private $telephone;

    /**
     * @var \SysType
     *
     * @ORM\ManyToOne(targetEntity="SysType")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="country_id", referencedColumnName="id")
     * })
     */
    private $country;

    /**
     * @var string|null
     *
     * @ORM\Column(name="comments", type="string", length=1024, nullable=true)
     */
    private $comments;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="expiredate", type="datetimetz", nullable=false)
     */
    private $expiredate;

    /**
     * @var int|null
     *
     * @ORM\Column(name="active", type="smallint", nullable=true, options={"default"="1"})
     */
    private $active = '1';

    /**
     * @var string|null
     *
     * @ORM\Column(name="lad_oid", type="string", length=25, nullable=true)
     */
    private $ladOid;

    /**
     * @var string|null
     *
     * @ORM\Column(name="lad_auth0connectionname", type="string", length=100, nullable=true)
     */
    private $ladAuth0connectionname;

    /**
     * @var string|null
     *
     * @ORM\Column(name="lad_name", type="string", length=100, nullable=true)
     */
    private $ladName;

    /**
     * @var string|null
     *
     * @ORM\Column(name="lad_billingemailaddress", type="string", length=100, nullable=true)
     */
    private $ladBillingemailaddress;

    /**
     * @var int|null
     *
     * @ORM\Column(name="lad_active", type="smallint", nullable=true, options={"default"="1"})
     */
    private $ladActive = '1';

    /**
     * @var array|null
     *
     * @ORM\Column(name="lad_extradata", type="json", nullable=true)
     */
    private $ladExtradata;

    /**
     * @var int|null
     *
     * @ORM\Column(name="created_by", type="integer", nullable=true)
     */
    private $createdBy;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="created_at", type="datetime", nullable=true)
     */
    private $createdAt;

    /**
     * @var int|null
     *
     * @ORM\Column(name="updated_by", type="integer", nullable=true)
     */
    private $updatedBy;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="updated_at", type="datetime", nullable=true)
     */
    private $updatedAt;

    /**
     * @var int|null
     *
     * @ORM\Column(name="deleted_by", type="integer", nullable=true)
     */
    private $deletedBy;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="deleted_at", type="datetime", nullable=true)
     */
    private $deletedAt;



    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
        $this->expiredate= new \DateTime('now + 1 year');
    }

    /**
     * @ORM\PrePersist
     */
    public function setUpdatedAtValue(): void
    {
        $this->updatedAt = new \DateTime();
    }


    public function getId(): ?int
    {
        return $this->id;
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

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getShortdescription(): ?string
    {
        return $this->shortdescription;
    }

    public function setShortdescription(?string $shortdescription): static
    {
        $this->shortdescription = $shortdescription;

        return $this;
    }

    public function getLogo(): ?string
    {
        return $this->logo;
    }

    public function setLogo(?string $logo): static
    {
        $this->logo = $logo;

        return $this;
    }

    public function getCuit(): ?string
    {
        return $this->cuit;
    }

    public function setCuit(?string $cuit): static
    {
        $this->cuit = $cuit;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(?string $telephone): static
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getCountry(): ?SysType
    {
        return $this->country;
    }

    public function setCountry(?SysType $country): static
    {
        $this->country = $country;

        return $this;
    }

    public function getComments(): ?string
    {
        return $this->comments;
    }

    public function setComments(?string $comments): static
    {
        $this->comments = $comments;

        return $this;
    }

    public function getExpiredate(): ?\DateTimeInterface
    {
        return $this->expiredate;
    }

    public function setExpiredate(\DateTimeInterface $expiredate): static
    {
        $this->expiredate = $expiredate;

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

    public function getLadOid(): ?string
    {
        return $this->ladOid;
    }

    public function setLadOid(?string $ladOid): static
    {
        $this->ladOid = $ladOid;

        return $this;
    }

    public function getLadAuth0connectionname(): ?string
    {
        return $this->ladAuth0connectionname;
    }

    public function setLadAuth0connectionname(?string $ladAuth0connectionname): static
    {
        $this->ladAuth0connectionname = $ladAuth0connectionname;

        return $this;
    }

    public function getLadName(): ?string
    {
        return $this->ladName;
    }

    public function setLadName(?string $ladName): static
    {
        $this->ladName = $ladName;

        return $this;
    }

    public function getLadBillingemailaddress(): ?string
    {
        return $this->ladBillingemailaddress;
    }

    public function setLadBillingemailaddress(?string $ladBillingemailaddress): static
    {
        $this->ladBillingemailaddress = $ladBillingemailaddress;

        return $this;
    }

    public function getLadActive(): ?int
    {
        return $this->ladActive;
    }

    public function setLadActive(?int $ladActive): static
    {
        $this->ladActive = $ladActive;

        return $this;
    }

    public function getLadExtradata(): ?array
    {
        return $this->ladExtradata;
    }

    public function setLadExtradata(?array $ladExtradata): static
    {
        $this->ladExtradata = $ladExtradata;

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

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(?\DateTimeInterface $createdAt): static
    {
        $this->createdAt = $createdAt;

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

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(?\DateTimeInterface $updatedAt): static
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getDeletedBy(): ?int
    {
        return $this->deletedBy;
    }

    public function setDeletedBy(?int $deletedBy): static
    {
        $this->deletedBy = $deletedBy;

        return $this;
    }

    public function getDeletedAt(): ?\DateTimeInterface
    {
        return $this->deletedAt;
    }

    public function setDeletedAt(?\DateTimeInterface $deletedAt): static
    {
        $this->deletedAt = $deletedAt;

        return $this;
    }

}
