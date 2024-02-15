<?php

namespace ContainerAilBCvo;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_Mzw40mdService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.Mzw40md' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.Mzw40md'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'detalle' => ['privates', '.errored..service_locator.Mzw40md.App\\Entity\\Reportesdet', NULL, 'Cannot autowire service ".service_locator.Mzw40md": it needs an instance of "App\\Entity\\Reportesdet" but this type has been excluded in "config/services.yaml".'],
            'entityManager' => ['services', 'doctrine.orm.default_entity_manager', 'getDoctrine_Orm_DefaultEntityManagerService', false],
        ], [
            'detalle' => 'App\\Entity\\Reportesdet',
            'entityManager' => '?',
        ]);
    }
}