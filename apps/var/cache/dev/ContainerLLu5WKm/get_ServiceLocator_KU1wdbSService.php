<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_KU1wdbSService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.KU1wdbS' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.KU1wdbS'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'entityManager' => ['services', 'doctrine.orm.default_entity_manager', 'getDoctrine_Orm_DefaultEntityManagerService', false],
            'syncbase' => ['privates', '.errored..service_locator.KU1wdbS.App\\Entity\\SyncBases', NULL, 'Cannot autowire service ".service_locator.KU1wdbS": it needs an instance of "App\\Entity\\SyncBases" but this type has been excluded in "config/services.yaml".'],
        ], [
            'entityManager' => '?',
            'syncbase' => 'App\\Entity\\SyncBases',
        ]);
    }
}
