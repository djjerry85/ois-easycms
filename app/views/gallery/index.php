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


<section class="gallery-section" style="background-image:url(/images/parallax/image-1.jpg);">
    <div class="auto-container">
        <div class="sec-title ">
            <h3>FLEET GALLERY</h3>
            <h2>WE OFFER YOU THE BEST FLEETS</h2>
            <div class="line"></div>
        </div>
        <div class="row clearfix">



            <?php foreach(Gallery::tree() as $album) : ?>
            <!--Column-->
            <div class="col-md-3 col-sm-6 col-xs-12 column wow fadeIn animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeIn;">
                <figure class="image">
                    <a href="<?= Url::to(['gallery/view', 'slug' => $album->slug]) ?>" class=""><?= Html::img(Image::thumb($album->image, 300, 257)) ?></a>
                    <div class="overlay-box"><a href="<?= Url::to(['gallery/view', 'slug' => $album->slug]) ?>" class="link lightbox-image" title="Air Freight"><span class="txt"><?= $album->translation['title'] ?></span></a></div>
                </figure>
            </div>
            <?php endforeach; ?>




        </div>


    </div>
</section>







