<?php
use yii\easyii\helpers\Image;
use yii\easyii\modules\gallery\api\Gallery;
use yii\easyii\modules\page\api\Page;
use yii\helpers\Html;
use yii\helpers\Url;

$page = Page::get('page-gallery');

$this->title = $page->seo('title', $page->model->title);
$this->params['breadcrumbs'][] = $page->model->title;
?>






<div class="tag">
    <div class="container">
        <h5><i class="fa fa-share"></i>Проекты</h5>
    </div>
</div>
<div class="container">
    <div class="col-md-12">
        <div class="navigation-bread"><a href="/">Главная</a><span class="divider">&#8250;</span>Дизайны сайтов </div>
    </div>
    <div class="main-proj">
        <div class="projects row">
            <?php foreach(Gallery::tree() as $album) : ?>
                <?php //var_dump($album); ?>
                <div class="project col-md-4 col-xs-12">
                    <a href="<?= Url::to(['gallery/view', 'slug' => $album->slug]) ?>">
                        <?= Html::img(Image::thumb($album->image, 320, 193)) ?>
                        <div class="info-proj" style="text-align: center"><h3><?= $album->translation['title'] ?></h3></div>
                    </a>
                </div>

            <?php endforeach; ?>



            <?php /*<div class="project col-md-6 col-xs-12">
                <a href="/proekty/landshaftnyj-dizajn-kottedzha-i-zagorodnogo-doma"><img src="/static/img/002.jpg" width="70%">
                    <div class="info-proj"><h5>Ландшафтный дизайн коттеджа и загородного дома</h5></div>
                </a>
            </div>
            <div class="project col-md-6 col-xs-12">
                <a href=""><img src="/static/img/003.jpg" width="70%">
                    <div class="info-proj"><h5>Ландшафтный дизайн городских территорий</h5></div>
                </a>
            </div>
            <div class="project col-md-6 col-xs-12">
                <a href=""><img src="/static/img/004.jpg" width="70%">
                    <div class="info-proj"><h5>Озеленение интерьера</h5></div>
                </a>
            </div>
            <div class="project col-md-6 col-xs-12">
                <a href=""><img src="/static/img/005.jpg" width="70%">
                    <div class="info-proj"><h5>Проекты</h5></div>
                </a>
            </div> */ ?>
        </div>
    </div>
</div>
<div class="clear"></div>
<div class="line"></div>
