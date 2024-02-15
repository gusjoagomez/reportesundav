<?php

namespace ContainerIZz3idg;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecurity_Listener_Session_MainService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private 'security.listener.session.main' shared service.
     *
     * @return \Symfony\Component\Security\Http\EventListener\SessionStrategyListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/EventListener/SessionStrategyListener.php';

        return $container->privates['security.listener.session.main'] = new \Symfony\Component\Security\Http\EventListener\SessionStrategyListener(($container->privates['security.authentication.session_strategy'] ?? $container->load('getSecurity_Authentication_SessionStrategyService')));
    }
}
