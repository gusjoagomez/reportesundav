<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * SysZone
 *
 * @ORM\Table(name="sys_zone", indexes={@ORM\Index(name="zonas_idzonades1", columns={"descrip"}), @ORM\Index(name="zonas_idxnivpad", columns={"level", "parent"}), @ORM\Index(name="zonas_idxnivel", columns={"level"}), @ORM\Index(name="zonas_idxidsim", columns={"idsim"})})
 * @ORM\Entity
 */
class SysZone
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sys_zone_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="descrip", type="string", length=100, nullable=true)
     */
    private $descrip;

    /**
     * @var string|null
     *
     * @ORM\Column(name="active", type="string", length=1, nullable=true, options={"fixed"=true})
     */
    private $active;

    /**
     * @var int
     *
     * @ORM\Column(name="parent", type="integer", nullable=false)
     */
    private $parent;

    /**
     * @var string|null
     *
     * @ORM\Column(name="orderlist", type="decimal", precision=10, scale=0, nullable=true)
     */
    private $orderlist;

    /**
     * @var int
     *
     * @ORM\Column(name="level", type="integer", nullable=false)
     */
    private $level;

    /**
     * @var string|null
     *
     * @ORM\Column(name="georef", type="string", length=12, nullable=true)
     */
    private $georef;

    /**
     * @var string|null
     *
     * @ORM\Column(name="idsim", type="string", length=12, nullable=true)
     */
    private $idsim;

    /**
     * @var int|null
     *
     * @ORM\Column(name="codant", type="integer", nullable=true)
     */
    private $codant;

    /**
     * @var int|null
     *
     * @ORM\Column(name="codprov", type="integer", nullable=true)
     */
    private $codprov;

    /**
     * @var int|null
     *
     * @ORM\Column(name="coddepto", type="integer", nullable=true)
     */
    private $coddepto;

    /**
     * @var int|null
     *
     * @ORM\Column(name="codmun", type="integer", nullable=true)
     */
    private $codmun;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nuevo", type="string", length=2, nullable=true)
     */
    private $nuevo;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDescrip(): ?string
    {
        return $this->descrip;
    }

    public function setDescrip(?string $descrip): static
    {
        $this->descrip = $descrip;

        return $this;
    }

    public function getActive(): ?string
    {
        return $this->active;
    }

    public function setActive(?string $active): static
    {
        $this->active = $active;

        return $this;
    }

    public function getParent(): ?int
    {
        return $this->parent;
    }

    public function setParent(int $parent): static
    {
        $this->parent = $parent;

        return $this;
    }

    public function getOrderlist(): ?string
    {
        return $this->orderlist;
    }

    public function setOrderlist(?string $orderlist): static
    {
        $this->orderlist = $orderlist;

        return $this;
    }

    public function getLevel(): ?int
    {
        return $this->level;
    }

    public function setLevel(int $level): static
    {
        $this->level = $level;

        return $this;
    }

    public function getGeoref(): ?string
    {
        return $this->georef;
    }

    public function setGeoref(?string $georef): static
    {
        $this->georef = $georef;

        return $this;
    }

    public function getIdsim(): ?string
    {
        return $this->idsim;
    }

    public function setIdsim(?string $idsim): static
    {
        $this->idsim = $idsim;

        return $this;
    }

    public function getCodant(): ?int
    {
        return $this->codant;
    }

    public function setCodant(?int $codant): static
    {
        $this->codant = $codant;

        return $this;
    }

    public function getCodprov(): ?int
    {
        return $this->codprov;
    }

    public function setCodprov(?int $codprov): static
    {
        $this->codprov = $codprov;

        return $this;
    }

    public function getCoddepto(): ?int
    {
        return $this->coddepto;
    }

    public function setCoddepto(?int $coddepto): static
    {
        $this->coddepto = $coddepto;

        return $this;
    }

    public function getCodmun(): ?int
    {
        return $this->codmun;
    }

    public function setCodmun(?int $codmun): static
    {
        $this->codmun = $codmun;

        return $this;
    }

    public function getNuevo(): ?string
    {
        return $this->nuevo;
    }

    public function setNuevo(?string $nuevo): static
    {
        $this->nuevo = $nuevo;

        return $this;
    }


}
