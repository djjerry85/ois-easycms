<?php

$params = require(__DIR__ . '/params.php');

$basePath =  dirname(__DIR__);
$webroot = dirname($basePath);

$config = [
    'id' => 'app',
    'basePath' => $basePath,
    'bootstrap' => ['log'],
    'language' => 'ru-RU',
    'runtimePath' => $webroot . '/runtime',
    'vendorPath' => $webroot . '/vendor',

    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'bdfgbsdkfbksjdb',
            'enableCsrfValidation' => false
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
        ],
        'urlManager' => [
            'class' => 'app\components\UrlManager',

            // List all supported languages here
            // Make sure, you include your app's default language.
            'languages' => [ 'en', 'ru' => 'ru-RU', 'ge' => 'ka-GE'],
            //'_defaultLanguage' => 'ru',
            'enableLanguagePersistence' => false,
            'rules' => [
                [ 'class' => 'app\components\GalleryUrlRule', ],
                '<controller:(news)>/<slug:[\w-]+>' => '<controller>/view',
                '<controller:\w+>/view/<slug:[\w-]+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:(admin)>' => '<controller>/default/index',
                '<controller:(admin|news|gallery)>' => '<controller>/index',

                '<controller:(admin|news|gallery)>/<action:\w+>' => '<controller>/<action>',
                '<controller:(admin|news|gallery)>/<action:\w+>/<action2>' => '<controller>/<action>/<action2>',
                '<controller:\w+>/cat/<slug:[\w-]+>' => '<controller>/cat',
                '/<slug:>' => '/site/view-page',
                '/<slug1:>/<slug:>' => '/site/view-page',
                '/<slug2:>/<slug1:>/<slug:>' => '/site/view-page'
            ],
        ],

        'assetManager' => [
            // uncomment the following line if you want to auto update your assets (unix hosting only)
            //'linkAssets' => true,
            'bundles' => [
                'yii\web\JqueryAsset' => [
                    'js' => [YII_DEBUG ? 'jquery.js' : 'jquery.min.js'],
                ],
                'yii\bootstrap\BootstrapAsset' => [
                    'css' => [YII_DEBUG ? 'css/bootstrap.css' : 'css/bootstrap.min.css'],
                ],
                'yii\bootstrap\BootstrapPluginAsset' => [
                    'js' => [YII_DEBUG ? 'js/bootstrap.js' : 'js/bootstrap.min.js'],
                ],
            ],
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => require(__DIR__ . '/db.php'),
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = 'yii\debug\Module';

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = 'yii\gii\Module';
    
    $config['components']['db']['enableSchemaCache'] = false;
}

return array_merge_recursive($config, require($webroot . '/vendor/noumo/easyii/config/easyii.php'));