<?php
namespace app\widgets;

use Yii;
use yii\easyii\helpers\Data;
use yii\widgets\InputWidget;
use yii\base\Widget;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\web\JsExpression;
use yii\web\AssetBundle;

use yii\easyii\assets\RedactorAsset;

class LangSwitcher extends Widget
{
    public $options = [];

    private $_defaultOptions = [
        'imageUpload' => '/admin/redactor/upload',
        'fileUpload' => '/admin/redactor/upload'
    ];
    private $defaultLang;
    private $allLangs = [];
    private $_assetBundle;

    private $langs = [];

    public function init()
    {
        $this->options = array_merge($this->_defaultOptions, $this->options);
        $this->defaultLang = Yii::$app->params['defaultLanguage'];
        $this->allLangs = Yii::$app->params['availableLanguages'];

        foreach ($this->allLangs as $code => $name) {
            $this->langs[] = [
                'code' => $code,
                'href' => $this->getUrl($code),
                'name' => $name
            ];
        }
        //exit;
    }
    private function getUrl($code)
    {
        $url = explode('/', $_SERVER['REQUEST_URI']);
        array_shift($url);
        //var_dump($url[0]);
        if (!empty($url[0]) && isset($this->allLangs[$url[0]])) {
            array_shift($url);

        }

        if ($code !== $this->defaultLang) {
            array_unshift($url, $code);
        }
        return '/'.implode('/', $url);

    }

    public function run()
    {
        //var_dump($this->model->{$this->attribute}); exit;
        echo $this->render('/site/_lang_switcher', [
            'items' => $this->langs
        ]);

    }

}
