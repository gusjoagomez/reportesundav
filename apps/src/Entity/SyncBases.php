<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SyncBases
 *
 * @ORM\Table(name="sync_bases")
 * @ORM\Entity
 */
class SyncBases
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sync_bases_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", nullable=false)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="fhost", type="string", nullable=false)
     */
    private $fhost;

    /**
     * @var string
     *
     * @ORM\Column(name="fuser", type="string", nullable=false)
     */
    private $fuser;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fpasswd", type="string", nullable=true)
     */
    private $fpasswd;

    /**
     * @var string
     *
     * @ORM\Column(name="fport", type="string", nullable=false)
     */
    private $fport;

    /**
     * @var string
     *
     * @ORM\Column(name="thost", type="string", nullable=false)
     */
    private $thost;

    /**
     * @var string
     *
     * @ORM\Column(name="tuser", type="string", nullable=false)
     */
    private $tuser;

    /**
     * @var string|null
     *
     * @ORM\Column(name="tpasswd", type="string", nullable=true)
     */
    private $tpasswd;

    /**
     * @var string
     *
     * @ORM\Column(name="tport", type="string", nullable=false)
     */
    private $tport;

    /**
     * @var bool|null
     *
     * @ORM\Column(name="active", type="boolean", nullable=true)
     */
    private $active;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getFhost(): ?string
    {
        return $this->fhost;
    }

    public function setFhost(string $fhost): static
    {
        $this->fhost = $fhost;

        return $this;
    }

    public function getFuser(): ?string
    {
        return $this->fuser;
    }

    public function setFuser(string $fuser): static
    {
        $this->fuser = $fuser;

        return $this;
    }

    public function getFpasswd(): ?string
    {
        return $this->fpasswd;
    }

    public function setFpasswd(?string $fpasswd): static
    {
        $this->fpasswd = $fpasswd;

        return $this;
    }

    public function getFport(): ?string
    {
        return $this->fport;
    }

    public function setFport(string $fport): static
    {
        $this->fport = $fport;

        return $this;
    }

    public function getThost(): ?string
    {
        return $this->thost;
    }

    public function setThost(string $thost): static
    {
        $this->thost = $thost;

        return $this;
    }

    public function getTuser(): ?string
    {
        return $this->tuser;
    }

    public function setTuser(string $tuser): static
    {
        $this->tuser = $tuser;

        return $this;
    }

    public function getTpasswd(): ?string
    {
        return $this->tpasswd;
    }

    public function setTpasswd(?string $tpasswd): static
    {
        $this->tpasswd = $tpasswd;

        return $this;
    }

    public function getTport(): ?string
    {
        return $this->tport;
    }

    public function setTport(string $tport): static
    {
        $this->tport = $tport;

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


}
