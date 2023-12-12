<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * SecMenu
 *
 * @ORM\Table(name="sec_menu", indexes={@ORM\Index(name="sec_menu_indexactionmenu", columns={"action"}), @ORM\Index(name="sec_menu_fk_sec_menu_sec_menu1", columns={"parent_id"})})
 * @ORM\Entity
 */
class SecMenu
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false, options={"comment"="Id menu"})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sec_menu_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="parent_id", type="integer", nullable=true, options={"comment"="Id menu"})
     */
    private $parentId;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=60, nullable=false, options={"comment"="Nombre para del item"})
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nametree", type="string", length=60, nullable=true, options={"comment"="Nombre para mostrar en el programa de seleccion de item"})
     */
    private $nametree;

    /**
     * @var string|null
     *
     * @ORM\Column(name="icon", type="string", length=100, nullable=true)
     */
    private $icon;

    /**
     * @var string|null
     *
     * @ORM\Column(name="link", type="string", length=50, nullable=true, options={"comment"="Link a donde ir cuando se da click en el menu"})
     */
    private $link;

    /**
     * @var int|null
     *
     * @ORM\Column(name="active", type="smallint", nullable=true, options={"default"="1","comment"="1=activo, 0=inactivo"})
     */
    private $active = '1';

    /**
     * @var int|null
     *
     * @ORM\Column(name="orderlist1", type="integer", nullable=true, options={"comment"="Orden en un menu"})
     */
    private $orderlist1;

    /**
     * @var int|null
     *
     * @ORM\Column(name="orderlist", type="integer", nullable=true, options={"comment"="orden en la lista de seleccion"})
     */
    private $orderlist;

    /**
     * @var int|null
     *
     * @ORM\Column(name="type_id", type="integer", nullable=true, options={"comment"="tipo de item: 1=Nivel principal, 2=subitem, 3=privilegio de pantallas"})
     */
    private $typeId;

    /**
     * @var int|null
     *
     * @ORM\Column(name="availablesel", type="smallint", nullable=true, options={"default"="1","comment"="1=disponible para la seleccion, 0=no disponible para seleccionar"})
     */
    private $availablesel = '1';

    /**
     * @var string|null
     *
     * @ORM\Column(name="module", type="string", length=80, nullable=true, options={"comment"="modulo de programas a los que pertenece"})
     */
    private $module;

    /**
     * @var string|null
     *
     * @ORM\Column(name="action", type="string", length=80, nullable=true, options={"comment"="Tipo de accion. C=create, R=retrieve, U=update, D=delete "})
     */
    private $action;

    /**
     * @var int
     *
     * @ORM\Column(name="divider", type="smallint", nullable=false)
     */
    private $divider;

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

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

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

    public function getIcon(): ?string
    {
        return $this->icon;
    }

    public function setIcon(?string $icon): static
    {
        $this->icon = $icon;

        return $this;
    }

    public function getLink(): ?string
    {
        return $this->link;
    }

    public function setLink(?string $link): static
    {
        $this->link = $link;

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

    public function getOrderlist1(): ?int
    {
        return $this->orderlist1;
    }

    public function setOrderlist1(?int $orderlist1): static
    {
        $this->orderlist1 = $orderlist1;

        return $this;
    }

    public function getOrderlist(): ?int
    {
        return $this->orderlist;
    }

    public function setOrderlist(?int $orderlist): static
    {
        $this->orderlist = $orderlist;

        return $this;
    }

    public function getTypeId(): ?int
    {
        return $this->typeId;
    }

    public function setTypeId(?int $typeId): static
    {
        $this->typeId = $typeId;

        return $this;
    }

    public function getAvailablesel(): ?int
    {
        return $this->availablesel;
    }

    public function setAvailablesel(?int $availablesel): static
    {
        $this->availablesel = $availablesel;

        return $this;
    }

    public function getModule(): ?string
    {
        return $this->module;
    }

    public function setModule(?string $module): static
    {
        $this->module = $module;

        return $this;
    }

    public function getAction(): ?string
    {
        return $this->action;
    }

    public function setAction(?string $action): static
    {
        $this->action = $action;

        return $this;
    }

    public function getDivider(): ?int
    {
        return $this->divider;
    }

    public function setDivider(int $divider): static
    {
        $this->divider = $divider;

        return $this;
    }


}
