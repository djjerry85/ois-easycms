<?php
use yii\easyii\helpers\Image;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use yii\easyii\widgets\SeoForm;
use yii\bootstrap\BootstrapPluginAsset;

$class = $this->context->categoryClass;
$settings = $this->context->module->settings;
BootstrapPluginAsset::register($this);
?>
<?php $form = ActiveForm::begin([
    'enableAjaxValidation' => true,
    'options' => ['enctype' => 'multipart/form-data']
]); ?>


<?php if(!empty($parent)) : ?>
    <div class="form-group field-category-title required">
        <label for="category-parent" class="control-label"><?= Yii::t('easyii', 'Parent category') ?></label>
        <select class="form-control" id="category-parent" name="parent">
            <option value="" class="smooth"><?= Yii::t('easyii', 'No') ?></option>
            <?php foreach($class::find()->sort()->asArray()->all() as $node) : ?>
                <option
                    value="<?= $node['category_id'] ?>"
                    <?php if($parent == $node['category_id']) echo 'SELECTED' ?>
                    style="padding-left: <?= $node['depth']*20 ?>px;"
                ><?= $node['title'] ?></option>
            <?php endforeach; ?>
        </select>
    </div>
<?php endif; ?>

<?php if($settings['categoryThumb']) : ?>
    <?php if($model->image) : ?>
        <img src="<?= Image::thumb($model->image, 240) ?>">
        <a href="<?= Url::to(['/admin/'.$this->context->moduleName.'/a/clear-image', 'id' => $model->primaryKey]) ?>" class="text-danger confirm-delete" title="<?= Yii::t('easyii', 'Clear image')?>"><?= Yii::t('easyii', 'Clear image')?></a>
    <?php endif; ?>
    <?= $form->field($model, 'image')->fileInput() ?>
<?php endif; ?>

<hr>
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



                    <?php /*$form->field($model, 'text')->widget(CKEditor::className(), [
                        'options' => ['rows' => 6],
                        'preset' => 'full'
                    ])*/ ?>

                    <?= $form->field($model, 'seo_title')->textInput(['maxlength' => 255]); ?>

                    <?= $form->field($model, 'seo_description')->textInput(['maxlength' => 255]); ?>

                    <?= $form->field($model, 'seo_keywords')->textInput(['maxlength' => 255]); ?>

                    <?= $form->field($model, 'seo_h1')->textInput(['maxlength' => 255]); ?>

                <?php } else { ?>
                    <?= $form->field($model, 'title_'.$code)->textInput(['maxlength' => 255]); ?>


                    <?php /*$form->field($model, 'text_'.$code)->widget(CKEditor::className(), [
                        'options' => ['rows' => 6],
                        'preset' => 'standart'
                    ])*/ ?>

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


<?php if(IS_ROOT) : ?>
    <?= $form->field($model, 'slug') ?>
    <?php /*SeoForm::widget(['model' => $model])*/ ?>
<?php endif; ?>

<?= Html::submitButton(Yii::t('easyii', 'Save'), ['class' => 'btn btn-primary']) ?>
<?php ActiveForm::end(); ?>