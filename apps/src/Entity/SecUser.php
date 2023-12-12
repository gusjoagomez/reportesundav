<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface; 


/**
 * SecUser
 *
 * @ORM\Table(name="sec_user", uniqueConstraints={@ORM\UniqueConstraint(name="username_UNIQUE", columns={"username"}), @ORM\UniqueConstraint(name="email_UNIQUE", columns={"email"})}, indexes={@ORM\Index(name="fk_user_user1", columns={"createdby"}), @ORM\Index(name="fk_sec_user_sec_company1", columns={"company_id"}), @ORM\Index(name="fk_sec_user_sec_role1", columns={"role_id"}), @ORM\Index(name="fk_user_language1", columns={"language_id"}), @ORM\Index(name="fk_user_user2", columns={"updatedby"})})
 * @ORM\Entity(repositoryClass="App\Repository\SecUserRepository")
 */
class SecUser  implements UserInterface, PasswordAuthenticatedUserInterface
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \SecCompany
     *
     * @ORM\ManyToOne(targetEntity="SecCompany")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="company_id", referencedColumnName="id")
     * })
     */
    private $company;

    /**
     * @var \SecRole
     *
     * @ORM\ManyToOne(targetEntity="SecRole")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="role_id", referencedColumnName="id")
     * })
     */
    private $role;

    /**
     * @var string|null
     *
     * @ORM\Column(name="codeinternal", type="string", length=15, nullable=true, options={"comment"="Codigo del usuario en la organizacion"})
     */
    private $codeinternal;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=50, nullable=false, options={"comment"="Nombre del usuario"})
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="lastname", type="string", length=50, nullable=false, options={"comment"="Apellido del usuario"})
     */
    private $lastname;

    /**
     * @var string
     *
     * @ORM\Column(name="username", type="string", length=100, nullable=false, options={"comment"="Nombre del usuario. Login"})
     */
    private $username;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=100, nullable=false, options={"comment"="Direccion de correos del usuario"})
     */
    private $email;

    /**
     * @var string
     *
     * @ORM\Column(name="password", type="string", length=130, nullable=false, options={"comment"="Password actual del usuario"})
     */
    private $password;

    
    /**
     * @var \SysType
     *
     * @ORM\ManyToOne(targetEntity="SysType")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="language_id", referencedColumnName="id")
     * })
     */
    private $language;
    


    /**
     * @var string|null
     *
     * @ORM\Column(name="timezone", type="string", length=5, nullable=true, options={"default"="-3","comment"="Zona horaria que utiliza el usuario"})
     */
    private $timezone = '-3';

    /**
     * @var string|null
     *
     * @ORM\Column(name="passwordhistory", type="string", length=1024, nullable=true, options={"comment"="Historico de passwords. Guarda las ultimas 3 veces"})
     */
    private $passwordhistory;

    /**
     * @var int|null
     *
     * @ORM\Column(name="passwordretryfail", type="integer", nullable=true, options={"comment"="Cantidad de veces que se ingreso password fallida"})
     */
    private $passwordretryfail;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="lastlogin", type="datetimetz", nullable=true, options={"comment"="Ultima fecha de coneccion"})
     */
    private $lastlogin;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="currentlogin", type="datetimetz", nullable=true, options={"comment"="Cuando fue la actual hora que se conecto"})
     */
    private $currentlogin;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="lastchangepassword", type="datetimetz", nullable=true, options={"comment"="ultima vez que modifico la password"})
     */
    private $lastchangepassword;

    /**
     * @var int|null
     *
     * @ORM\Column(name="active", type="smallint", nullable=true, options={"default"="1","comment"="si esta activo"})
     */
    private $active = '1';

    /**
     * @var int|null
     *
     * @ORM\Column(name="principal", type="smallint", nullable=true, options={"comment"="Si es el titular de la empresa"})
     */
    private $principal;

    /**
     * @var string|null
     *
     * @ORM\Column(name="salt", type="string", length=180, nullable=true)
     */
    private $salt;

    /**
     * @var int|null
     *
     * @ORM\Column(name="created_by", type="integer", nullable=true)
     */
    private $createdBy;

    /**
     * @var int|null
     *
     * @ORM\Column(name="updated_by", type="integer", nullable=true)
     */
    private $updatedBy;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created_at", type="datetimetz", nullable=false)
     */
    private $createdAt;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="updated_at", type="datetimetz", nullable=false)
     */
    private $updatedAt;

    /**
     * @var string|null
     *
     * @ORM\Column(name="code", type="guid", nullable=true)
     */
    private $code;

    /**
     * @var string|null
     *
     * @ORM\Column(name="cuitcuil", type="string", nullable=true)
     */
    private $cuitcuil;

    /**
     * @var string|null
     *
     * @ORM\Column(name="doc_number", type="string", nullable=true)
     */
    private $docnumber;

    /**
     * @var int|null
     *
     * @ORM\Column(name="isdoctor", type="smallint", nullable=true)
     */
    private $isdoctor = '0';

    /**
     * @var string|null
     *
     * @ORM\Column(name="reserved5", type="string", length=100, nullable=true)
     */
    private $reserved5;

    /**
     * @var string|null
     *
     * @ORM\Column(name="reserved6", type="string", length=100, nullable=true)
     */
    private $reserved6;

    /**
     * @var string|null
     *
     * @ORM\Column(name="reserved7", type="string", length=100, nullable=true)
     */
    private $reserved7;

    /**
     * @var string|null
     *
     * @ORM\Column(name="reserved8", type="string", length=100, nullable=true)
     */
    private $reserved8;

    /**
     * @var string|null
     *
     * @ORM\Column(name="reserved9", type="string", length=100, nullable=true)
     */
    private $reserved9;

    /**
     * @var int|null
     *
     * @ORM\Column(name="respintervencion", type="smallint", nullable=true, options={"comment"="Es responsable en la intervencion"})
     */
    private $respintervencion;

    
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->createdAt = new \DateTime(); 
        $this->updatedAt = new \DateTime();
    }     

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCompany(): ?SecCompany
    {
        return $this->company;
    }

    public function setCompany(?SecCompany $company): static
    {
        $this->company = $company;

        return $this;
    }

    public function getRole(): ?SecRole
    {
        return $this->role;
    }

    public function setRole(?SecRole $role): static
    {
        $this->role = $role;

        return $this;
    }

    public function getCodeinternal(): ?string
    {
        return $this->codeinternal;
    }

    public function setCodeinternal(?string $codeinternal): static
    {
        $this->codeinternal = $codeinternal;

        return $this;
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

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): static
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getUsername(): ?string
    {
        return $this->username;
    }

    public function setUsername(string $username): static
    {
        $this->username = $username;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): static
    {
        $this->email = $email;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(string $password): static
    {
        $this->password = $password;

        return $this;
    }
    

    

    public function getLanguage(): ?SysType
    {
        return $this->language;
    }

    public function setLanguage(SysType $language): static
    {
        $this->language = $language;

        return $this;
    }

    public function getTimezone(): ?string
    {
        return $this->timezone;
    }

    public function setTimezone(?string $timezone): static
    {
        $this->timezone = $timezone;

        return $this;
    }

    public function getPasswordhistory(): ?string
    {
        return $this->passwordhistory;
    }

    public function setPasswordhistory(?string $passwordhistory): static
    {
        $this->passwordhistory = $passwordhistory;

        return $this;
    }

    public function getPasswordretryfail(): ?int
    {
        return $this->passwordretryfail;
    }

    public function setPasswordretryfail(?int $passwordretryfail): static
    {
        $this->passwordretryfail = $passwordretryfail;

        return $this;
    }

    public function getLastlogin(): ?\DateTimeInterface
    {
        return $this->lastlogin;
    }

    public function setLastlogin(?\DateTimeInterface $lastlogin): static
    {
        $this->lastlogin = $lastlogin;

        return $this;
    }

    public function getCurrentlogin(): ?\DateTimeInterface
    {
        return $this->currentlogin;
    }

    public function setCurrentlogin(?\DateTimeInterface $currentlogin): static
    {
        $this->currentlogin = $currentlogin;

        return $this;
    }

    public function getLastchangepassword(): ?\DateTimeInterface
    {
        return $this->lastchangepassword;
    }

    public function setLastchangepassword(?\DateTimeInterface $lastchangepassword): static
    {
        $this->lastchangepassword = $lastchangepassword;

        return $this;
    }

    public function getActive(): ?int
    {
        return $this->active;
    }

    public function setActive(?int $active): static
    {
        $this->active = $active;

        return $this;
    }

    public function getPrincipal(): ?int
    {
        return $this->principal;
    }

    public function setPrincipal(?int $principal): static
    {
        $this->principal = $principal;

        return $this;
    }

    public function getSalt(): ?string
    {
        return $this->salt;
    }

    public function setSalt(?string $salt): static
    {
        $this->salt = $salt;

        return $this;
    }

    public function getCreatedBy(): ?int
    {
        return $this->createdBy;
    }

    public function setCreatedBy(?int $createdBy): static
    {
        $this->createdBy = $createdBy;

        return $this;
    }

    public function getUpdatedBy(): ?int
    {
        return $this->updatedBy;
    }

    public function setUpdatedBy(?int $updatedBy): static
    {
        $this->updatedBy = $updatedBy;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(\DateTimeInterface $updatedAt): static
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(?string $code): static
    {
        $this->code = $code;

        return $this;
    }

    public function getCuitcuil(): ?string
    {
        return $this->cuitcuil;
    }

    public function setCuitcuil(?string $cuitcuil): static
    {
        $this->cuitcuil = $cuitcuil;

        return $this;
    }

    public function getDocNumber(): ?string
    {
        return $this->docnumber;
    }

    public function setDocNumber(?string $docnumber): static
    {
        $this->docnumbero = $docnumber;

        return $this;
    }

    public function getIsdoctor(): ?int
    {
        return $this->isdoctor;
    }

    public function setIsdoctor(?int $isdoctor): static
    {
        $this->isdoctor = $isdoctor;

        return $this;
    }

    public function getReserved5(): ?string
    {
        return $this->reserved5;
    }

    public function setReserved5(?string $reserved5): static
    {
        $this->reserved5 = $reserved5;

        return $this;
    }

    public function getReserved6(): ?string
    {
        return $this->reserved6;
    }

    public function setReserved6(?string $reserved6): static
    {
        $this->reserved6 = $reserved6;

        return $this;
    }

    public function getReserved7(): ?string
    {
        return $this->reserved7;
    }

    public function setReserved7(?string $reserved7): static
    {
        $this->reserved7 = $reserved7;

        return $this;
    }

    public function getReserved8(): ?string
    {
        return $this->reserved8;
    }

    public function setReserved8(?string $reserved8): static
    {
        $this->reserved8 = $reserved8;

        return $this;
    }

    public function getReserved9(): ?string
    {
        return $this->reserved9;
    }

    public function setReserved9(?string $reserved9): static
    {
        $this->reserved9 = $reserved9;

        return $this;
    }

    public function getRespintervencion(): ?int
    {
        return $this->respintervencion;
    }

    public function setRespintervencion(?int $respintervencion): static
    {
        $this->respintervencion = $respintervencion;

        return $this;
    }

    
    
    //-----------------------------------
    // Funciones de seguridad
    //-----------------------------------
    
    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUserIdentifier(): string
    {
        return (string) $this->username;
    }

    /**
     * @see UserInterface
     */
    public function getRoles(): array
    {
        //$roles[] = $this->role;
        // guarantee every user at least has ROLE_USER
        $roles[] = 'ROLE_USER';

        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

//    /**
//     * @see PasswordAuthenticatedUserInterface
//     */
//    public function getPassword(): string
//    {
//        return $this->password;
//    }
//
//    /**
//     * Returning a salt is only needed, if you are not using a modern
//     * hashing algorithm (e.g. bcrypt or sodium) in your security.yaml.
//     *
//     * @see UserInterface
//     */
//    public function getSalt(): ?string
//    {
//        return null;
//    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }

}
