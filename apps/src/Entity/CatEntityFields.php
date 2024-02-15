<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CatEntityFields
 *
 * @ORM\Table(name="cat_entity_fields", indexes={@ORM\Index(name="IDX_365A3A0281257D5D", columns={"entity_id"})})
 * @ORM\Entity
 */
class CatEntityFields
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="cat_entity_fields_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fieldname", type="string", length=50, nullable=true)
     */
    private $fieldname;

    /**
     * @var string|null
     *
     * @ORM\Column(name="typename", type="string", length=50, nullable=true)
     */
    private $typename;

    /**
     * @var string|null
     *
     * @ORM\Column(name="esnull", type="string", length=3, nullable=true)
     */
    private $esnull;

    /**
     * @var string|null
     *
     * @ORM\Column(name="pk", type="string", length=3, nullable=true)
     */
    private $pk;

    /**
     * @var string|null
     *
     * @ORM\Column(name="ftable", type="string", length=45, nullable=true)
     */
    private $ftable;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fkey", type="string", length=45, nullable=true)
     */
    private $fkey;

    /**
     * @var string|null
     *
     * @ORM\Column(name="label", type="string", length=100, nullable=true)
     */
    private $label;

    /**
     * @var string|null
     *
     * @ORM\Column(name="labelhelp", type="string", length=100, nullable=true)
     */
    private $labelhelp;

    /**
     * @var int|null
     *
     * @ORM\Column(name="orderlist", type="integer", nullable=true)
     */
    private $orderlist;

    /**
     * @var \CatEntity
     *
     * @ORM\ManyToOne(targetEntity="CatEntity")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="entity_id", referencedColumnName="id")
     * })
     */
    private $entity;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFieldname(): ?string
    {
        return $this->fieldname;
    }

    public function setFieldname(?string $fieldname): static
    {
        $this->fieldname = $fieldname;

        return $this;
    }

    public function getTypename(): ?string
    {
        return $this->typename;
    }

    public function setTypename(?string $typename): static
    {
        $this->typename = $typename;

        return $this;
    }

    public function getEsnull(): ?string
    {
        return $this->esnull;
    }

    public function setEsnull(?string $esnull): static
    {
        $this->esnull = $esnull;

        return $this;
    }

    public function getPk(): ?string
    {
        return $this->pk;
    }

    public function setPk(?string $pk): static
    {
        $this->pk = $pk;

        return $this;
    }

    public function getFtable(): ?string
    {
        return $this->ftable;
    }

    public function setFtable(?string $ftable): static
    {
        $this->ftable = $ftable;

        return $this;
    }

    public function getFkey(): ?string
    {
        return $this->fkey;
    }

    public function setFkey(?string $fkey): static
    {
        $this->fkey = $fkey;

        return $this;
    }

    public function getLabel(): ?string
    {
        return $this->label;
    }

    public function setLabel(?string $label): static
    {
        $this->label = $label;

        return $this;
    }

    public function getLabelhelp(): ?string
    {
        return $this->labelhelp;
    }

    public function setLabelhelp(?string $labelhelp): static
    {
        $this->labelhelp = $labelhelp;

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

    public function getEntity(): ?CatEntity
    {
        return $this->entity;
    }

    public function setEntity(?CatEntity $entity): static
    {
        $this->entity = $entity;

        return $this;
    }


}
