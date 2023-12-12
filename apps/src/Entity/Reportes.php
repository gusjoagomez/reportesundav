<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * Reportes
 *
 * @ORM\Table(name="reportes")
 * @ORM\Entity
 */
class Reportes
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="reportes_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=100, nullable=true)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="string", length=512, nullable=true)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="params", type="text", nullable=true)
     */
    private $params;

    /**
     * @var string|null
     *
     * @ORM\Column(name="txtquery", type="text", nullable=true)
     */
    private $txtquery;

    /**
     * @var int
     *
     * @ORM\Column(name="orderlist", type="integer", nullable=false, options={"default"="9999"})
     */
    private $orderlist = 9999;

    /**
     * @var int
     *
     * @ORM\Column(name="active", type="smallint", nullable=false, options={"default"="1"})
     */
    private $active = '1';

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): static
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

    public function getParams(): ?string
    {
        return $this->params;
    }

    public function setParams(?string $params): static
    {
        $this->params = $params;

        return $this;
    }

    public function getTxtquery(): ?string
    {
        return $this->txtquery;
    }

    public function setTxtquery(?string $txtquery): static
    {
        $this->txtquery = $txtquery;

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

    public function getActive(): ?int
    {
        return $this->active;
    }

    public function setActive(int $active): static
    {
        $this->active = $active;

        return $this;
    }


}
