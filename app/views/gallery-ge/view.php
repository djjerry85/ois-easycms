<?php
use yii\easyii\modules\gallery\api\Gallery;
use yii\helpers\Url;
use yii\helpers\Html;
use yii\easyii\helpers\Image;

$this->title = $album->seo('title', $album->model->title);
$this->params['breadcrumbs'][] = ['label' => 'Gallery', 'url' => ['gallery/index']];
$this->params['breadcrumbs'][] = $album->model->title;
?>

<div class="tag">
    <div class="container">
        <h5><i class="fa fa-share"></i><?= $album->seo('h1', $album->title) ?></h5>
    </div>
</div>
<div class="container">
    <div class="col-md-12">
        <div class="navigation-bread"><a href="/">Главная</a><span class="divider">&#8250;</span>
            <a href="/gallery">Дизайны сайта</a>
            <?php if (!empty($GLOBALS['breadcrumbs_cost'])) {
                $last = '/gallery';
                foreach ($GLOBALS['breadcrumbs_cost'] as $ell) {
                    $last .= '/'.$ell['slug'] ?>
                    <span class="divider">&#8250;</span>
                    <a href="<?= $last ?>"><?= $ell['title'] ?></a>
                <?php }
            } ?>



            <span class="divider">&#8250;</span>
            <?= $album->title ?>
        </div>
    </div>


    <?php if(!empty($children)) { ?>
        <div class="main-proj">
            <div class="projects row">
                <?php foreach($children as $childAlbum) : ?>
                    <div class="project col-md-4 col-xs-12">
                        <a href="<?= Url::to(['gallery/view', 'slug' => $childAlbum->slug]) ?>">
                            <?= Html::img(Image::thumb($childAlbum->image, 320, 193)) ?>
                            <div class="info-proj"><h5><?= $childAlbum->title ?></h5></div>
                        </a>
                    </div>

                <?php endforeach; ?>


            </div>
        </div>
    <?php } ?>



    <?php if(count($photos)) : ?>
        <div class="row">
            <div class="col-md-3">
                <?php
                $parentModel = $album->model->parents(1)->one();
                if ($parentModel) {
                    $childrenSidebar = $parentModel->children()->all();
                    foreach ($childrenSidebar as $item) { ?>
                        <a href="<?= Url::to(['gallery/view', 'slug' => $item->slug]) ?>">
                            <?= $item->title ?>
                        </a><br>
                    <?php }
                }
                ?>
            </div>
            <div class="col-md-9">

                <?php foreach($photos as $photo) : ?>
                    <?= $photo->box(270, 200) ?>
                <?php endforeach;?>
                <?php Gallery::plugin() ?>
            </div>
        </div>

        <br/>
    <?php else : ?>
        <!--<p>Album is empty.</p>-->
    <?php endif; ?>
    <?= $album->pages() ?>
</div>
<div class="clear"></div>
<div class="line"></div>








