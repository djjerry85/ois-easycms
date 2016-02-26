<?php
use yii\helpers\Url;
use yii\easyii\modules\page\api\Page;
use yii\helpers\Html;


$page = Page::get('page-index');
if ($page) {
    $this->title = $page->model->seo_title;
    $description = $page->model->seo_description;
    $keywords = $page->model->seo_keywords;
}

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

?>




<!--Page Title-->
<section class="page-title" style="background-image:url(/images/background/page-title-1.jpg);">
    <div class="auto-container">


    </div>

    <!--Go Down Button-->
    <div class="go-down">
        <div class="curve scroll-to-target" data-target="#about-section"><span class="icon fa fa-arrow-down"></span></div>
    </div>

</section>


<!--About Section-->
<section class="about-section" id="about-section">
    <!--Desc Box-->
    <div class="desc-box">
        <div class="auto-container">
            <div class="sec-title no-underline">
                <h3>AUTOLOG HISTORY</h3>
                <h2>EVERYTHING BEGAN IN A GARAGE</h2>
                <p>Pellentesque semper quis neque dictum hendrerit. Sed nulla ipsum, porttitor pharetra tortor in, <br>consequat imperdiet nisi. Phasellus at quam tristique, cursus tellus vitae, convallis neque. </p>
            </div>
        </div>
    </div>

    <!--Lower Content-->
    <div class="lower-content" style="background-image:url(/images/background/1.jpg);">
        <div class="auto-container">
            <div class="content-box">
                <div class="row clearfix">

                    <!--Column-->
                    <div class="col-md-7  col-sm-7 col-xs-12 column">
                        <h2 class="main-title">Our Stories</h2>
                        <h3>Back in 1982</h3>
                        <p>Aliquam magna nibh, mattis a urna nec, semper venenatis magna. Cras suscipit neque libero, in bibendum orci scelerisque mollis. Nunc auctor ut erat vel euismod. Aenean tristique leo eros, at gravida massa semper eu. </p>
                        <p>Fusce imperdiet libero et eros tincidunt, vitae accumsan purus pulvinar. Vivamus varius, metus et scelerisque viverra. Morbi mattis, lorem sit amet gravida eleifend, nisl felis tincidunt dui, nec porta turpis ligula eu nisl. Donec lacus dolor, facilisis at tortor ac, congue vulputate.</p>

                        <h3>The tipping point</h3>
                        <p>Quisque eleifend volutpat orci nec fermentum. Curabitur quis dignissim nibh. Suspendisse potenti. Vivamus dictum volutpat dapibus. Fusce sed varius massa. Fusce et purus sit amet erat fermentum rutrum. Pellentesque pellentesque auctor vehicula. Integer ut ligula blandit, pellentesque neque in, hendrerit magna. </p>
                        <p>Nunc porta vehicula mauris, a hendrerit dolor tempor sed. Etiam euismod dignissim fermentum. Maecenas tincidunt finibus auctor.</p>
                        <p>Proin nec tempus nulla, et euismod nulla. Donec ut sem ipsum. Integer ultricies nisi sed augue interdum porta. Vestibulum ac aliquam risus, ac dictum magna. Fusce lacus arcu, facilisis eu odio nec, varius vestibulum sem.</p>

                        <ul class="styled-list">
                            <li>Nulla venenatis auctor quam, ac porta lectus dictum in</li>
                            <li>Aliquam sodales nisi sit amet lorem</li>
                            <li>Suspendisse vulputate tellus in justo convallis imperdiet</li>
                            <li>Morbi id lorem consequat, sodales mi non</li>
                            <li>Cras fringilla efficitur elementum</li>
                            <li>Nulla venenatis auctor quam, ac porta lectus dictum in</li>
                            <li>Aliquam sodales nisi sit amet lorem</li>
                        </ul>

                        <p>Aliquam sodales facilisis dolor, feugiat elementum tellus condimentum at. Mauris sem nisi, dictum eget facilisis quis, placerat eu nisl. Phasellus consectetur pharetra elit id maximus.  Aliquam facilisis sodales erat, sit amet euismod eros dignissim aliquam.</p>
                    </div>


                    <!--Column-->
                    <div class="col-md-5  col-sm-5 col-xs-12 column">

                        <article class="featured-box">
                            <figure class="image"><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/featured-image-5.jpg" alt=""></a></figure>
                            <h2>Our Missions</h2>
                            <div class="text"><p>Proin nec lacus lacus. Sed vitae consectetur est, et mattis felis. Fusce lacinia nibh vitae fermentum finibus. Donec malesuada efficitur dapibus. Cras euismod nunc tellus.</p></div>
                            <div class="more-link"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="read-more"><span class="fa fa-caret-right"></span> Read More </a></div>
                        </article>

                        <article class="featured-box">
                            <figure class="image"><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/featured-image-6.jpg" alt=""></a></figure>
                            <h2>Our Vision &amp; Plan</h2>
                            <div class="text"><p>Proin nec lacus lacus. Sed vitae consectetur est, et mattis felis. Fusce lacinia nibh vitae fermentum finibus. Donec malesuada efficitur dapibus. Cras euismod nunc tellus.</p></div>
                            <div class="more-link"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="read-more"><span class="fa fa-caret-right"></span> Read More </a></div>
                        </article>

                    </div>

                </div>

            </div>
        </div>
    </div>

</section>


<!--Team Section-->
<section class="team-section">
    <div class="auto-container">
        <div class="sec-title no-underline">
            <h3>MEET OUR EXPERIENCED TEAM</h3>
            <h2>WE ARE EXPERTS IN OUR FIELD</h2>
            <p>Pellentesque semper quis neque dictum hendrerit. Sed nulla ipsum, porttitor pharetra tortor in, <br>consequat imperdiet nisi. Phasellus at quam tristique, cursus tellus vitae, convallis neque. </p>
        </div>
        <div class="row clearfix">

            <!--Column-->
            <div class="col-md-3 col-sm-6 col-xs-12 column wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: hidden; animation-duration: 1500ms; animation-delay: 0ms; animation-name: none;">
                <article class="inner-box">
                    <figure class="image"><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/resource/team-1.jpg" alt=""></a></figure>
                    <div class="content">
                        <div class="title-box">
                            <h4>Timothy Newman</h4>
                            <p>CEO &amp; Co-founder</p>
                        </div>
                        <div class="text">
                            <p>Etiam dignissim sit amet felis ac sagittis. Sed libero arcu, pharetra et ante in, elementum scelerisque arcu. Curabitur sagittis non justo at ultricies odio ac diam finibus. </p>
                        </div>
                        <div class="more-link"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="read-more"><span class="fa fa-caret-right"></span> More Info </a></div>

                    </div>
                </article>
            </div>

            <!--Column-->
            <div class="col-md-3 col-sm-6 col-xs-12 column wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms" style="visibility: hidden; animation-duration: 1500ms; animation-delay: 300ms; animation-name: none;">
                <article class="inner-box">
                    <figure class="image"><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/resource/team-2.jpg" alt=""></a></figure>
                    <div class="content">
                        <div class="title-box">
                            <h4>Jeffrey Morgan</h4>
                            <p>Warehouse Manager</p>
                        </div>
                        <div class="text">
                            <p>Etiam dignissim sit amet felis ac sagittis. Sed libero arcu, pharetra et ante in, elementum scelerisque arcu. Curabitur sagittis non justo at ultricies odio ac diam finibus. </p>
                        </div>
                        <div class="more-link"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="read-more"><span class="fa fa-caret-right"></span> More Info </a></div>

                    </div>
                </article>
            </div>

            <!--Column-->
            <div class="col-md-3 col-sm-6 col-xs-12 column wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms" style="visibility: hidden; animation-duration: 1500ms; animation-delay: 600ms; animation-name: none;">
                <article class="inner-box">
                    <figure class="image"><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/resource/team-3.jpg" alt=""></a></figure>
                    <div class="content">
                        <div class="title-box">
                            <h4>Lori Robertson</h4>
                            <p>Assistant Manager</p>
                        </div>
                        <div class="text">
                            <p>Etiam dignissim sit amet felis ac sagittis. Sed libero arcu, pharetra et ante in, elementum scelerisque arcu. Curabitur sagittis non justo at ultricies odio ac diam finibus. </p>
                        </div>
                        <div class="more-link"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="read-more"><span class="fa fa-caret-right"></span> More Info </a></div>

                    </div>
                </article>
            </div>

            <!--Column-->
            <div class="col-md-3 col-sm-6 col-xs-12 column wow fadeInLeft" data-wow-delay="900ms" data-wow-duration="1500ms" style="visibility: hidden; animation-duration: 1500ms; animation-delay: 900ms; animation-name: none;">
                <article class="inner-box">
                    <figure class="image"><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/resource/team-4.jpg" alt=""></a></figure>
                    <div class="content">
                        <div class="title-box">
                            <h4>Brandon Fowler</h4>
                            <p>Assistant Manager</p>
                        </div>
                        <div class="text">
                            <p>Etiam dignissim sit amet felis ac sagittis. Sed libero arcu, pharetra et ante in, elementum scelerisque arcu. Curabitur sagittis non justo at ultricies odio ac diam finibus. </p>
                        </div>
                        <div class="more-link"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="read-more"><span class="fa fa-caret-right"></span> More Info </a></div>

                    </div>
                </article>
            </div>


        </div>
    </div>
</section>


<!--Our Locations-->
<section class="locations-section" style="background-image:url(/images/background/2.jpg)">
    <div class="auto-container">
        <div class="sec-title">
            <h3>GO BEYOND LOGISTICS</h3>
            <h2>MAKE THE WORLD GO AROUND &amp; REVOLUTION BUSINESS</h2>
            <div class="line"></div>
        </div>

        <div class="inner-box">
            <div class="row clearfix">

                <!--Column-->
                <div class="col-md-3 col-sm-6 col-xs-12 column">
                    <ul>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Austria</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Denmark</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">England</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">France</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Germany</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Italy</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Vatican City</a></li>
                    </ul>
                </div>

                <!--Column-->
                <div class="col-md-3 col-sm-6 col-xs-12 column">
                    <ul>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Netherlands</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Norway</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Portugal</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Russia</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Scotland</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Spain</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Switzerland</a></li>
                    </ul>

                </div>

                <!--Column-->
                <div class="col-md-3 col-sm-6 col-xs-12 column">
                    <ul>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">United Kingdom</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">United States</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Brazil</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Argentina</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Canada</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">India</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Australia</a></li>
                    </ul>
                </div>

                <!--Column-->
                <div class="col-md-3 col-sm-6 col-xs-12 column">
                    <ul>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">China</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Thailand</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Singapore</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">United of Arab Emirates</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Vietnam</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Greece</a></li>
                        <li><a href="http://wp1.themexlab.com/html/autolog/about.html#">Sweden</a></li>
                    </ul>
                </div>

            </div>

            <div class="text-center"><a href="http://wp1.themexlab.com/html/autolog/about.html#" class="theme-btn normal-btn">ALL LOCATIONS</a></div>
        </div>
    </div>
</section>


<!--Client Logos-->
<section class="sponsors-section">
    <div class="auto-container">
        <div class="sec-title">
            <h3>OUR HAPPY CLIENTS</h3>
            <h2>WE BELIEVE IN WHAT YOU BELIEVE</h2>
            <div class="line"></div>
        </div>

        <ul class="slider owl-carousel owl-theme owl-loaded">






            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1190px, 0px, 0px); transition: 0.75s; width: 3569.99px;"><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-1.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-2.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-3.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-4.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-5.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-6.png" alt="" title=""></a></li></div><div class="owl-item active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-1.png" alt="" title=""></a></li></div><div class="owl-item active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-2.png" alt="" title=""></a></li></div><div class="owl-item active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-3.png" alt="" title=""></a></li></div><div class="owl-item active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-4.png" alt="" title=""></a></li></div><div class="owl-item active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-5.png" alt="" title=""></a></li></div><div class="owl-item active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-6.png" alt="" title=""></a></li></div><div class="owl-item cloned active" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-1.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-2.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-3.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-4.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-5.png" alt="" title=""></a></li></div><div class="owl-item cloned" style="width: 178.333px; margin-right: 20px;"><li><a href="http://wp1.themexlab.com/html/autolog/about.html#"><img src="/images/logo-6.png" alt="" title=""></a></li></div></div></div><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div class="owl-dots" style="display: block;"><div class="owl-dot active"><span></span></div></div></div></ul>
    </div>
</section>


