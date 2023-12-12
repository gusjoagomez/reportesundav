<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CatTable
 *
 * @ORM\Table(name="cat_table", indexes={@ORM\Index(name="IDX_4A523FAB6967DF41", columns={"base_id"})})
 * @ORM\Entity
 */
class CatTable
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="cat_table_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="schemaname", type="string", length=50, nullable=true)
     */
    private $schemaname;

    /**
     * @var string|null
     *
     * @ORM\Column(name="tablename", type="string", length=50, nullable=true)
     */
    private $tablename;

    /**
     * @var \CatBases
     *
     * @ORM\ManyToOne(targetEntity="CatBases")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="base_id", referencedColumnName="id")
     * })
     */
    private $base;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getSchemaname(): ?string
    {
        return $this->schemaname;
    }

    public function setSchemaname(?string $schemaname): static
    {
        $this->schemaname = $schemaname;

        return $this;
    }

    public function getTablename(): ?string
    {
        return $this->tablename;
    }

    public function setTablename(?string $tablename): static
    {
        $this->tablename = $tablename;

        return $this;
    }

    public function getBase(): ?CatBases
    {
        return $this->base;
    }

    public function setBase(?CatBases $base): static
    {
        $this->base = $base;

        return $this;
    }


}
