<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use yii\easyii\widgets\Redactor;
use yii\easyii\widgets\SeoForm;
use yii\easyii\modules\page\models\Page;
use yii\easyii\modules\price\models\Price;
use yii\bootstrap\BootstrapPluginAsset;
use app\widgets\ckeditor\CKEditor;
use iutbay\yii2kcfinder\KCFinderInputWidget;

BootstrapPluginAsset::register($this);
?>
<style>
    #page-text {
        width: 100%;
        height: 500px;
    }
</style>
<?php $form = ActiveForm::begin([
    'enableAjaxValidation' => true,
    'options' => ['class' => 'model-form']
]); ?>

<div>

    <!-- Nav tabs -->
    <?php if(!empty(Yii::$app->params['availableLanguages'])) { ?>
    <ul class="nav nav-tabs" role="tablist">
        <?php $n = 0; ?>
        <?php foreach (Yii::$app->params['availableLanguages'] as $code => $name) { ?>
            <?php $n++; ?>
        <li role="presentation" class="<?= $n===1 ? 'active': '' ?>">
            <a href="#post_lang_<?= $code ?>" aria-controls="post_lang_<?= $code ?>" role="tab" data-toggle="tab"><?= $name ?></a>
        </li>
        <?php } ?>

    </ul>
    <?php } ?>

    <!-- Tab panes -->
    <?php if (!empty(Yii::$app->params['availableLanguages'])) { ?>
    <div class="tab-content" style="padding-top: 30px">
        <?php $n = 0; ?>
        <?php foreach (Yii::$app->params['availableLanguages'] as $code => $name) { ?>
            <?php $n++; ?>
        <div role="tabpanel" class="tab-pane <?= $n===1 ? 'active': '' ?>" id="post_lang_<?= $code ?>">
            <?php if($code == Yii::$app->params['defaultLanguage']) { ?>
                <?= $form->field($model, 'title')->textInput(['maxlength' => 255]); ?>

                <?php /*$form->field($model, 'text', ['options' => ['class' => 'editor']])->widget(Redactor::className(),[
                    'options' => [
                        'minHeight' => 400,
                        'imageUpload' => Url::to(['/admin/redactor/upload', 'dir' => 'pages']),
                        'fileUpload' => Url::to(['/admin/redactor/upload', 'dir' => 'pages']),
                        'plugins' => ['fullscreen']
                    ]
                ]) */?>
                <?= $form->field($model, 'text')->widget(CKEditor::className(), [
                    'options' => ['rows' => 6],
                    'preset' => 'full'
                ]) ?>

                <?= $form->field($model, 'seo_title')->textInput(['maxlength' => 255]); ?>

                <?= $form->field($model, 'seo_description')->textInput(['maxlength' => 255]); ?>

                <?= $form->field($model, 'seo_keywords')->textInput(['maxlength' => 255]); ?>

                <?= $form->field($model, 'seo_h1')->textInput(['maxlength' => 255]); ?>

            <?php } else { ?>
                <?= $form->field($model, 'title_'.$code)->textInput(['maxlength' => 255]); ?>


            <?php /*$form->field($model, 'text_'.$code, ['options' => ['class' => 'editor']])->widget(Redactor::className(),[
                'options' => [
                    'minHeight' => 400,
                    'imageUpload' => Url::to(['/admin/redactor/upload', 'dir' => 'pages']),
                    'fileUpload' => Url::to(['/admin/redactor/upload', 'dir' => 'pages']),
                    'plugins' => ['fullscreen']
                ]
            ])*/ ?>



                <?= $form->field($model, 'text_'.$code)->widget(CKEditor::className(), [
                    'options' => ['rows' => 6],
                    'preset' => 'full'
                ]) ?>

            <?= $form->field($model, 'seo_title_'.$code)->textInput(['maxlength' => 255]); ?>

            <?= $form->field($model, 'seo_description_'.$code)->textInput(['maxlength' => 255]); ?>

            <?= $form->field($model, 'seo_keywords_'.$code)->textInput(['maxlength' => 255]); ?>

            <?= $form->field($model, 'seo_h1_'.$code)->textInput(['maxlength' => 255]); ?>

            <?php } ?>
        </div>
        <?php } ?>
    </div>
    <?php } ?>

</div>
<hr>



<?= $form->field($model, 'parrent_page_id')->dropDownlist(Page::dropdownList($model->page_id)) ?>

<?= $form->field($model, 'price_id')->dropDownlist(Price::dropdownList()) ?>




<?php if(IS_ROOT) : ?>


    <?= $form->field($model, 'slug') ?>
    <?php //SeoForm::widget(['model' => $model]) ?>
<?php endif; ?>

<?= Html::submitButton(Yii::t('easyii','Save'), ['class' => 'btn btn-primary']) ?>
<?php ActiveForm::end(); ?>
<!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/mode/xml/xml.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/2.36.0/formatting.js"></script>

<link href="/static/summernote/summernote.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet">
<script src="/static/summernote/summernote.min.js"></script>
<script src="/static/summernote/lang/summernote-ru-RU.js"></script>


<script>
    $(function(){
        $('.editor textarea').summernote({
            height: 400,
            codemirror: { // codemirror options
                theme: 'monokai'
            }
        });
    });
</script>


