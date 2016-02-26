<?php
use yii\easyii\modules\news\api\News;
use yii\easyii\modules\page\api\Page;
use yii\helpers\Html;
use yii\helpers\Url;

$page = Page::get('page-news');

$this->title = $page->seo('title', $page->model->title);
$this->params['breadcrumbs'][] = $page->model->title;
?>


<div class="tag">
    <div class="container">
        <h5><i class="fa fa-share"></i>Новости</h5>
    </div>
</div>
<div class="container">
    <div class="col-md-12">
        <div class="navigation-bread"><a href="/">Главная</a><span class="divider">&#8250;</span><a href="/news">Новости</a></div>



        <div class="news-page">

            <?php foreach($news as $item) : ?>

                <div class="topic">

                    <a href="<?= Url::to(['news/view', 'slug' => $item->slug]); ?>">
                        <span><?= $item->date ?></span>
                        <h3><i class="fa fa-check"></i><?= $item->title ?></h3>
                        <p> <?= $item->short ?></p>
                    </a>
                    <p>
                        <?php foreach($item->tags as $tag) : ?>
                            <a href="<?= Url::to(['/news', 'tag' => $tag]) ?>" class="label label-info"><?= $tag ?></a>
                        <?php endforeach; ?>
                    </p>
                </div>



            <?php endforeach; ?>

            <?= News::pages() ?>



        </div>
    </div>
</div>
<div class="clear"></div>
<div class="line"></div>




