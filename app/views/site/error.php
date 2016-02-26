<?php
use yii\helpers\Html;
$this->title = $name;
?>


<div class="tag">
    <div class="container">
        <h5><i class="fa fa-share"></i>Ошибка</h5>
    </div>
</div>
<div class="container">
    <div class="col-md-12">

    <div class="navigation-bread"><a href="/">Главная</a><span class="divider">&#8250;</span>Ошибка</div>
    </div>

    <div class="page-content col-md-12">
        <h1 style="text-align: center; font-size: 30px;padding: 50px 0"><?= Html::encode($this->title) ?></h1>

        <div>
            <?= nl2br(Html::encode($message)) ?>
        </div>
    </div>


</div>
<div class="clear"></div>
<div class="line"></div>



