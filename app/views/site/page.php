<?php
use yii\helpers\Url;
use yii\easyii\modules\price\api\Price;

$this->title = $page->seo('title', $page->model->title);
$description = $page->seo('description', false);
$keywords = $page->seo('keywords', false);
if ($description) {
    $this->registerMetaTag([
        'name' => 'description',
        'content' => html_entity_decode($description)
    ]);
}
if ($keywords) {
    $this->registerMetaTag([
        'name' => 'keywords',
        'content' => html_entity_decode($keywords)
    ]);
}
//var_dump(Yii::$app->language);
?>




<section class="page-title" style="background-image:url(/images/background/page-title-1.jpg);">
    <div class="auto-container">
        <h1><?= $page->model->title ?></h1>


        <?php if(!empty($breadcrumbs)) { ?>
        <ul class="bread-crumb">
                <?php foreach ($breadcrumbs as $brItem) {
                    if(!empty($brItem['url'])) { ?>
                        <li><a href="<?= $brItem['url'] ?>"><?= $brItem['text'] ?></a></li>
                    <?php } else { ?>
            <li><?= $brItem['text'] ?></li>
                    <?php } ?>
                <?php } ?>
            </ul>
        <?php } ?>

    </div>

    <!--Go Down Button-->
    <div class="go-down">
        <div class="curve scroll-to-target" data-target="#about-section"><span class="icon fa fa-arrow-down"></span></div>
    </div>

</section>



<div class="container">


    <div class="page-content" style="padding: 30px 0">
        <?= $page->model->text; ?>
    </div>
    <div class="price-content" style="margin-top: 20px">
    <?php if (!empty($page->model->price_id)) {
        $price = Price::get($page->model->price_id);
        if ($price && $price->model->status) {
        //var_dump($price->model->fields);
        if(!empty($price->model->fields)) { ?>
            <p>Цены согласно прейскуранту от <?= $price->date ?></p>
        <table>
            <tr class="thead">
                <td width="40">№</td>
                <td width="70%">Наименование услуги</td>
                <td width="200">Единица измерения</td>
                <td width="140">Цена, бел. руб.</td>
            </tr>
            <?php $i = 0; ?>
            <?php foreach($price->model->fields as $item) { ?>
                <?php
                $name = isset($item['name']) ? $item['name'] : '';
                $value = isset($item['value']) ? $item['value'] : '';
                $unit = isset($item['unit']) ? $item['unit'] : ''; ?>
                <?php $i++; ?>

                <?php $addC = ($i%2 == 1) ? 0 : 4; ?>


                <tr>
                    <td class="colum-<?= 1+$addC ?>"><?= $i ?></td>
                    <td class="colum-<?= 2+$addC ?>"><?= $name ?></td>
                    <td class="colum-<?= 3+$addC ?>"><?= $unit ?></td>
                    <td class="colum-<?= 4+$addC ?>"><?= $value ?></td>
                </tr>

                <?php } ?>
        </table>
        <?php }
        }
    } ?>
    </div>




</div>
<div class="clear"></div>
<div class="line"></div>


