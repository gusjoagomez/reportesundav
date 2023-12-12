<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * XchLanguage
 *
 * @ORM\Table(name="xch_language")
 * @ORM\Entity
 */
class XchLanguage
{
    /**
     * @var string
     *
     * @ORM\Column(name="locale", type="string", length=5, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="xch_language_locale_seq", allocationSize=1, initialValue=1)
     */
    private $locale;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=45, nullable=true)
     */
    private $name;

    public function getLocale(): ?string
    {
        return $this->locale;
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


}
