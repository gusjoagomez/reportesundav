<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * CatEntity
 *
 * @ORM\Table(name="cat_entity")
 * @ORM\Entity
 */
class CatEntity
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="cat_entity_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=100, nullable=false)
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
     * @ORM\Column(name="viewcode", type="text", nullable=true)
     */
    private $viewcode;

    /**
     * @var int
     *
     * @ORM\Column(name="active", type="smallint", nullable=false, options={"default"="1"})
     */
    private $active = '1';

    /**
     * @var string|null
     *
     * @ORM\Column(name="objectdbrel", type="string", length=100, nullable=true)
     */
    private $objectdbrel;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getViewcode(): ?string
    {
        return $this->viewcode;
    }

    public function setViewcode(?string $viewcode): static
    {
        $this->viewcode = $viewcode;

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

    public function getObjectdbrel(): ?string
    {
        return $this->objectdbrel;
    }

    public function setObjectdbrel(?string $objectdbrel): static
    {
        $this->objectdbrel = $objectdbrel;

        return $this;
    }


}
