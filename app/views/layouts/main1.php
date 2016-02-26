<?php
use yii\helpers\Html;

$asset = \app\assets\AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title><?= Html::encode($this->title) ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <?= Html::csrfMetaTags() ?>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css">
    <?php $this->head() ?>
    <link rel="stylesheet" type="text/css" href="/static/css/style.css">
</head>
<body>
<?php $this->beginBody() ?>
<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="/static/img/logo.png"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Про службу</a></li>
                    <li><a href="#">Діяльність</a></li>
                    <li><a href="#">Центр</a></li>
                    <li><a href="#">Кадрова робота</a></li>
                    <li><a href="#">Звернення</a></li>
                    <li><a href="#">Реєстри</a></li>
                    <li><a href="#">Тести</a></li>
                    <li><a href="#">Відео</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Що вас цікавить?">
                        </div>
                        <button type="submit" class="btn btn-default">Знайти</button>
                    </form>
                    <li><a href="#">Вхід</a></li>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>
<div class="line"></div>
<div class="main-img">
    <p class="sign-main">Управління державної виконавчої служби<br/>
        Головного територіального управління <br/>юстицій у Запорізькій области</p>
</div>
<div class="run-string"><p>Гаряча лінія Управління державної виконавчої служби Головного територіального управління юстиції у Запорізькій області (061) 239-05-82</p></div>
<div class="container">
    <div class="row">
        <div class="crumbs"></div>
        <a href="/">Головна</a><span class="divider">›</span>Міністерство
    </div>
    <div class="announcement">
        <h1>Анонс</h1>
        <a href="">Законодавство про доступ до публічної інформації</a>
        <a href="">Права громадян </a>
        <a href="">Форми для запиту</a>
        <a href="">Система обліку публічної інформації </a>
    </div>
    <div class="tabs">
        <div class="col-md-4"><h2>Доступ до публічної інформації</h2>
            <ul class="access">
                <li><a href="">Законодавство про доступ до публічної   інформації</a></li>
                <li><a href="">Права громадян </a></li>
                <li><a href="">Форми для запиту</a></li>
                <li><a href="">Система обліку публічної інформації </a></li>
            </ul></div>
        <div class="col-md-4" style="text-align: center; background: transparent;">
            <a href=""><img src="/static/img/setam.gif" width="85%"></a>
            <a href=""><img src="/static/img/reestr.jpg" width="85%"></a>
        </div>
        <div class="col-md-4 navi" style="text-align: center"><h2>Інші державні установи області</h2>
            <div class="row">
                <div class="col-md-3"><a href=""><img src="/static/img/police.png" width="65px"></a>
                    <figcaption>ГУ Національної поліції у Запорізькій області</figcaption></div>
                <div class="col-md-3"><a href=""><img src="/static/img/sbu.png" width="65px"></a>
                    <figcaption>Управління СБУ в Запорізькій області</figcaption></div>
                <div class="col-md-3"><a href=""><img src="/static/img/city.png" width="65px"></a>
                    <figcaption>Запорізька міська рада</figcaption></div>
                <div class="col-md-3"><a href=""><img src="/static/img/old.png" width="65px"></a>
                    <figcaption>ГУ пенсійного фонду України  в Запорізькій області</figcaption></div>
            </div>
        </div>
    </div>
</div>
<div class="main">
    <h1>Новини</h1>
    <div class="row">
        <div class="col-md-12">
            <h2><a href="">Відбулись урочистості з нагоди святкування професійного свята - ДНЯ ПРАЦІВНИКА ДЕРЖАВНОЇ ВИКОНАВЧОЇ СЛУЖБИ.</a></h2>
            <p class="date">17.12.2015 - 16:10</p>
            <div class="container">
                <div class="text">
                    <div class="col-md-3">
                        <img src="/static/img/photo.jpg">
                    </div>
                    <div class="col-md-9">
                        <p>17.12.2015 відбулись урочистості з нагоди  святкування професійного свята  - ДНЯ  ПРАЦІВНИКА ДЕРЖАВНОЇ ВИКОНАВЧОЇ СЛУЖБИ.</p>
                        <div class="links">
                            <a href="">Додати коментар</a> | <a href="">Читати далі...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2><a href="">	ПРИВІТАННЯ З ПРОФЕСІЙНИМ СВЯТОМ!</a></h2>
            <p class="date">17.12.2015 - 10:01</p>
            <div class="container">
                <div class="text">
                    <div class="col-md-3">
                        <img src="/static/img/photo.jpg">
                    </div>
                    <div class="col-md-9">
                        <p>Шановні колеги!</p>

                        <p>Прийміть наші сердечні вітання з нагоди професійного свята – Дня працівника державної виконавчої служби.</p>

                        <p>Нехай ваші професійні зусилля будуть винагородженні повагою і довірою громадян, впевненістю у надійному і справедливому захисті їх конституційних прав і свобод.</p>
                        <div class="links">
                            <a href="">Додати коментар</a> | <a href="">Читати далі...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2><a href="">Коментар фахівця!</a></h2>
            <p class="date">16.12.2015 - 16:41</p>
            <div class="container">
                <div class="text">
                    <div class="col-md-3">
                        <img src="/static/img/photo.jpg">
                    </div>
                    <div class="col-md-9">
                        <p>Порядок визначення державним виконавцем при виконанні рішення суду про стягнення аліментів розміру заборгованості із сплати аліментів</p>

                        <p>Порядок стягнення державним виконавцем аліментів при виконанні відповідного рішення суду встановлений статтею 74 Закону України «Про виконавче провадження».</p>

                        <div class="links">
                            <a href="">Додати коментар</a> | <a href="">Читати далі...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php //$content ?>


</div>
<div class="line-footer"></div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <p><b>Адреса:</b><span class="footer">Проспект Леніна 164, місто Запоріжжя, 69107, 								Україна</span></p>
                    <p class="footer-down"><b>Тел./факс:</b><span class="footer">(061) 239-05-82 <br/>
						(061) 239-06-83 <br/>
						(061) 239-06-08 <br/>
						(061) 239-04-62</span></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <p><b>ПН-ЧТ</b><span class="footer">09:00 - 18:00</span></p>
                    <p><b>ПТ</b><span class="footer">09:00 - 16:45</span></p>
                    <p><b>Перерва</b><span class="footer">13:00 - 13:45</span></p>
                    <p class="footer-down"><b>Приймальні дні	</b><span class="footer">
	1-а п´ятниця	09:00 - 13:00<br/>3-я п´ятниця	14:00 - 17:00
	</span></p>
                </div>
            </div>
        </div>
        <div class="col-md-12"><a href=""><img src="/static/img/logo.png" alt=""></a></div>
    </div>
</footer>
<!--<script src="https://code.jquery.com/jquery.min.js"></script>
<script src="/static/js/bootstrap.js"></script>-->
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>

