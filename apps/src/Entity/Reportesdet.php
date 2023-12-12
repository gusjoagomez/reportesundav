<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * Reportesdet
 *
 * @ORM\Table(name="reportesdet")
 * @ORM\Entity
 */
class Reportesdet
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="reportesdet_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="createdat", type="datetime", nullable=false)
     */
    private $createdat;

    /**
     * @var int
     *
     * @ORM\Column(name="createdby", type="integer", nullable=false)
     */
    private $createdby;

    /**
     * @var int
     *
     * @ORM\Column(name="reporte_id", type="integer", nullable=false)
     */
    private $reporteId;

    /**
     * @var string|null
     *
     * @ORM\Column(name="campos", type="string", length=300, nullable=true)
     */
    private $campos;

    /**
     * @var string|null
     *
     * @ORM\Column(name="filename", type="string", length=100, nullable=true)
     */
    private $filename;

    /**
     * @var string|null
     *
     * @ORM\Column(name="params", type="string", length=200, nullable=true)
     */
    private $params;

    /**
     * @var string|null
     *
     * @ORM\Column(name="sqltxt", type="text", nullable=true)
     */
    private $sqltxt;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCreatedat(): ?\DateTimeInterface
    {
        return $this->createdat;
    }

    public function setCreatedat(\DateTimeInterface $createdat): static
    {
        $this->createdat = $createdat;

        return $this;
    }

    public function getCreatedby(): ?int
    {
        return $this->createdby;
    }

    public function setCreatedby(int $createdby): static
    {
        $this->createdby = $createdby;

        return $this;
    }

    public function getReporteId(): ?int
    {
        return $this->reporteId;
    }

    public function setReporteId(int $reporteId): static
    {
        $this->reporteId = $reporteId;

        return $this;
    }

    public function getCampos(): ?string
    {
        return $this->campos;
    }

    public function setCampos(?string $campos): static
    {
        $this->campos = $campos;

        return $this;
    }

    public function getFilename(): ?string
    {
        return $this->filename;
    }

    public function setFilename(?string $filename): static
    {
        $this->filename = $filename;

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

    public function getSqltxt(): ?string
    {
        return $this->sqltxt;
    }

    public function setSqltxt(?string $sqltxt): static
    {
        $this->sqltxt = $sqltxt;

        return $this;
    }


}
