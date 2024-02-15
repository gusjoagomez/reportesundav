<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CatEntityRels
 *
 * @ORM\Table(name="cat_entity_rels", indexes={@ORM\Index(name="IDX_2C81236781257D5D", columns={"entity_id"}), @ORM\Index(name="IDX_2C812367D1828A49", columns={"entity2_id"})})
 * @ORM\Entity
 */
class CatEntityRels
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="cat_entity_rels_id_seq", allocationSize=1, initialValue=1)
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
     * @ORM\Column(name="reltype", type="string", length=10, nullable=true)
     */
    private $reltype;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fieldsrel", type="string", length=1024, nullable=true)
     */
    private $fieldsrel;

    /**
     * @var string|null
     *
     * @ORM\Column(name="relsql", type="string", length=1024, nullable=true)
     */
    private $relsql;

    /**
     * @var \CatEntity
     *
     * @ORM\ManyToOne(targetEntity="CatEntity")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="entity_id", referencedColumnName="id")
     * })
     */
    private $entity;

    /**
     * @var \CatEntity
     *
     * @ORM\ManyToOne(targetEntity="CatEntity")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="entity2_id", referencedColumnName="id")
     * })
     */
    private $entity2;

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

    public function getReltype(): ?string
    {
        return $this->reltype;
    }

    public function setReltype(?string $reltype): static
    {
        $this->reltype = $reltype;

        return $this;
    }

    public function getFieldsrel(): ?string
    {
        return $this->fieldsrel;
    }

    public function setFieldsrel(?string $fieldsrel): static
    {
        $this->fieldsrel = $fieldsrel;

        return $this;
    }

    public function getRelsql(): ?string
    {
        return $this->relsql;
    }

    public function setRelsql(?string $relsql): static
    {
        $this->relsql = $relsql;

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

    public function getEntity2(): ?CatEntity
    {
        return $this->entity2;
    }

    public function setEntity2(?CatEntity $entity2): static
    {
        $this->entity2 = $entity2;

        return $this;
    }


}
