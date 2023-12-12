<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * SysTypetype
 *
 * @ORM\Table(name="sys_typetype")
 * @ORM\Entity
 */
class SysTypetype
{
    /**
     * @var string
     *
     * @ORM\Column(name="object", type="string", length=6, nullable=false, options={"comment"="Tipo del objeto"})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="sys_typetype_object_seq", allocationSize=1, initialValue=1)
     */
    private $object;

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
     * @ORM\Column(name="property", type="string", length=255, nullable=true)
     */
    private $property;

    /**
     * @var int|null
     *
     * @ORM\Column(name="active", type="smallint", nullable=true, options={"comment"="Propiedades del tipo. Si depende de otro o tiene alguna funcionalidad especial"})
     */
    private $active;

    /**
     * @var int|null
     *
     * @ORM\Column(name="common", type="smallint", nullable=true)
     */
    private $common;

    public function getObject(): ?string
    {
        return $this->object;
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

    public function getCommon(): ?int
    {
        return $this->common;
    }

    public function setCommon(?int $common): static
    {
        $this->common = $common;

        return $this;
    }


}
