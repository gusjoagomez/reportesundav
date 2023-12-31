<?php

namespace Proxies\__CG__\App\Entity;

/**
 * DO NOT EDIT THIS FILE - IT WAS CREATED BY DOCTRINE'S PROXY GENERATOR
 */
class SyncBases extends \App\Entity\SyncBases implements \Doctrine\ORM\Proxy\InternalProxy
{
    use \Symfony\Component\VarExporter\LazyGhostTrait {
        initializeLazyObject as __load;
        setLazyObjectAsInitialized as public __setInitialized;
        isLazyObjectInitialized as private;
        createLazyGhost as private;
        resetLazyObject as private;
    }

    private const LAZY_OBJECT_PROPERTY_SCOPES = [
        "\0".parent::class."\0".'active' => [parent::class, 'active', null],
        "\0".parent::class."\0".'description' => [parent::class, 'description', null],
        "\0".parent::class."\0".'fhost' => [parent::class, 'fhost', null],
        "\0".parent::class."\0".'fpasswd' => [parent::class, 'fpasswd', null],
        "\0".parent::class."\0".'fport' => [parent::class, 'fport', null],
        "\0".parent::class."\0".'fuser' => [parent::class, 'fuser', null],
        "\0".parent::class."\0".'id' => [parent::class, 'id', null],
        "\0".parent::class."\0".'thost' => [parent::class, 'thost', null],
        "\0".parent::class."\0".'tpasswd' => [parent::class, 'tpasswd', null],
        "\0".parent::class."\0".'tport' => [parent::class, 'tport', null],
        "\0".parent::class."\0".'tuser' => [parent::class, 'tuser', null],
        'active' => [parent::class, 'active', null],
        'description' => [parent::class, 'description', null],
        'fhost' => [parent::class, 'fhost', null],
        'fpasswd' => [parent::class, 'fpasswd', null],
        'fport' => [parent::class, 'fport', null],
        'fuser' => [parent::class, 'fuser', null],
        'id' => [parent::class, 'id', null],
        'thost' => [parent::class, 'thost', null],
        'tpasswd' => [parent::class, 'tpasswd', null],
        'tport' => [parent::class, 'tport', null],
        'tuser' => [parent::class, 'tuser', null],
    ];

    public function __construct(?\Closure $initializer = null, ?\Closure $cloner = null)
    {
        if ($cloner !== null) {
            return;
        }

        self::createLazyGhost($initializer, [
            "\0".parent::class."\0".'id' => true,
        ], $this);
    }

    public function __isInitialized(): bool
    {
        return isset($this->lazyObjectState) && $this->isLazyObjectInitialized();
    }

    public function __serialize(): array
    {
        $properties = (array) $this;
        unset($properties["\0" . self::class . "\0lazyObjectState"], $properties['__isCloning']);

        return $properties;
    }
}
