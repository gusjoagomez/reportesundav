<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CatRels
 *
 * @ORM\Table(name="cat_rels", indexes={@ORM\Index(name="IDX_B3194D5CECFF285C", columns={"table_id"}), @ORM\Index(name="IDX_B3194D5CA6E8608A", columns={"table2_id"})})
 * @ORM\Entity
 */
class CatRels
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="cat_rels_id_seq", allocationSize=1, initialValue=1)
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
     * @var \CatTable
     *
     * @ORM\ManyToOne(targetEntity="CatTable")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="table_id", referencedColumnName="id")
     * })
     */
    private $table;

    /**
     * @var \CatTable
     *
     * @ORM\ManyToOne(targetEntity="CatTable")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="table2_id", referencedColumnName="id")
     * })
     */
    private $table2;

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

    public function getTable(): ?CatTable
    {
        return $this->table;
    }

    public function setTable(?CatTable $table): static
    {
        $this->table = $table;

        return $this;
    }

    public function getTable2(): ?CatTable
    {
        return $this->table2;
    }

    public function setTable2(?CatTable $table2): static
    {
        $this->table2 = $table2;

        return $this;
    }


}
