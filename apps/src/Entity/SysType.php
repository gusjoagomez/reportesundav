<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * SysType
 *
 * @ORM\Table(name="sys_type", indexes={@ORM\Index(name="sys_type_fk_type111_idx", columns={"parent_id"}), @ORM\Index(name="sys_type_fk_typetype1_idx", columns={"type"}), @ORM\Index(name="sys_type_idxtags1", columns={"name"})})
 * @ORM\Entity
 */
class SysType
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false, options={"comment"="identificador"})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sys_type_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="parent_id", type="integer", nullable=true, options={"comment"="identificador"})
     */
    private $parentId;

    /**
     * @var string|null
     *
     * @ORM\Column(name="type", type="string", length=6, nullable=true, options={"comment"="Tipo del objeto"})
     */
    private $type;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=100, nullable=false, options={"comment"="Nombre del tipo idioma1"})
     */
    private $name;

    /**
     * @var int
     *
     * @ORM\Column(name="orderlist", type="integer", nullable=false, options={"default"="1","comment"="Orden en la lista"})
     */
    private $orderlist = 1;

    /**
     * @var string|null
     *
     * @ORM\Column(name="property", type="string", length=255, nullable=true, options={"comment"="Propiedades extras del registro"})
     */
    private $property;

    /**
     * @var int|null
     *
     * @ORM\Column(name="active", type="smallint", nullable=true, options={"comment"="registro activo si=1 no=0"})
     */
    private $active;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nametree", type="string", length=300, nullable=true)
     */
    private $nametree;

    /**
     * @var string|null
     *
     * @ORM\Column(name="codetree", type="string", length=100, nullable=true)
     */
    private $codetree;

    /**
     * @var int|null
     *
     * @ORM\Column(name="leveltree", type="integer", nullable=true)
     */
    private $leveltree;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getParentId(): ?int
    {
        return $this->parentId;
    }

    public function setParentId(?int $parentId): static
    {
        $this->parentId = $parentId;

        return $this;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(?string $type): static
    {
        $this->type = $type;

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

    public function getOrderlist(): ?int
    {
        return $this->orderlist;
    }

    public function setOrderlist(int $orderlist): static
    {
        $this->orderlist = $orderlist;

        return $this;
    }

    public function getProperty(): ?string
    {
        return $this->property;
    }

    public function setProperty(?string $property): static
    {
        $this->property = $property;

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

    public function getNametree(): ?string
    {
        return $this->nametree;
    }

    public function setNametree(?string $nametree): static
    {
        $this->nametree = $nametree;

        return $this;
    }

    public function getCodetree(): ?string
    {
        return $this->codetree;
    }

    public function setCodetree(?string $codetree): static
    {
        $this->codetree = $codetree;

        return $this;
    }

    public function getLeveltree(): ?int
    {
        return $this->leveltree;
    }

    public function setLeveltree(?int $leveltree): static
    {
        $this->leveltree = $leveltree;

        return $this;
    }


}
