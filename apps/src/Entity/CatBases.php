<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CatBases
 *
 * @ORM\Table(name="cat_bases")
 * @ORM\Entity
 */
class CatBases
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="cat_bases_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nameconn", type="string", length=100, nullable=true)
     */
    private $nameconn;

    /**
     * @var string|null
     *
     * @ORM\Column(name="hostdb", type="string", length=100, nullable=true)
     */
    private $hostdb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="portdb", type="string", length=100, nullable=true)
     */
    private $portdb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="basedb", type="string", length=100, nullable=true)
     */
    private $basedb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="userdb", type="string", length=100, nullable=true)
     */
    private $userdb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="passdb", type="string", length=100, nullable=true)
     */
    private $passdb;

    /**
     * @var bool|null
     *
     * @ORM\Column(name="active", type="boolean", nullable=true)
     */
    private $active;

    /**
     * @var string|null
     *
     * @ORM\Column(name="schemas", type="string", length=512, nullable=true)
     */
    private $schemas;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNameconn(): ?string
    {
        return $this->nameconn;
    }

    public function setNameconn(?string $nameconn): static
    {
        $this->nameconn = $nameconn;

        return $this;
    }

    public function getHostdb(): ?string
    {
        return $this->hostdb;
    }

    public function setHostdb(?string $hostdb): static
    {
        $this->hostdb = $hostdb;

        return $this;
    }

    public function getPortdb(): ?string
    {
        return $this->portdb;
    }

    public function setPortdb(?string $portdb): static
    {
        $this->portdb = $portdb;

        return $this;
    }

    public function getBasedb(): ?string
    {
        return $this->basedb;
    }

    public function setBasedb(?string $basedb): static
    {
        $this->basedb = $basedb;

        return $this;
    }

    public function getUserdb(): ?string
    {
        return $this->userdb;
    }

    public function setUserdb(?string $userdb): static
    {
        $this->userdb = $userdb;

        return $this;
    }

    public function getPassdb(): ?string
    {
        return $this->passdb;
    }

    public function setPassdb(?string $passdb): static
    {
        $this->passdb = $passdb;

        return $this;
    }

    public function isActive(): ?bool
    {
        return $this->active;
    }

    public function setActive(?bool $active): static
    {
        $this->active = $active;

        return $this;
    }

    public function getSchemas(): ?string
    {
        return $this->schemas;
    }

    public function setSchemas(?string $schemas): static
    {
        $this->schemas = $schemas;

        return $this;
    }

   


}
