<?php
return array(
    'db' => array(
        'driver'         => 'Pdo',
        'dsn'            => 'mysql:dbname=news;host=localhost',
        'driver_options' => array(
            PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES `UTF8` '
        ),
    ),
    'service_manager' => array(
    'factories' => array(
        'ZendDbAdapterAdapter'
        => 'Zend\Db\Adapter\AdapterServiceFactory',
    ),
),
);