<?php
namespace app\assets;

class SiteAsset extends \yii\web\AssetBundle
{
    public $sourcePath = '@webroot/static';
    public $css = [
        //'css/styles.css',
    ];
    public $js = [
        '/js/analytics.js',
'/js/jquery-parallax.js',
'/js/bxslider.js',
'/js/owl.js',
'/js/jquery.fancybox.pack.js',
'/js/wow.js',
'/js/script.js',
    ];
    public $depends = [
        'app\assets\AppAsset'
    ];
}

