<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * XchTmptable
 *
 * @ORM\Table(name="xch_tmptable", uniqueConstraints={@ORM\UniqueConstraint(name="xch_tmptable_UNICO", columns={"tablename", "fieldname"})})
 * @ORM\Entity
 */
class XchTmptable
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="xch_tmptable_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="tablename", type="string", length=50, nullable=true)
     */
    private $tablename;

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
     * @ORM\Column(name="isnull", type="string", length=3, nullable=true)
     */
    private $isnull;

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
     * @var int|null
     *
     * @ORM\Column(name="inlist", type="smallint", nullable=true, options={"default"="1"})
     */
    private $inlist = '1';

    /**
     * @var int|null
     *
     * @ORM\Column(name="incrud", type="smallint", nullable=true, options={"default"="1"})
     */
    private $incrud = '1';

    public function getId(): ?int
    {
        return $this->id;
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

    public function getIsnull(): ?string
    {
        return $this->isnull;
    }

    public function setIsnull(?string $isnull): static
    {
        $this->isnull = $isnull;

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

    public function getInlist(): ?int
    {
        return $this->inlist;
    }

    public function setInlist(?int $inlist): static
    {
        $this->inlist = $inlist;

        return $this;
    }

    public function getIncrud(): ?int
    {
        return $this->incrud;
    }

    public function setIncrud(?int $incrud): static
    {
        $this->incrud = $incrud;

        return $this;
    }


}
