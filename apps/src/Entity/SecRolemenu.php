<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SecRolemenu
 *
 * @ORM\Table(name="sec_rolemenu", indexes={@ORM\Index(name="sec_rolemenu_IDX_7F97E6B7CCD7E912", columns={"menu_id"})})
 * @ORM\Entity
 */
class SecRolemenu
{
    /**
     * @var int
     *
     * @ORM\Column(name="role_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $roleId;

    /**
     * @var int
     *
     * @ORM\Column(name="menu_id", type="integer", nullable=false, options={"comment"="Id menu"})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $menuId;

    public function getRoleId(): ?int
    {
        return $this->roleId;
    }

    public function getMenuId(): ?int
    {
        return $this->menuId;
    }


}
