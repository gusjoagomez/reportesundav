<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerAilBCvo\App_KernelDevDebugContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerAilBCvo/App_KernelDevDebugContainer.php') {
    touch(__DIR__.'/ContainerAilBCvo.legacy');

    return;
}

if (!\class_exists(App_KernelDevDebugContainer::class, false)) {
    \class_alias(\ContainerAilBCvo\App_KernelDevDebugContainer::class, App_KernelDevDebugContainer::class, false);
}

return new \ContainerAilBCvo\App_KernelDevDebugContainer([
    'container.build_hash' => 'AilBCvo',
    'container.build_id' => '2253f70a',
    'container.build_time' => 1707878612,
], __DIR__.\DIRECTORY_SEPARATOR.'ContainerAilBCvo');
