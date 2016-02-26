<?php
use yii\easyii\widgets\DateTimePicker;
use yii\easyii\helpers\Image;
use yii\easyii\widgets\TagsInput;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use yii\easyii\widgets\Redactor;
use yii\easyii\widgets\SeoForm;
use app\widgets\ckeditor\CKEditor;

$module = $this->context->module->id;
?>




<?php $form = ActiveForm::begin([
    'enableAjaxValidation' => true,
    'options' => ['enctype' => 'multipart/form-data', 'class' => 'model-form']
]); ?>

<?php if($this->context->module->settings['enableThumb']) : ?>
    <?php if($model->image) : ?>
        <img src="<?= Image::thumb($model->image, 240) ?>">
        <a href="<?= Url::to(['/admin/'.$module.'/a/clear-image', 'id' => $model->news_id]) ?>" class="text-danger confirm-delete" title="<?= Yii::t('easyii', 'Clear image')?>"><?= Yii::t('easyii', 'Clear image')?></a>
    <?php endif; ?>
    <?= $form->field($model, 'image')->fileInput() ?>
<?php endif; ?>


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



<?php if (!empty(Yii::$app->params['availableLanguages'])) { ?>
    <div class="tab-content" style="padding-top: 30px">
        <?php $n = 0; ?>
        <?php foreach (Yii::$app->params['availableLanguages'] as $code => $name) { ?>
            <?php $n++; ?>
            <div role="tabpanel" class="tab-pane <?= $n===1 ? 'active': '' ?>" id="post_lang_<?= $code ?>">
                <?php if($code == Yii::$app->params['defaultLanguage']) { ?>
                    <?= $form->field($model, 'title')->textInput(['maxlength' => 255]); ?>

                    <?php if($this->context->module->settings['enableShort']) : ?>
                        <?= $form->field($model, 'short')->textarea() ?>
                    <?php endif; ?>

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



                    <?php if($this->context->module->settings['enableShort']) : ?>
                        <?= $form->field($model, 'short_'.$code)->textarea() ?>
                    <?php endif; ?>


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




<hr>

<?= $form->field($model, 'time')->widget(DateTimePicker::className()); ?>

<?php if($this->context->module->settings['enableTags']) : ?>
    <?= $form->field($model, 'tagNames')->widget(TagsInput::className()) ?>
<?php endif; ?>

<?php if(IS_ROOT) : ?>
    <?= $form->field($model, 'slug') ?>
    <?php //SeoForm::widget(['model' => $model]) ?>
<?php endif; ?>

<?= Html::submitButton(Yii::t('easyii', 'Save'), ['class' => 'btn btn-primary']) ?>
<?php ActiveForm::end(); ?>
