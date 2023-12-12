<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SyncBasesTables
 *
 * @ORM\Table(name="sync_bases_tables", indexes={@ORM\Index(name="IDX_11A9211D634A72BD", columns={"id_syncbase"})})
 * @ORM\Entity
 */
class SyncBasesTables
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sync_bases_tables_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="fbase", type="string", nullable=false)
     */
    private $fbase;

    /**
     * @var string
     *
     * @ORM\Column(name="fschema", type="string", nullable=false)
     */
    private $fschema;

    /**
     * @var string
     *
     * @ORM\Column(name="ftable", type="string", nullable=false)
     */
    private $ftable;

    /**
     * @var string
     *
     * @ORM\Column(name="tbase", type="string", nullable=false)
     */
    private $tbase;

    /**
     * @var string
     *
     * @ORM\Column(name="tschema", type="string", nullable=false)
     */
    private $tschema;

    /**
     * @var string
     *
     * @ORM\Column(name="ttable", type="string", nullable=false)
     */
    private $ttable;

    /**
     * @var bool
     *
     * @ORM\Column(name="active", type="boolean", nullable=false)
     */
    private $active;

    /**
     * @var \SyncBases
     *
     * @ORM\ManyToOne(targetEntity="SyncBases")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_syncbase", referencedColumnName="id")
     * })
     */
    private $idSyncbase;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFbase(): ?string
    {
        return $this->fbase;
    }

    public function setFbase(string $fbase): static
    {
        $this->fbase = $fbase;

        return $this;
    }

    public function getFschema(): ?string
    {
        return $this->fschema;
    }

    public function setFschema(string $fschema): static
    {
        $this->fschema = $fschema;

        return $this;
    }

    public function getFtable(): ?string
    {
        return $this->ftable;
    }

    public function setFtable(string $ftable): static
    {
        $this->ftable = $ftable;

        return $this;
    }

    public function getTbase(): ?string
    {
        return $this->tbase;
    }

    public function setTbase(string $tbase): static
    {
        $this->tbase = $tbase;

        return $this;
    }

    public function getTschema(): ?string
    {
        return $this->tschema;
    }

    public function setTschema(string $tschema): static
    {
        $this->tschema = $tschema;

        return $this;
    }

    public function getTtable(): ?string
    {
        return $this->ttable;
    }

    public function setTtable(string $ttable): static
    {
        $this->ttable = $ttable;

        return $this;
    }

    public function isActive(): ?bool
    {
        return $this->active;
    }

    public function setActive(bool $active): static
    {
        $this->active = $active;

        return $this;
    }

    public function getIdSyncbase(): ?SyncBases
    {
        return $this->idSyncbase;
    }

    public function setIdSyncbase(?SyncBases $idSyncbase): static
    {
        $this->idSyncbase = $idSyncbase;

        return $this;
    }


}
