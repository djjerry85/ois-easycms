<?php
use yii\easyii\modules\news\api\News;
use yii\helpers\Url;

$this->title = $news->seo('title', $news->model->title);
$this->params['breadcrumbs'][] = ['label' => 'News', 'url' => ['news/index']];
$this->params['breadcrumbs'][] = $news->model->title;
?>

<div class="tag">
    <div class="container">
        <h5><i class="fa fa-share"></i><?= $news->seo('h1', $news->title) ?></h5>
    </div>
</div>
<div class="container">
    <div class="col-md-12">
        <div class="navigation-bread"><a href="">Главная</a>
            <span class="divider">&#8250;</span><a href="/news">Новости</a>
            <span class="divider">&#8250;</span><?= $news->title ?></div>
        <div class="news-page">
            <div class="full-news">
                <h3><?= $news->title ?></h3>

                <?= $news->text ?>
            </div>
            <?php if(count($news->photos)) : ?>
            <div style="margin-top: 30px">

                <?php foreach($news->photos as $photo) : ?>
                    <?= $photo->box(300, 200) ?>
                <?php endforeach;?>
                <?php News::plugin() ?>
            </div>
            <?php endif; ?>
            <p>
                <?php foreach($news->tags as $tag) : ?>
                    <a href="<?= Url::to(['/news', 'tag' => $tag]) ?>" class="label label-info"><?= $tag ?></a>
                <?php endforeach; ?>
            </p>

        </div>
    </div>
</div>
<div class="clear"></div>
<div class="line"></div>





