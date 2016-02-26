CKEditor + KCFinder for Yii 2
=====

WYSIWYG text editor widget with integrated file browser.

Installation
------------

The preferred way to install this extension is through [composer](http://getcomposer.org/download/).

Either run

```
php composer.phar require --prefer-dist MadAnd/yii2-ckeditor-kcfinder "*"
```

or add

```
"MadAnd/yii2-ckeditor-kcfinder": "*"
```

to the require section of your `composer.json` file.

Usage
-----

```php
\MadAnd\ckeditor\CKEditor::widget();
```

Possible settings (with default values)
---------------------------------------

'type' => CKEditor::TYPE_STANDARD,

'height'=>'200px',

'language'=>Yii::$app->language,
