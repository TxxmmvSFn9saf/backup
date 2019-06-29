<?php

namespace News;

class Module
{
    /**
     *
     * @return array
     */
    public function getConfig ()
    {
        return include __DIR__ . '/config/module.config.php';
    }

    /**
     *
     * @return array
     */
    public function getAutoloaderConfig ()
    {
        return array (
            'Zend\Loader\ClassMapAutoloader' => array (
                __DIR__ . '/config/maps/autoload_classmap.php'
            ) ,
            'Zend\Loader\StandardAutoloader' => array (
                'namespaces' => array (
                    'News' => __DIR__ . '/src/News'
                )
            )
        );
    }
}