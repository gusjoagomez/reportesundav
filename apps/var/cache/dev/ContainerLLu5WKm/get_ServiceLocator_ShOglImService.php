<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_ShOglImService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.ShOglIm' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.ShOglIm'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'authenticationUtils' => ['privates', 'security.authentication_utils', 'getSecurity_AuthenticationUtilsService', true],
            'userRepository' => ['privates', 'App\\Repository\\SecUserRepository', 'getSecUserRepositoryService', true],
        ], [
            'authenticationUtils' => '?',
            'userRepository' => 'App\\Repository\\SecUserRepository',
        ]);
    }
}
