<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getDoctrine_Orm_Listeners_LockStoreSchemaListenerService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private 'doctrine.orm.listeners.lock_store_schema_listener' shared service.
     *
     * @return \Symfony\Bridge\Doctrine\SchemaListener\LockStoreSchemaListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/doctrine-bridge/SchemaListener/AbstractSchemaListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/doctrine-bridge/SchemaListener/LockStoreSchemaListener.php';

        return $container->privates['doctrine.orm.listeners.lock_store_schema_listener'] = new \Symfony\Bridge\Doctrine\SchemaListener\LockStoreSchemaListener(new RewindableGenerator(fn () => new \EmptyIterator(), 0));
    }
}
