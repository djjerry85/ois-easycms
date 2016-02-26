<?php

namespace app\widgets\ckeditor2;

use yii\helpers\Html;
use yii\helpers\Json;
use yii\widgets\InputWidget;
use stenyo\ckeditor\KCFinderSelectAsset;

class KCFinderInput extends InputWidget {

    const BTN_DEFAULT = 'default';
    const BTN_GRAY = 'default';
    const BTN_PRIMARY = 'primary';
    const BTN_INFO = 'info';
    const BTN_SUCCESS = 'success';
    const BTN_DANGER = 'danger';
    const BTN_WARNING = 'warning';
    const KC_FILE_TYPE_FILE = 'files';
    const KC_FILE_TYPE_FLASH = 'flash';
    const KC_FILE_TYPE_MEDIA = 'media';
    const KC_FILE_TYPE_MISC = 'misc';
    const KC_FILE_TYPE_IMAGES = 'images';
    const KC_FILE_TYPE_MIMAGES = 'mimages';
    const KC_FILE_TYPE_NOTIMAGES = 'notimages';

    public $buttonType = self::BTN_DEFAULT;
    public $buttonLabel = "Media Galery";
    public $kcOptions = [
        'type' => self::KC_FILE_TYPE_FILE,
    ];
    public $kcCallback = 'function(url) { console.log(url) }';

    public function init() {
        parent::init();
    }

    public function run() {
        $assets = KCFinderAsset::register($this->getView());
        if(!isset($this->kcOptions['url'])) {
            $this->kcOptions['url'] = $assets->baseUrl;
        }
        if ($this->hasModel()) {
            KCFinderSelectAsset::register($this->getView());
            Html::addCssClass($this->options, 'form-control');
            echo Html::beginTag('div', ['class' => 'input-group']);
            echo Html::activeTextInput($this->model, $this->attribute, $this->options);
        } else {
            echo Html::textInput($this->name, $this->value, $this->options);
        }

        echo Html::beginTag('span', ['class' => 'input-group-btn']);
        $this->kcOptions['callback'] = $this->kcCallback;
        echo Html::beginTag('button', ['class' => "btn btn-$this->buttonType", 'type' => 'button', 'onclick' => 'selectSingle(' . Json::htmlEncode($this->kcOptions) . ')']);
        echo $this->buttonLabel;
        echo Html::endTag('button');
        echo Html::endTag('span');
        echo Html::endTag('div');
    }

}
