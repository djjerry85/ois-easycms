<?php
namespace yii\easyii\modules\price;

class PriceModule extends \yii\easyii\components\Module
{
    public $settings = [
        'enableThumb' => true,
        'enablePhotos' => true,
        'enableShort' => true,
        'shortMaxLength' => 256,
        'enableTags' => true
    ];

    public static $installConfig = [
        'title' => [
            'en' => 'Price',
            'ru' => 'Цены',
        ],
        'icon' => 'bullhorn',
        'order_num' => 70,
    ];
}