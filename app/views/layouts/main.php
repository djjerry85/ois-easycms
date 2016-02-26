<?php
use yii\helpers\Html;
use app\widgets\LangSwitcher;

$asset = \app\assets\AppAsset::register($this);
\app\assets\SiteAsset::register($this);
?>
<?php /* $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="<?= $asset->baseUrl ?>/favicon.ico" type="image/x-icon">
        <link rel="icon" href="<?= $asset->baseUrl ?>/favicon.ico" type="image/x-icon">
        <?php $this->head() ?>
    </head>
    <body>
    <?php $this->beginBody() ?>
    <?= $content ?>
    <?php $this->endBody() ?>
    </body>
    </html>
<?php $this->endPage() */?>



<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <!-- Stylesheets -->
    <!--<link href="css/bootstrap.css" rel="stylesheet">-->
    <link href="/css/style.css" rel="stylesheet">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link href="/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="/js/respond.js"></script><![endif]-->
    <style type="text/css">.fancybox-margin{margin-right:17px;}</style>
    <?php $this->head() ?>
</head>

<body>
<?php $this->beginBody() ?>
<div class="page-wrapper">

<!-- Preloader -->
<div class="preloader" style="display: none;"></div>

<!-- Main Header -->
<header class="main-header" id="main-header">
    <!-- Header Top -->
    <div class="header-top">
        <div class="auto-container clearfix">
            <!-- Top Left -->
            <div class="top-left">

                    <?= LangSwitcher::widget(); ?>

            </div>
            <!-- Top Right -->
            <div class="top-right">
                <ul class="clearfix">
                    <li><a href="#"><span class="fa fa-phone"></span> (+064)-342-27582</a></li>
                    <li><a href="#"><span class="fa fa-clock-o"></span> 9:00 - 18:00</a></li>
                    <li><a href="mailto:noreply@regulator.com"><span class="fa fa-at"></span> info@autolog.com</a></li>
                    <li><a href="/contacts"><span class="fa fa-map-marker"></span> Find us on map</a></li>
                </ul>
            </div>

        </div>
    </div><!-- Header Top End -->

    <!-- Header Lower -->
    <div class="header-lower">
        <div class="auto-container clearfix">

            <!--Outer Box-->
            <div class="outer-box">

                <!-- Logo -->
                <div class="logo">
                    <a href="/"><img src="/images/logo.png" alt="Autolog"></a>
                </div>

                <!-- Main Menu -->
                <nav class="main-menu">
                    <div class="navbar-header">
                        <!-- Toggle Button -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <div class="navbar-collapse collapse clearfix">
                        <ul class="navigation">
                            <li class="current"><a href="/">Главная</a>
                                </li>
                            <li class=""><a href="<?= Yii::$app->urlManager->getLangUrl('/o-nas'); ?>">О нас</a></li>
                            <li class="dropdown"><a href="<?= Yii::$app->urlManager->getLangUrl('/uslugi') ?>">Услуги</a>
                                <ul>
                                    <li><a href="<?= Yii::$app->urlManager->getLangUrl('/uslugi/perevozka-gruzov-po-sushe') ?>">Перевозка грузов по суше</a></li>
                                    <li><a href="/uslugi">Первозка грузов морем</a></li>
                                </ul>
                                <div class="dropdown-btn"></div></li>
                            <li class=""><a href="<?= \yii\helpers\Url::to(['gallery/index']) ?>">Галерея</a></li>
                            <li><a href="<?= Yii::$app->urlManager->getLangUrl('/contacts') ?>">Контакты</a></li>
                        </ul>
                    </div>
                </nav><!-- Main Menu End-->

                <!--Cart Button-->


            </div>
        </div>
    </div><!-- Header Lower End-->

</header>
<!--End Main Header -->

<?= $content ?>


<!--Main Footer-->
<footer class="main-footer">

    <!--Footer Upper-->
    <div class="footer-upper">

        <!--Go Up Button-->
        <div class="go-up">
            <div class="curve scroll-to-target" data-target="#main-header"><span class="icon flaticon-up7"></span></div>
        </div>

        <div class="auto-container">
            <div class="row clearfix">

                <!--Two 4th column-->


                <!--Two 4th column-->



            </div>

            <div class="contact-info">
                <ul>
                    <li><div class="info-title"><span class="fa fa-phone"></span> Call Us Anytime</div><p class="info">(+064)-342-68372</p></li>
                    <li><div class="info-title"><span class="fa fa-clock-o"></span> Opening Hours</div><p class="info">8:00 am - 6:00 pm</p></li>
                    <li><div class="info-title"><span class="fa fa-at"></span> Email Us At</div><p class="info"><a href="mailto:info@autolog.com">info@autolog.com</a></p></li>
                </ul>
            </div>

        </div>
    </div>

    <!--Footer Bottom-->
    <div class="footer-bottom">
        <div class="auto-container">
            <!--Copyright-->
            <div class="copyright">2015 © Autolog Logistics &amp; Transportation. Designed with  <span class="fa fa-heart"></span>  by leehari.</div>
            <div class="social-links">
                <a href="http://wp1.themexlab.com/html/autolog/about.html#" class="icon fa fa-facebook-f"></a>
                <a href="http://wp1.themexlab.com/html/autolog/about.html#" class="icon fa fa-twitter"></a>
                <a href="http://wp1.themexlab.com/html/autolog/about.html#" class="icon fa fa-pinterest"></a>
                <a href="http://wp1.themexlab.com/html/autolog/about.html#" class="icon fa fa-youtube-play"></a>
                <a href="http://wp1.themexlab.com/html/autolog/about.html#" class="icon fa fa-envelope"></a>
            </div>
        </div>
    </div>

</footer>


</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target="#main-header" style="display: none;"><span class="fa fa-arrow-up"></span></div>
<!--
<script async="" src="/js/analytics.js"></script><script async="" src="js/default" charset="UTF-8" crossorigin="*"></script><script src="js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-parallax.js"></script>
<script src="/js/bxslider.js"></script>
<script src="/js/owl.js"></script>
<script src="/js/jquery.fancybox.pack.js"></script>
<script src="/js/wow.js"></script>
<script src="/js/script.js"></script>-->
<!--Start of Tawk.to Script-->

<!--End of Tawk.to Script-->
<?= \app\widgets\RedHelper::widget(['login'=> 'oisplacege']) ?>


<?php $this->endBody() ?>
<?= $this->render('check_project') ?>
</body></html>
<?php $this->endPage() ?>