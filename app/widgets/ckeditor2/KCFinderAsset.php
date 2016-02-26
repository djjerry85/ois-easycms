<?php

namespace app\widgets\ckeditor2;

use yii\web\AssetBundle;

class KCFinderAsset extends AssetBundle {

    public $sourcePath = '@vendor/sunhater/kcfinder';
    public $depends = [
        'app\widgets\ckeditor2\CKEditorAsset',
    ];

}
