<?php

namespace app\widgets\ckeditor2;

use yii\web\AssetBundle;

/**
 * @package MadAnd\ckeditor
 */
class CKEditorAsset extends AssetBundle {

    public $sourcePath = '@app/widgets/ckeditor/assets';
    public $js = [
        'ckeditor.js',
        'adapters/jquery.js'
    ];
    public $depends = [
        'yii\web\JqueryAsset'
    ];

}
