-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 19 2016 г., 09:02
-- Версия сервера: 5.5.44-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `easycms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_admins`
--

CREATE TABLE `easyii_admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_article_categories`
--

CREATE TABLE `easyii_article_categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_article_categories`
--

INSERT INTO `easyii_article_categories` (`category_id`, `title`, `image`, `order_num`, `slug`, `tree`, `lft`, `rgt`, `depth`, `status`) VALUES
(1, 'ewrtwerte', '', 1, 'ewrtwerte', 1, 1, 4, 0, 1),
(2, 'sdfsdgfs', '', 1, 'sdfsdgfs', 1, 2, 3, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_article_items`
--

CREATE TABLE `easyii_article_items` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_carousel`
--

CREATE TABLE `easyii_carousel` (
  `carousel_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_catalog_categories`
--

CREATE TABLE `easyii_catalog_categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `fields` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_catalog_items`
--

CREATE TABLE `easyii_catalog_items` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `available` int(11) DEFAULT '1',
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `data` text NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_catalog_item_data`
--

CREATE TABLE `easyii_catalog_item_data` (
  `data_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_faq`
--

CREATE TABLE `easyii_faq` (
  `faq_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_feedback`
--

CREATE TABLE `easyii_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_files`
--

CREATE TABLE `easyii_files` (
  `file_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_gallery_categories`
--

CREATE TABLE `easyii_gallery_categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_gallery_categories`
--

INSERT INTO `easyii_gallery_categories` (`category_id`, `title`, `image`, `slug`, `tree`, `lft`, `rgt`, `depth`, `order_num`, `status`) VALUES
(1, 'Бизнес сайт', '/uploads/gallery/showcase-graphic-ac3efc87ca.png', 'biznes-sajt', 1, 1, 10, 0, 3, 1),
(5, 'Сайт-каталог', '/uploads/gallery/site-katalog-234ac46e04.png', 'sajt-katalog', 5, 1, 2, 0, 2, 1),
(2, 'Автомобили', '/uploads/gallery/01featuredlargepreview-6f4864bafe.jpg', 'avtomobili', 1, 2, 9, 1, 3, 1),
(3, 'V001', '/uploads/gallery/preview01largepreview-baea1654be.jpg', 'v001', 1, 3, 4, 2, 3, 1),
(4, 'V002', '/uploads/gallery/01featuredlargepreview-43c12e19b1.jpg', 'v002', 1, 5, 6, 2, 3, 1),
(6, 'Интернет-магазин', '/uploads/gallery/circleshop-56246aed37.png', 'internet-magazin', 6, 1, 2, 0, 1, 1),
(7, 'rus', '/uploads/gallery/1-1-b0ddd631f1.jpg', 'rus', 1, 7, 8, 2, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_gallery_categories_lang`
--

CREATE TABLE `easyii_gallery_categories_lang` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_h1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_gallery_categories_lang`
--

INSERT INTO `easyii_gallery_categories_lang` (`id`, `category_id`, `language`, `title`, `seo_title`, `seo_description`, `seo_keywords`, `seo_h1`) VALUES
(1, 1, 'ru', 'Бизнес сайт', '', '', '', ''),
(2, 1, 'en', 'Business website', 'sdfsd', 'sdfs', 'sdfsd', 'sdfs'),
(3, 7, 'ru', 'rus', '', '', '', ''),
(4, 7, 'en', 'eng', '', '', '', ''),
(5, 5, 'ru', 'Сайт-каталог', '', '', '', ''),
(6, 5, 'en', 'Website directory', '', '', '', ''),
(7, 6, 'ru', 'Интернет-магазин', '', '', '', ''),
(8, 6, 'en', 'Online Store', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_guestbook`
--

CREATE TABLE `easyii_guestbook` (
  `guestbook_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_loginform`
--

CREATE TABLE `easyii_loginform` (
  `log_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `user_agent` varchar(1024) NOT NULL,
  `time` int(11) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_loginform`
--

INSERT INTO `easyii_loginform` (`log_id`, `username`, `password`, `ip`, `user_agent`, `time`, `success`) VALUES
(1, 'root', '******', '185.23.165.134', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1454338982, 1),
(2, 'root', '******', '185.23.165.134', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1454404056, 1),
(3, 'root', '******', '185.23.164.204', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36', 1455035443, 1),
(4, 'root', '******', '185.23.164.230', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36', 1455614875, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_migration`
--

CREATE TABLE `easyii_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `easyii_migration`
--

INSERT INTO `easyii_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1454338982),
('m000000_000000_install', 1454338982);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_modules`
--

CREATE TABLE `easyii_modules` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `settings` text NOT NULL,
  `notice` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_modules`
--

INSERT INTO `easyii_modules` (`module_id`, `name`, `class`, `title`, `icon`, `settings`, `notice`, `order_num`, `status`) VALUES
(1, 'article', 'yii\\easyii\\modules\\article\\ArticleModule', 'Статьи', 'pencil', '{"categoryThumb":true,"articleThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":255,"enableTags":true,"itemsInFolder":false}', 0, 65, 1),
(2, 'carousel', 'yii\\easyii\\modules\\carousel\\CarouselModule', 'Карусель', 'picture', '{"enableTitle":true,"enableText":true}', 0, 40, 1),
(3, 'catalog', 'yii\\easyii\\modules\\catalog\\CatalogModule', 'Каталог', 'list-alt', '{"categoryThumb":true,"itemsInFolder":false,"itemThumb":true,"itemPhotos":true,"itemDescription":true,"itemSale":true}', 0, 100, 0),
(4, 'faq', 'yii\\easyii\\modules\\faq\\FaqModule', 'Вопросы и ответы', 'question-sign', '[]', 0, 45, 0),
(5, 'feedback', 'yii\\easyii\\modules\\feedback\\FeedbackModule', 'Обратная связь', 'earphone', '{"mailAdminOnNewFeedback":true,"subjectOnNewFeedback":"New feedback","templateOnNewFeedback":"@easyii\\/modules\\/feedback\\/mail\\/en\\/new_feedback","answerTemplate":"@easyii\\/modules\\/feedback\\/mail\\/en\\/answer","answerSubject":"Answer on your feedback message","answerHeader":"Hello,","answerFooter":"Best regards.","enableTitle":false,"enablePhone":true,"enableCaptcha":false}', 0, 60, 0),
(6, 'file', 'yii\\easyii\\modules\\file\\FileModule', 'Файлы', 'floppy-disk', '[]', 0, 30, 0),
(7, 'gallery', 'yii\\easyii\\modules\\gallery\\GalleryModule', 'Фотогалерея', 'camera', '{"categoryThumb":true,"itemsInFolder":false}', 0, 90, 1),
(8, 'guestbook', 'yii\\easyii\\modules\\guestbook\\GuestbookModule', 'Гостевая книга', 'book', '{"enableTitle":false,"enableEmail":true,"preModerate":false,"enableCaptcha":false,"mailAdminOnNewPost":true,"subjectOnNewPost":"New message in the guestbook.","templateOnNewPost":"@easyii\\/modules\\/guestbook\\/mail\\/en\\/new_post","frontendGuestbookRoute":"\\/guestbook","subjectNotifyUser":"Your post in the guestbook answered","templateNotifyUser":"@easyii\\/modules\\/guestbook\\/mail\\/en\\/notify_user"}', 0, 80, 0),
(9, 'news', 'yii\\easyii\\modules\\news\\NewsModule', 'Новости', 'bullhorn', '{"enableThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":256,"enableTags":true}', 0, 70, 1),
(10, 'page', 'yii\\easyii\\modules\\page\\PageModule', 'Страницы', 'file', '[]', 0, 50, 1),
(11, 'price', 'yii\\easyii\\modules\\price\\PriceModule', 'Цены', 'bullhorn', '{"enableThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":256,"enableTags":true}', 0, 70, 1),
(12, 'shopcart', 'yii\\easyii\\modules\\shopcart\\ShopcartModule', 'Заказы', 'shopping-cart', '{"mailAdminOnNewOrder":true,"subjectOnNewOrder":"New order","templateOnNewOrder":"@easyii\\/modules\\/shopcart\\/mail\\/en\\/new_order","subjectNotifyUser":"Your order status changed","templateNotifyUser":"@easyii\\/modules\\/shopcart\\/mail\\/en\\/notify_user","frontendShopcartRoute":"\\/shopcart\\/order","enablePhone":true,"enableEmail":true}', 0, 120, 0),
(13, 'subscribe', 'yii\\easyii\\modules\\subscribe\\SubscribeModule', 'E-mail рассылка', 'envelope', '[]', 0, 10, 0),
(14, 'text', 'yii\\easyii\\modules\\text\\TextModule', 'Текстовые блоки', 'font', '[]', 0, 20, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_news`
--

CREATE TABLE `easyii_news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_news`
--

INSERT INTO `easyii_news` (`news_id`, `title`, `image`, `short`, `text`, `slug`, `time`, `views`, `status`) VALUES
(1, 'руская новост', '/uploads/news/logo2-01b4204dfe.jpg', 'руссс', '<p>2</p>', 'ruskaya-novost', 1455179472, 8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_news_lang`
--

CREATE TABLE `easyii_news_lang` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short` text NOT NULL,
  `text` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_h1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_news_lang`
--

INSERT INTO `easyii_news_lang` (`id`, `news_id`, `language`, `title`, `short`, `text`, `seo_title`, `seo_description`, `seo_keywords`, `seo_h1`) VALUES
(1, 1, 'ru', 'руская новост', 'руссс', '<p>2</p>', 'rterter', 'ertertebrert', 'ertertewrte', 'ertertertert'),
(2, 1, 'en', 'english news', 'english hhh', '<p>sdfsdfssdf</p>', 'dfsd', 'dsf', 'sdf', 'sdf');

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_pages`
--

CREATE TABLE `easyii_pages` (
  `page_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `parrent_page_id` int(11) DEFAULT NULL,
  `price_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_pages`
--

INSERT INTO `easyii_pages` (`page_id`, `title`, `text`, `slug`, `parrent_page_id`, `price_id`, `lft`, `rgt`, `depth`) VALUES
(5, 'Контакты', '<div class="contact-section" id="contact-section">\r\n<div class="auto-container">\r\n<div class="row clearfix"><!--Content Side-->\r\n<div class="col-md-8 col-sm-7 col-xs-12 column pull-right">\r\n<div class="sec-title">\r\n<h3>Drop us a line</h3>\r\n\r\n<h2>We&rsquo;d love to hear from you</h2>\r\n\r\n<div class="line">&nbsp;</div>\r\n</div>\r\n\r\n<div class="form-box">\r\n<form action="sendemail.php" id="contact-form" method="post">\r\n<div class="row clearfix">\r\n<div class="form-group col-md-6 col-sm-12 col-xs-12">\r\n<div class="field-label">Your Name *</div>\r\n<input name="username" type="text" /></div>\r\n\r\n<div class="form-group col-md-6 col-sm-12 col-xs-12">\r\n<div class="field-label">Your Email *</div>\r\n<input name="email" type="email" /></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12">\r\n<div class="field-label">Subject *</div>\r\n<input name="subject" type="text" /></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12">\r\n<div class="field-label">Message *</div>\r\n<textarea name="message"></textarea></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">SEND US</div>\r\n</div>\r\n</form>\r\n</div>\r\n</div>\r\n<!--Left Side-->\r\n\r\n<div class="col-md-4 col-sm-5 col-xs-12 column pull-left">\r\n<div class="sec-title">\r\n<h3>Contact Info.</h3>\r\n\r\n<h2>Connect with us</h2>\r\n\r\n<div class="line">&nbsp;</div>\r\n</div>\r\n\r\n<div class="info-box">\r\n<h3>Information</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>(+064)-342-68382</p>\r\n\r\n	<p>(+064)-342-68383</p>\r\n	</li>\r\n	<li>\r\n	<p><a href="mailto:info@automation-logistics.com">info@automation-logistics.com</a></p>\r\n	</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h3>Connect With Us</h3>\r\n\r\n<div class="social-links">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="map-container" id="map-location" style="position: relative; overflow: hidden; transform: translateZ(0px); background-color: rgb(229, 227, 223);">\r\n<div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: 359px;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: -1;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: 359px;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=95938" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=67155" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10052!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=59917" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31134" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=888" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=103176" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=4588" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=130076" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=35026" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=71047" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=40609" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10052!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=99638" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=126376" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=44309" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10052!4i256!2m3!1e0!2sm!3i336011980!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=81203" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31326" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=90355" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=80330" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%;">&nbsp;</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style="padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 525px; top: 185px; background-color: white;">\r\n<div style="padding: 0px 0px 10px; font-size: 16px;">Картографические данные</div>\r\n\r\n<div style="font-size: 13px;">Картографические данные &copy; 2016 Google</div>\r\n\r\n<div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" style="-webkit-user-select:none; border:0px; height:492px; left:-2px; margin:0px; max-width:none; padding:0px; position:absolute; top:-336px; width:59px" /></div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 388px; bottom: 0px; width: 212px;">\r\n<div class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">Картографические данныеКартографические данные &copy; 2016 Google</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;">\r\n<div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Картографические данные &copy; 2016 Google</div>\r\n</div>\r\n\r\n<div class="gmnoprint gm-style-cc" style="z-index: 1000001; -webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 154px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/intl/ru-RU_US/help/terms_maps.html" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);" target="_blank">Условия использования</a></div>\r\n</div>\r\n\r\n<div style="width: 25px; height: 25px; margin-top: 10px; overflow: hidden; display: none; margin-right: 14px; position: absolute; top: 0px; right: 0px;"><img class="gm-fullscreen-control" src="http://maps.gstatic.com/mapfiles/api-3/images/sv5.png" style="-webkit-user-select:none; border:0px; height:112px; left:-52px; margin:0px; padding:0px; position:absolute; top:-86px; width:164px" /></div>\r\n\r\n<div class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/maps/@-37.817085,144.955631,14z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;" target="_new" title="Сообщить об ошибке на карте или снимке">Сообщить об ошибке на карте</a></div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;">\r\n<div class="gmnoprint" style="position: absolute; left: 0px; top: 0px;">\r\n<div style="-webkit-user-select: none; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; width: 28px; height: 55px; background-color: rgb(255, 255, 255);">\r\n<div style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;" title="Увеличить">\r\n<div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" style="-webkit-user-select:none; border:0px; height:54px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:120px" /></div>\r\n</div>\r\n\r\n<div style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; top: 0px; background-color: rgb(230, 230, 230);">&nbsp;</div>\r\n\r\n<div style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;" title="Уменьшить">\r\n<div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" style="-webkit-user-select:none; border:0px; height:54px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:-15px; width:120px" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; -webkit-user-select: none; position: absolute; bottom: 42px; right: 28px;">\r\n<div class="gm-svpc" style="box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default; position: absolute; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">\r\n<div style="position: absolute; left: 1px; top: 1px;">&nbsp;</div>\r\n\r\n<div style="position: absolute; left: 1px; top: 1px;">\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-26px; width:215px" /></div>\r\n\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-52px; width:215px" /></div>\r\n\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-78px; width:215px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="display: none; position: absolute;">\r\n<div style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; cursor: pointer; display: none; background-color: rgb(255, 255, 255);" title="Повернуть карту на 90&nbsp;градусов"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" style="-webkit-user-select:none; border:0px; height:54px; left:-141px; margin:0px; max-width:none; padding:0px; position:absolute; top:6px; width:170px" /></div>\r\n\r\n<div class="gm-tilt" style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" style="-webkit-user-select:none; border:0px; height:54px; left:-141px; margin:0px; max-width:none; padding:0px; position:absolute; top:-13px; width:170px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 48px; top: 0px;">\r\n<div class="gm-style-mtc" style="float: left;">\r\n<div style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 29px; font-weight: 500; background-color: rgb(255, 255, 255); background-clip: padding-box;" title="Показать карту с названиями объектов">Карта</div>\r\n\r\n<div style="z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 41px; text-align: left; display: none; background-color: white;">\r\n<div style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);" title="Показать карту рельефа с названиями объектов">\r\n<div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><span style="background-color:rgb(255, 255, 255); font-size:0px"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" style="-webkit-user-select:none; border:0px; height:67px; left:-52px; margin:0px; max-width:none; padding:0px; position:absolute; top:-44px; width:68px" /></span></div>\r\nРельеф</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gm-style-mtc" style="float: left;">\r\n<div style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-left-width: 0px; min-width: 42px; background-color: rgb(255, 255, 255); background-clip: padding-box;" title="Показать спутниковую карту">Спутник</div>\r\n\r\n<div style="z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 41px; text-align: left; display: none; background-color: white;">\r\n<div style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);" title="Показать спутниковую карту с названиями объектов">\r\n<div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><span style="background-color:rgb(255, 255, 255); font-size:0px"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" style="-webkit-user-select:none; border:0px; height:67px; left:-52px; margin:0px; max-width:none; padding:0px; position:absolute; top:-44px; width:68px" /></span></div>\r\nНазвания объектов</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gm-style-cc" style="position: absolute; -webkit-user-select: none; height: 14px; line-height: 14px; right: 281px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">500 м&nbsp;\r\n<div style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 66px;">\r\n<div style="width: 100%; height: 4px; position: absolute; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="width: 4px; height: 8px; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="width: 4px; height: 8px; position: absolute; left: 0px; bottom: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="position: absolute; height: 2px; left: 1px; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n\r\n<div style="position: absolute; width: 2px; height: 6px; left: 1px; top: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n\r\n<div style="width: 2px; height: 6px; position: absolute; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">\r\n<div style="width: 66px; height: 26px; cursor: pointer;"><a href="https://maps.google.com/maps?ll=-37.817085,144.955631&amp;z=14&amp;t=m&amp;hl=ru-RU&amp;gl=US&amp;mapclient=apiv3" style="position: static; overflow: visible; float: none; display: inline;" target="_blank" title="Нажмите, чтобы отобразить эту область в Картах Google"><img src="http://maps.gstatic.com/mapfiles/api-3/images/google4.png" style="-webkit-user-select:none; border:0px; height:26px; left:0px; margin:0px; padding:0px; position:absolute; top:0px; width:66px" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- END INNER -->', 'contacts', 0, 0, NULL, NULL, NULL),
(4, 'О нас', '', 'o-nas', 0, 0, NULL, NULL, NULL),
(7, 'Перевозка грузов по суше', '<h2>&nbsp;</h2>\r\n\r\n<h2>Международные морские контейнерные перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Морские международные перевозки &mdash; одно из основных направлений деятельности компании Farcont.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Более 80% мировых перевозок грузов осуществляется морским транспортом, поскольку именно морские перевозки позволяют доставить ваш груз в любую область мира с максимальной сохранностью и по низким ценам.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Компания Farcont осуществляет морские контейнерные перевозки (Украина) по всем основным направлениям через порты Одесса, Ильичевска, Мариуполя.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Стабильные партнерские отношения с ведущими контейнерными линиями позволяют использовать наиболее конкурентные фрахтовые ставки и выбрать для вас наилучший маршрут и способ доставки груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Контейнерные автомобильные и ж/д перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Автоперевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Перевозки грузов автотранспортом &mdash; наиболее простой и быстрый способ доставки груза по суше, отличающийся также простотой контроля груза во время перевозки, экономичностью и гибкостью планирования маршрута и графика следования. На всем маршруте мы обеспечиваем отслеживание ваших грузов и в любой момент по вашему запросу готовы сообщить об их местонахождении и состоянии.</p>\r\n\r\n<p>Мы осуществляем:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; конвенциональные автотранспортные перевозки по процедуре TIR CARNET</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные контейнерные перевозки</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные перевозки крупногабаритных грузов и техники</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Железнодорожные перевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Железнодорожные грузовые перевозки это наиболее дешёвый и безопасный тип перевозок по суше. Наша компания обладает солидным опытом в организации перевозок железнодорожным транспортом, а оказываемые нами услуги включают в себя:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозка контейнеров в крытых вагонах и полувагонах парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозки крупногабаритных грузов и техники с использованием жд платформ парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; перевозка опасных грузов</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; организацию подачи подвижного состава</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'perevozka-gruzov-po-sushe', 6, 0, NULL, NULL, NULL),
(6, 'Услуги', '<p><strong>&nbsp;<span style="font-size:14px">Вас приветствует транспортно-логистическая компания &laquo;Aurora Trans&raquo;!<br />\r\nЕсли Вам нужно:</span></strong></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">доставить стандартные&nbsp;грузы по Украине;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">экспортировать товары в любую из стран Европы и Азии;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">импортировать товары и грузи в Украину;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">перевезти на большое расстояние негабаритные грузы;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">доставить сборные или сыпучие грузы автомобильным транспортом,и при этом Вы не хотите переплачивать за транспортные услуги, обращайтесь в компанию &laquo;Aurora Trans&raquo;.</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><strong>Компания &laquo;Aurora Trans&raquo; предоставляет:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">транспорт любой тоннажности и вместимости, в том числе и для перевозки негабаритных грузов;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">услуги логистики (оформление разрешительных документов, транспортных накладных, составление оптимальных маршрутов перевозки, услуги по упаковке товаров и т.д.);</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">страхование грузов;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">ответственное хранение грузов;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">таможенно-брокерские услуги.</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><strong>Мы перевозим автотранспортом:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">сыпучие грузы;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">негабаритные грузы и спецтехнику;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">стандартные и палеттированные грузы;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">а&nbsp;также осуществляем переезды офисов и квартир по городам, по Украине, и даже за границу.</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px">&nbsp;<strong>&nbsp;&nbsp;Любая из этих услуг может быть предоставлена заказчику в течении 2 часов с момента заказа!<br />\r\nЗвоните нашим менеджерам, и мы обязательно найдем для Вас грузовую машину по самым выгодным ценам!</strong></span></p>', 'uslugi', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_pages_lang`
--

CREATE TABLE `easyii_pages_lang` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_h1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_pages_lang`
--

INSERT INTO `easyii_pages_lang` (`id`, `page_id`, `language`, `title`, `text`, `seo_title`, `seo_description`, `seo_keywords`, `seo_h1`) VALUES
(7, 4, 'ru', 'О нас', '', '', '', '', ''),
(8, 4, 'en', 'About Us', '', '', '', '', ''),
(9, 5, 'ru', 'Контакты', '<div class="contact-section" id="contact-section">\r\n<div class="auto-container">\r\n<div class="row clearfix"><!--Content Side-->\r\n<div class="col-md-8 col-sm-7 col-xs-12 column pull-right">\r\n<div class="sec-title">\r\n<h3>Drop us a line</h3>\r\n\r\n<h2>We&rsquo;d love to hear from you</h2>\r\n\r\n<div class="line">&nbsp;</div>\r\n</div>\r\n\r\n<div class="form-box">\r\n<form action="sendemail.php" id="contact-form" method="post">\r\n<div class="row clearfix">\r\n<div class="form-group col-md-6 col-sm-12 col-xs-12">\r\n<div class="field-label">Your Name *</div>\r\n<input name="username" type="text" /></div>\r\n\r\n<div class="form-group col-md-6 col-sm-12 col-xs-12">\r\n<div class="field-label">Your Email *</div>\r\n<input name="email" type="email" /></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12">\r\n<div class="field-label">Subject *</div>\r\n<input name="subject" type="text" /></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12">\r\n<div class="field-label">Message *</div>\r\n<textarea name="message"></textarea></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">SEND US</div>\r\n</div>\r\n</form>\r\n</div>\r\n</div>\r\n<!--Left Side-->\r\n\r\n<div class="col-md-4 col-sm-5 col-xs-12 column pull-left">\r\n<div class="sec-title">\r\n<h3>Contact Info.</h3>\r\n\r\n<h2>Connect with us</h2>\r\n\r\n<div class="line">&nbsp;</div>\r\n</div>\r\n\r\n<div class="info-box">\r\n<h3>Information</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>(+064)-342-68382</p>\r\n\r\n	<p>(+064)-342-68383</p>\r\n	</li>\r\n	<li>\r\n	<p><a href="mailto:info@automation-logistics.com">info@automation-logistics.com</a></p>\r\n	</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h3>Connect With Us</h3>\r\n\r\n<div class="social-links">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="map-container" id="map-location" style="position: relative; overflow: hidden; transform: translateZ(0px); background-color: rgb(229, 227, 223);">\r\n<div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: 359px;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: -1;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: 359px;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=95938" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=67155" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10052!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=59917" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31134" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=888" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=103176" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=4588" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=130076" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=35026" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=71047" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=40609" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10052!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=99638" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=126376" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=44309" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10052!4i256!2m3!1e0!2sm!3i336011980!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=81203" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31326" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=90355" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=80330" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%;">&nbsp;</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style="padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 525px; top: 185px; background-color: white;">\r\n<div style="padding: 0px 0px 10px; font-size: 16px;">Картографические данные</div>\r\n\r\n<div style="font-size: 13px;">Картографические данные &copy; 2016 Google</div>\r\n\r\n<div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" style="-webkit-user-select:none; border:0px; height:492px; left:-2px; margin:0px; max-width:none; padding:0px; position:absolute; top:-336px; width:59px" /></div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 388px; bottom: 0px; width: 212px;">\r\n<div class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">Картографические данныеКартографические данные &copy; 2016 Google</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;">\r\n<div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Картографические данные &copy; 2016 Google</div>\r\n</div>\r\n\r\n<div class="gmnoprint gm-style-cc" style="z-index: 1000001; -webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 154px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/intl/ru-RU_US/help/terms_maps.html" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);" target="_blank">Условия использования</a></div>\r\n</div>\r\n\r\n<div style="width: 25px; height: 25px; margin-top: 10px; overflow: hidden; display: none; margin-right: 14px; position: absolute; top: 0px; right: 0px;"><img class="gm-fullscreen-control" src="http://maps.gstatic.com/mapfiles/api-3/images/sv5.png" style="-webkit-user-select:none; border:0px; height:112px; left:-52px; margin:0px; padding:0px; position:absolute; top:-86px; width:164px" /></div>\r\n\r\n<div class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/maps/@-37.817085,144.955631,14z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;" target="_new" title="Сообщить об ошибке на карте или снимке">Сообщить об ошибке на карте</a></div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;">\r\n<div class="gmnoprint" style="position: absolute; left: 0px; top: 0px;">\r\n<div style="-webkit-user-select: none; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; width: 28px; height: 55px; background-color: rgb(255, 255, 255);">\r\n<div style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;" title="Увеличить">\r\n<div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" style="-webkit-user-select:none; border:0px; height:54px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:120px" /></div>\r\n</div>\r\n\r\n<div style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; top: 0px; background-color: rgb(230, 230, 230);">&nbsp;</div>\r\n\r\n<div style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;" title="Уменьшить">\r\n<div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" style="-webkit-user-select:none; border:0px; height:54px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:-15px; width:120px" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; -webkit-user-select: none; position: absolute; bottom: 42px; right: 28px;">\r\n<div class="gm-svpc" style="box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default; position: absolute; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">\r\n<div style="position: absolute; left: 1px; top: 1px;">&nbsp;</div>\r\n\r\n<div style="position: absolute; left: 1px; top: 1px;">\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-26px; width:215px" /></div>\r\n\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-52px; width:215px" /></div>\r\n\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-78px; width:215px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="display: none; position: absolute;">\r\n<div style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; cursor: pointer; display: none; background-color: rgb(255, 255, 255);" title="Повернуть карту на 90&nbsp;градусов"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" style="-webkit-user-select:none; border:0px; height:54px; left:-141px; margin:0px; max-width:none; padding:0px; position:absolute; top:6px; width:170px" /></div>\r\n\r\n<div class="gm-tilt" style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" style="-webkit-user-select:none; border:0px; height:54px; left:-141px; margin:0px; max-width:none; padding:0px; position:absolute; top:-13px; width:170px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 48px; top: 0px;">\r\n<div class="gm-style-mtc" style="float: left;">\r\n<div style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 29px; font-weight: 500; background-color: rgb(255, 255, 255); background-clip: padding-box;" title="Показать карту с названиями объектов">Карта</div>\r\n\r\n<div style="z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 41px; text-align: left; display: none; background-color: white;">\r\n<div style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);" title="Показать карту рельефа с названиями объектов">\r\n<div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><span style="background-color:rgb(255, 255, 255); font-size:0px"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" style="-webkit-user-select:none; border:0px; height:67px; left:-52px; margin:0px; max-width:none; padding:0px; position:absolute; top:-44px; width:68px" /></span></div>\r\nРельеф</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gm-style-mtc" style="float: left;">\r\n<div style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-left-width: 0px; min-width: 42px; background-color: rgb(255, 255, 255); background-clip: padding-box;" title="Показать спутниковую карту">Спутник</div>\r\n\r\n<div style="z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 41px; text-align: left; display: none; background-color: white;">\r\n<div style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);" title="Показать спутниковую карту с названиями объектов">\r\n<div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><span style="background-color:rgb(255, 255, 255); font-size:0px"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" style="-webkit-user-select:none; border:0px; height:67px; left:-52px; margin:0px; max-width:none; padding:0px; position:absolute; top:-44px; width:68px" /></span></div>\r\nНазвания объектов</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gm-style-cc" style="position: absolute; -webkit-user-select: none; height: 14px; line-height: 14px; right: 281px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">500 м&nbsp;\r\n<div style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 66px;">\r\n<div style="width: 100%; height: 4px; position: absolute; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="width: 4px; height: 8px; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="width: 4px; height: 8px; position: absolute; left: 0px; bottom: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="position: absolute; height: 2px; left: 1px; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n\r\n<div style="position: absolute; width: 2px; height: 6px; left: 1px; top: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n\r\n<div style="width: 2px; height: 6px; position: absolute; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">\r\n<div style="width: 66px; height: 26px; cursor: pointer;"><a href="https://maps.google.com/maps?ll=-37.817085,144.955631&amp;z=14&amp;t=m&amp;hl=ru-RU&amp;gl=US&amp;mapclient=apiv3" style="position: static; overflow: visible; float: none; display: inline;" target="_blank" title="Нажмите, чтобы отобразить эту область в Картах Google"><img src="http://maps.gstatic.com/mapfiles/api-3/images/google4.png" style="-webkit-user-select:none; border:0px; height:26px; left:0px; margin:0px; padding:0px; position:absolute; top:0px; width:66px" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- END INNER -->', '', '', '', '');
INSERT INTO `easyii_pages_lang` (`id`, `page_id`, `language`, `title`, `text`, `seo_title`, `seo_description`, `seo_keywords`, `seo_h1`) VALUES
(10, 5, 'en', 'Contacts', '<div class="contact-section" id="contact-section">\r\n<div class="auto-container">\r\n<div class="row clearfix"><!--Content Side-->\r\n<div class="col-md-8 col-sm-7 col-xs-12 column pull-right">\r\n<div class="sec-title">\r\n<h3>Drop us a line</h3>\r\n\r\n<h2>We&rsquo;d love to hear from you</h2>\r\n\r\n<div class="line">&nbsp;</div>\r\n</div>\r\n\r\n<div class="form-box">\r\n<form action="sendemail.php" id="contact-form" method="post">\r\n<div class="row clearfix">\r\n<div class="form-group col-md-6 col-sm-12 col-xs-12">\r\n<div class="field-label">Your Name *</div>\r\n<input name="username" type="text" /></div>\r\n\r\n<div class="form-group col-md-6 col-sm-12 col-xs-12">\r\n<div class="field-label">Your Email *</div>\r\n<input name="email" type="email" /></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12">\r\n<div class="field-label">Subject *</div>\r\n<input name="subject" type="text" /></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12">\r\n<div class="field-label">Message *</div>\r\n<textarea name="message"></textarea></div>\r\n\r\n<div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">SEND US</div>\r\n</div>\r\n</form>\r\n</div>\r\n</div>\r\n<!--Left Side-->\r\n\r\n<div class="col-md-4 col-sm-5 col-xs-12 column pull-left">\r\n<div class="sec-title">\r\n<h3>Contact Info.</h3>\r\n\r\n<h2>Connect with us</h2>\r\n\r\n<div class="line">&nbsp;</div>\r\n</div>\r\n\r\n<div class="info-box">\r\n<h3>Information</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>(+064)-342-68382</p>\r\n\r\n	<p>(+064)-342-68383</p>\r\n	</li>\r\n	<li>\r\n	<p><a href="mailto:info@automation-logistics.com">info@automation-logistics.com</a></p>\r\n	</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h3>Connect With Us</h3>\r\n\r\n<div class="social-links">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="map-container" id="map-location" style="position: relative; overflow: hidden; transform: translateZ(0px); background-color: rgb(229, 227, 223);">\r\n<div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 395px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 651px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 907px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 139px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -117px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 1163px; top: 359px;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: -1;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 395px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 651px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 907px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 139px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: 103px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: 359px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -117px; top: -153px;">&nbsp;</div>\r\n\r\n<div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 1163px; top: 359px;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=95938" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=67155" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10052!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=59917" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31134" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 395px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14788!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=888" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 651px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14789!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=103176" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=4588" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=130076" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=35026" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 907px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14790!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=71047" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=40609" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 139px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14787!3i10052!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=99638" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10053!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=126376" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: 103px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10053!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=44309" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10052!4i256!2m3!1e0!2sm!3i336011980!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=81203" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10054!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31326" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 1163px; top: -153px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14791!3i10052!4i256!2m3!1e0!2sm!3i336011693!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=90355" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: -117px; top: 359px; transition: opacity 200ms ease-out;"><img alt="" src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i14786!3i10054!4i256!2m3!1e0!2sm!3i336011813!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=80330" style="-webkit-user-select:none; border:0px; height:256px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:256px" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%;">&nbsp;</div>\r\n\r\n<div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;">&nbsp;</div>\r\n\r\n<div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style="padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 525px; top: 185px; background-color: white;">\r\n<div style="padding: 0px 0px 10px; font-size: 16px;">Картографические данные</div>\r\n\r\n<div style="font-size: 13px;">Картографические данные &copy; 2016 Google</div>\r\n\r\n<div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" style="-webkit-user-select:none; border:0px; height:492px; left:-2px; margin:0px; max-width:none; padding:0px; position:absolute; top:-336px; width:59px" /></div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 388px; bottom: 0px; width: 212px;">\r\n<div class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">Картографические данныеКартографические данные &copy; 2016 Google</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;">\r\n<div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Картографические данные &copy; 2016 Google</div>\r\n</div>\r\n\r\n<div class="gmnoprint gm-style-cc" style="z-index: 1000001; -webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 154px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/intl/ru-RU_US/help/terms_maps.html" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);" target="_blank">Условия использования</a></div>\r\n</div>\r\n\r\n<div style="width: 25px; height: 25px; margin-top: 10px; overflow: hidden; display: none; margin-right: 14px; position: absolute; top: 0px; right: 0px;"><img class="gm-fullscreen-control" src="http://maps.gstatic.com/mapfiles/api-3/images/sv5.png" style="-webkit-user-select:none; border:0px; height:112px; left:-52px; margin:0px; padding:0px; position:absolute; top:-86px; width:164px" /></div>\r\n\r\n<div class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/maps/@-37.817085,144.955631,14z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;" target="_new" title="Сообщить об ошибке на карте или снимке">Сообщить об ошибке на карте</a></div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;">\r\n<div class="gmnoprint" style="position: absolute; left: 0px; top: 0px;">\r\n<div style="-webkit-user-select: none; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; width: 28px; height: 55px; background-color: rgb(255, 255, 255);">\r\n<div style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;" title="Увеличить">\r\n<div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" style="-webkit-user-select:none; border:0px; height:54px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:0px; width:120px" /></div>\r\n</div>\r\n\r\n<div style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; top: 0px; background-color: rgb(230, 230, 230);">&nbsp;</div>\r\n\r\n<div style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;" title="Уменьшить">\r\n<div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" style="-webkit-user-select:none; border:0px; height:54px; left:0px; margin:0px; max-width:none; padding:0px; position:absolute; top:-15px; width:120px" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; -webkit-user-select: none; position: absolute; bottom: 42px; right: 28px;">\r\n<div class="gm-svpc" style="box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default; position: absolute; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">\r\n<div style="position: absolute; left: 1px; top: 1px;">&nbsp;</div>\r\n\r\n<div style="position: absolute; left: 1px; top: 1px;">\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-26px; width:215px" /></div>\r\n\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-52px; width:215px" /></div>\r\n\r\n<div style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" style="-webkit-user-select:none; border:0px; height:835px; left:-147px; margin:0px; max-width:none; padding:0px; position:absolute; top:-78px; width:215px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="display: none; position: absolute;">\r\n<div style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; cursor: pointer; display: none; background-color: rgb(255, 255, 255);" title="Повернуть карту на 90&nbsp;градусов"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" style="-webkit-user-select:none; border:0px; height:54px; left:-141px; margin:0px; max-width:none; padding:0px; position:absolute; top:6px; width:170px" /></div>\r\n\r\n<div class="gm-tilt" style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" style="-webkit-user-select:none; border:0px; height:54px; left:-141px; margin:0px; max-width:none; padding:0px; position:absolute; top:-13px; width:170px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class="gmnoprint" style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 48px; top: 0px;">\r\n<div class="gm-style-mtc" style="float: left;">\r\n<div style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 29px; font-weight: 500; background-color: rgb(255, 255, 255); background-clip: padding-box;" title="Показать карту с названиями объектов">Карта</div>\r\n\r\n<div style="z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 41px; text-align: left; display: none; background-color: white;">\r\n<div style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);" title="Показать карту рельефа с названиями объектов">\r\n<div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><span style="background-color:rgb(255, 255, 255); font-size:0px"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" style="-webkit-user-select:none; border:0px; height:67px; left:-52px; margin:0px; max-width:none; padding:0px; position:absolute; top:-44px; width:68px" /></span></div>\r\nРельеф</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gm-style-mtc" style="float: left;">\r\n<div style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-left-width: 0px; min-width: 42px; background-color: rgb(255, 255, 255); background-clip: padding-box;" title="Показать спутниковую карту">Спутник</div>\r\n\r\n<div style="z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 41px; text-align: left; display: none; background-color: white;">\r\n<div style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);" title="Показать спутниковую карту с названиями объектов">\r\n<div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><span style="background-color:rgb(255, 255, 255); font-size:0px"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" style="-webkit-user-select:none; border:0px; height:67px; left:-52px; margin:0px; max-width:none; padding:0px; position:absolute; top:-44px; width:68px" /></span></div>\r\nНазвания объектов</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gm-style-cc" style="position: absolute; -webkit-user-select: none; height: 14px; line-height: 14px; right: 281px; bottom: 0px;">\r\n<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">\r\n<div style="width: 1px;">&nbsp;</div>\r\n\r\n<div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">500 м&nbsp;\r\n<div style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 66px;">\r\n<div style="width: 100%; height: 4px; position: absolute; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="width: 4px; height: 8px; left: 0px; top: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="width: 4px; height: 8px; position: absolute; left: 0px; bottom: 0px; background-color: rgb(255, 255, 255);">&nbsp;</div>\r\n\r\n<div style="position: absolute; height: 2px; left: 1px; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n\r\n<div style="position: absolute; width: 2px; height: 6px; left: 1px; top: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n\r\n<div style="width: 2px; height: 6px; position: absolute; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">\r\n<div style="width: 66px; height: 26px; cursor: pointer;"><a href="https://maps.google.com/maps?ll=-37.817085,144.955631&amp;z=14&amp;t=m&amp;hl=ru-RU&amp;gl=US&amp;mapclient=apiv3" style="position: static; overflow: visible; float: none; display: inline;" target="_blank" title="Нажмите, чтобы отобразить эту область в Картах Google"><img src="http://maps.gstatic.com/mapfiles/api-3/images/google4.png" style="-webkit-user-select:none; border:0px; height:26px; left:0px; margin:0px; padding:0px; position:absolute; top:0px; width:66px" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- END INNER -->', '', '', '', ''),
(11, 6, 'ru', 'Услуги', '<p><strong>&nbsp;<span style="font-size:14px">Вас приветствует транспортно-логистическая компания &laquo;Aurora Trans&raquo;!<br />\r\nЕсли Вам нужно:</span></strong></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">доставить стандартные&nbsp;грузы по Украине;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">экспортировать товары в любую из стран Европы и Азии;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">импортировать товары и грузи в Украину;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">перевезти на большое расстояние негабаритные грузы;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">доставить сборные или сыпучие грузы автомобильным транспортом,и при этом Вы не хотите переплачивать за транспортные услуги, обращайтесь в компанию &laquo;Aurora Trans&raquo;.</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><strong>Компания &laquo;Aurora Trans&raquo; предоставляет:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">транспорт любой тоннажности и вместимости, в том числе и для перевозки негабаритных грузов;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">услуги логистики (оформление разрешительных документов, транспортных накладных, составление оптимальных маршрутов перевозки, услуги по упаковке товаров и т.д.);</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">страхование грузов;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">ответственное хранение грузов;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">таможенно-брокерские услуги.</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><strong>Мы перевозим автотранспортом:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">сыпучие грузы;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">негабаритные грузы и спецтехнику;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">стандартные и палеттированные грузы;</span></span></li>\r\n	<li><span style="font-size:14px"><span style="color:rgb(0, 0, 0)">а&nbsp;также осуществляем переезды офисов и квартир по городам, по Украине, и даже за границу.</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px">&nbsp;<strong>&nbsp;&nbsp;Любая из этих услуг может быть предоставлена заказчику в течении 2 часов с момента заказа!<br />\r\nЗвоните нашим менеджерам, и мы обязательно найдем для Вас грузовую машину по самым выгодным ценам!</strong></span></p>', '', '', '', ''),
(12, 6, 'en', 'Services', '<p>ru</p>\r\n\r\n<p>No matter if it&rsquo;s your first or fifteenth store, creating a new website is always an exciting but nerve-racking task. With all the time, effort and resources that you&rsquo;ve undoubtedly put into your new ecommerce store, the last thing you want is for it all to fall apart on launch day.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Now before you start to panic: stop, breathe, relax. These 7 quick and easy checks will make sure that your store is up to scratch and ready for customers when your site goes live.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Tracking codes &amp; analytics</p>\r\n\r\n<p>When your site goes live it&rsquo;s extremely important to see how many people are visiting your site and where they&rsquo;re coming from. Remember to set up&nbsp;<a href="http://www.opencart.com/index.php?route=feature/blog/info&amp;blog_id=121" style="color: rgb(35, 161, 209); cursor: pointer;" target="_top">analytics</a>&nbsp;for your new store (and double check that it&rsquo;s working!) so that you have a record of your store&rsquo;s data from day one.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Take the opportunity to install and set up any tracking codes or pixels that you may use in the future. Even if you&rsquo;re not looking to use ads at the moment, it&rsquo;s great to have data recording for when you do.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. Checkout &amp; payment process&nbsp;</p>\r\n\r\n<p>Your new ecommerce store has one key purpose: selling your products. If your checkout or payment process is broken, you&rsquo;re going to be left with frustrated customers and a rapid fall in profits. Walk through each step of your checkout process (as a guest and logged in) to check for any possible errors and place a test order to ensure you have no issues will processing payments.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Cross browser &amp; mobile checks</p>\r\n\r\n<p>Don&rsquo;t make the mistake of assuming that your customers will be accessing your website using the same setup as you. With various browsers, devices and screen sizes available, you need to ensure that your website looks fantastic and works well no matter how it&rsquo;s being viewed.&nbsp;<a href="https://www.browserstack.com/" style="color: rgb(35, 161, 209); cursor: pointer;" target="_blank">Browserstack</a>&nbsp;is a great tool for checking your site on a wide range of browsers and devices.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. PageSpeed</p>\r\n\r\n<p>A slow loading site can not only damage your chances of ranking highly on search engine results pages, but it can also damage your relationship with your customers. Before your new website is released to the public, run a pagespeed check -&nbsp;<a href="https://developers.google.com/speed/pagespeed/insights/" style="color: rgb(35, 161, 209); cursor: pointer;" target="_blank">Google has a fantastic free tool</a>&nbsp;which will show any changes you need to make in order to speed up your site.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. SSL Certificate</p>\r\n\r\n<p>SSL is used to encrypt data when it is sent between your website and your customer&rsquo;s browser - this is essential for ecommerce stores where you&rsquo;ll require sensitive data (e.g. credit card details) from your customers. Ensure that you have an SSL Certificate for when you launch your website - not only will it protect you and your customers, but it will also give your brand a trusted image.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6. Is it easy to contact you?</p>\r\n\r\n<p>On the chance that something isn&rsquo;t quite right with your site, you need to make it as easy as possible for your customers to get in touch with you. Make your contact page easy to find in your navigation or footer and include a frequently asked questions page to reduce the number of enquiries. If you use a contact form check that the message sends correctly and consider using a live chat module too.&nbsp;</p>\r\n\r\n<p>7. Submit your website to Google</p>\r\n\r\n<p>Through&nbsp;<a href="https://www.google.com/webmasters/tools/" style="color: rgb(35, 161, 209); cursor: pointer;" target="_blank">Google Search Console</a>&nbsp;(formerly Google Webmaster Tools) you can submit your new website URL to Google. Submitting your site can encourage Google to crawl and index your site sooner, making it easier for you to start showing in search engine results. Remember to submit your sitemap too - sitemaps aren&rsquo;t mandatory, but they make Google&rsquo;s job much easier when crawling your site.</p>', '', '', '', ''),
(13, 4, 'ge', 'ჩვენს შესახებ', '', '', '', '', ''),
(14, 7, 'ru', 'Перевозка грузов по суше', '<h2>&nbsp;</h2>\r\n\r\n<h2>Международные морские контейнерные перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Морские международные перевозки &mdash; одно из основных направлений деятельности компании Farcont.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Более 80% мировых перевозок грузов осуществляется морским транспортом, поскольку именно морские перевозки позволяют доставить ваш груз в любую область мира с максимальной сохранностью и по низким ценам.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Компания Farcont осуществляет морские контейнерные перевозки (Украина) по всем основным направлениям через порты Одесса, Ильичевска, Мариуполя.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Стабильные партнерские отношения с ведущими контейнерными линиями позволяют использовать наиболее конкурентные фрахтовые ставки и выбрать для вас наилучший маршрут и способ доставки груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Контейнерные автомобильные и ж/д перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Автоперевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Перевозки грузов автотранспортом &mdash; наиболее простой и быстрый способ доставки груза по суше, отличающийся также простотой контроля груза во время перевозки, экономичностью и гибкостью планирования маршрута и графика следования. На всем маршруте мы обеспечиваем отслеживание ваших грузов и в любой момент по вашему запросу готовы сообщить об их местонахождении и состоянии.</p>\r\n\r\n<p>Мы осуществляем:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; конвенциональные автотранспортные перевозки по процедуре TIR CARNET</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные контейнерные перевозки</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные перевозки крупногабаритных грузов и техники</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Железнодорожные перевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Железнодорожные грузовые перевозки это наиболее дешёвый и безопасный тип перевозок по суше. Наша компания обладает солидным опытом в организации перевозок железнодорожным транспортом, а оказываемые нами услуги включают в себя:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозка контейнеров в крытых вагонах и полувагонах парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозки крупногабаритных грузов и техники с использованием жд платформ парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; перевозка опасных грузов</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; организацию подачи подвижного состава</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '', '', '', ''),
(15, 7, 'en', 'Transportation of goods by land', '<h2>&nbsp;</h2>\r\n\r\n<h2>Международные морские контейнерные перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Морские международные перевозки &mdash; одно из основных направлений деятельности компании Farcont.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Более 80% мировых перевозок грузов осуществляется морским транспортом, поскольку именно морские перевозки позволяют доставить ваш груз в любую область мира с максимальной сохранностью и по низким ценам.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Компания Farcont осуществляет морские контейнерные перевозки (Украина) по всем основным направлениям через порты Одесса, Ильичевска, Мариуполя.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Стабильные партнерские отношения с ведущими контейнерными линиями позволяют использовать наиболее конкурентные фрахтовые ставки и выбрать для вас наилучший маршрут и способ доставки груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Контейнерные автомобильные и ж/д перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Автоперевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Перевозки грузов автотранспортом &mdash; наиболее простой и быстрый способ доставки груза по суше, отличающийся также простотой контроля груза во время перевозки, экономичностью и гибкостью планирования маршрута и графика следования. На всем маршруте мы обеспечиваем отслеживание ваших грузов и в любой момент по вашему запросу готовы сообщить об их местонахождении и состоянии.</p>\r\n\r\n<p>Мы осуществляем:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; конвенциональные автотранспортные перевозки по процедуре TIR CARNET</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные контейнерные перевозки</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные перевозки крупногабаритных грузов и техники</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Железнодорожные перевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Железнодорожные грузовые перевозки это наиболее дешёвый и безопасный тип перевозок по суше. Наша компания обладает солидным опытом в организации перевозок железнодорожным транспортом, а оказываемые нами услуги включают в себя:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозка контейнеров в крытых вагонах и полувагонах парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозки крупногабаритных грузов и техники с использованием жд платформ парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; перевозка опасных грузов</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; организацию подачи подвижного состава</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '', '', '', '');
INSERT INTO `easyii_pages_lang` (`id`, `page_id`, `language`, `title`, `text`, `seo_title`, `seo_description`, `seo_keywords`, `seo_h1`) VALUES
(16, 7, 'ge', 'ტვირთების სახმელეთო', '<h2>&nbsp;</h2>\r\n\r\n<h2>Международные морские контейнерные перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Морские международные перевозки &mdash; одно из основных направлений деятельности компании Farcont.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Более 80% мировых перевозок грузов осуществляется морским транспортом, поскольку именно морские перевозки позволяют доставить ваш груз в любую область мира с максимальной сохранностью и по низким ценам.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Компания Farcont осуществляет морские контейнерные перевозки (Украина) по всем основным направлениям через порты Одесса, Ильичевска, Мариуполя.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Стабильные партнерские отношения с ведущими контейнерными линиями позволяют использовать наиболее конкурентные фрахтовые ставки и выбрать для вас наилучший маршрут и способ доставки груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Контейнерные автомобильные и ж/д перевозки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Автоперевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Перевозки грузов автотранспортом &mdash; наиболее простой и быстрый способ доставки груза по суше, отличающийся также простотой контроля груза во время перевозки, экономичностью и гибкостью планирования маршрута и графика следования. На всем маршруте мы обеспечиваем отслеживание ваших грузов и в любой момент по вашему запросу готовы сообщить об их местонахождении и состоянии.</p>\r\n\r\n<p>Мы осуществляем:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; конвенциональные автотранспортные перевозки по процедуре TIR CARNET</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные контейнерные перевозки</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; автотранспортные перевозки крупногабаритных грузов и техники</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Железнодорожные перевозки</strong></p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Железнодорожные грузовые перевозки это наиболее дешёвый и безопасный тип перевозок по суше. Наша компания обладает солидным опытом в организации перевозок железнодорожным транспортом, а оказываемые нами услуги включают в себя:</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозка контейнеров в крытых вагонах и полувагонах парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; железнодорожные перевозки крупногабаритных грузов и техники с использованием жд платформ парка УЗ</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; перевозка опасных грузов</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; организацию подачи подвижного состава</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; оформление транспортной документации и контроль за местонахождением и состоянием груза.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '', '', '', ''),
(17, 6, 'ge', 'მომსახურება', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_photos`
--

CREATE TABLE `easyii_photos` (
  `photo_id` int(11) NOT NULL,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_photos`
--

INSERT INTO `easyii_photos` (`photo_id`, `class`, `item_id`, `image`, `description`, `order_num`) VALUES
(1, 'yii\\easyii\\modules\\gallery\\models\\Category', 3, '/uploads/photos/01featuredlargepreview-a2bfed886a.jpg', '', 1),
(2, 'yii\\easyii\\modules\\gallery\\models\\Category', 3, '/uploads/photos/preview01largepreview-5c941a4af5.jpg', '', 2),
(3, 'yii\\easyii\\modules\\gallery\\models\\Category', 4, '/uploads/photos/4-ad56531363.jpg', '', 3),
(4, 'yii\\easyii\\modules\\gallery\\models\\Category', 4, '/uploads/photos/5-6e7f9c4d89.jpg', '', 4),
(5, 'yii\\easyii\\modules\\gallery\\models\\Category', 3, '/uploads/photos/iitmail1-01af149796.png', 'ru', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_photos_lang`
--

CREATE TABLE `easyii_photos_lang` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `description` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_photos_lang`
--

INSERT INTO `easyii_photos_lang` (`id`, `photo_id`, `language`, `description`) VALUES
(1, 5, 'ru', 'ru'),
(2, 5, 'en', 'fsdrteeqw');

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_price`
--

CREATE TABLE `easyii_price` (
  `price_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_seotext`
--

CREATE TABLE `easyii_seotext` (
  `seotext_id` int(11) NOT NULL,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_settings`
--

CREATE TABLE `easyii_settings` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `visibility` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `easyii_settings`
--

INSERT INTO `easyii_settings` (`setting_id`, `name`, `title`, `value`, `visibility`) VALUES
(1, 'easyii_version', 'EasyiiCMS version', '0.9', 0),
(2, 'recaptcha_key', 'ReCaptcha key', '', 1),
(3, 'password_salt', 'Password salt', 'PMADZdSiHO22lFG8kgKDxV2kOBA6hc_7', 0),
(4, 'root_auth_key', 'Root authorization key', 'q8Qx9w0BA2kNiTFQs7ZHzHW5a_hxx89S', 0),
(5, 'root_password', 'Пароль разработчика', '6b7d6f4caff814b40dd60c6d68a3f53f10922969', 1),
(6, 'auth_time', 'Время авторизации', '86400', 1),
(7, 'robot_email', 'E-mail рассыльщика', 'noreply@easycms.oisplace.com', 1),
(8, 'admin_email', 'E-mail администратора', 'admin@oisplace.com', 2),
(9, 'recaptcha_secret', 'ReCaptcha secret', '', 1),
(10, 'toolbar_position', 'Позиция панели на сайте ("top" or "bottom")', 'top', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_shopcart_goods`
--

CREATE TABLE `easyii_shopcart_goods` (
  `good_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `options` varchar(255) NOT NULL,
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_shopcart_orders`
--

CREATE TABLE `easyii_shopcart_orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `remark` varchar(1024) NOT NULL,
  `access_token` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_subscribe_history`
--

CREATE TABLE `easyii_subscribe_history` (
  `history_id` int(11) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `sent` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_subscribe_subscribers`
--

CREATE TABLE `easyii_subscribe_subscribers` (
  `subscriber_id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_tags`
--

CREATE TABLE `easyii_tags` (
  `tag_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_tags_assign`
--

CREATE TABLE `easyii_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `easyii_texts`
--

CREATE TABLE `easyii_texts` (
  `text_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `easyii_admins`
--
ALTER TABLE `easyii_admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `access_token` (`access_token`);

--
-- Индексы таблицы `easyii_article_categories`
--
ALTER TABLE `easyii_article_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_article_items`
--
ALTER TABLE `easyii_article_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_carousel`
--
ALTER TABLE `easyii_carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Индексы таблицы `easyii_catalog_categories`
--
ALTER TABLE `easyii_catalog_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_catalog_items`
--
ALTER TABLE `easyii_catalog_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_catalog_item_data`
--
ALTER TABLE `easyii_catalog_item_data`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `item_id_name` (`item_id`,`name`),
  ADD KEY `value` (`value`(300));

--
-- Индексы таблицы `easyii_faq`
--
ALTER TABLE `easyii_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Индексы таблицы `easyii_feedback`
--
ALTER TABLE `easyii_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Индексы таблицы `easyii_files`
--
ALTER TABLE `easyii_files`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_gallery_categories`
--
ALTER TABLE `easyii_gallery_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_gallery_categories_lang`
--
ALTER TABLE `easyii_gallery_categories_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `easyii_guestbook`
--
ALTER TABLE `easyii_guestbook`
  ADD PRIMARY KEY (`guestbook_id`);

--
-- Индексы таблицы `easyii_loginform`
--
ALTER TABLE `easyii_loginform`
  ADD PRIMARY KEY (`log_id`);

--
-- Индексы таблицы `easyii_migration`
--
ALTER TABLE `easyii_migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `easyii_modules`
--
ALTER TABLE `easyii_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `easyii_news`
--
ALTER TABLE `easyii_news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_news_lang`
--
ALTER TABLE `easyii_news_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `easyii_pages`
--
ALTER TABLE `easyii_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_pages_lang`
--
ALTER TABLE `easyii_pages_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`page_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `easyii_photos`
--
ALTER TABLE `easyii_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `model_item` (`class`,`item_id`);

--
-- Индексы таблицы `easyii_photos_lang`
--
ALTER TABLE `easyii_photos_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `easyii_price`
--
ALTER TABLE `easyii_price`
  ADD PRIMARY KEY (`price_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `easyii_seotext`
--
ALTER TABLE `easyii_seotext`
  ADD PRIMARY KEY (`seotext_id`),
  ADD UNIQUE KEY `model_item` (`class`,`item_id`);

--
-- Индексы таблицы `easyii_settings`
--
ALTER TABLE `easyii_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `easyii_shopcart_goods`
--
ALTER TABLE `easyii_shopcart_goods`
  ADD PRIMARY KEY (`good_id`);

--
-- Индексы таблицы `easyii_shopcart_orders`
--
ALTER TABLE `easyii_shopcart_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `easyii_subscribe_history`
--
ALTER TABLE `easyii_subscribe_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Индексы таблицы `easyii_subscribe_subscribers`
--
ALTER TABLE `easyii_subscribe_subscribers`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `easyii_tags`
--
ALTER TABLE `easyii_tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `easyii_tags_assign`
--
ALTER TABLE `easyii_tags_assign`
  ADD KEY `class` (`class`),
  ADD KEY `item_tag` (`item_id`,`tag_id`);

--
-- Индексы таблицы `easyii_texts`
--
ALTER TABLE `easyii_texts`
  ADD PRIMARY KEY (`text_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `easyii_admins`
--
ALTER TABLE `easyii_admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_article_categories`
--
ALTER TABLE `easyii_article_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `easyii_article_items`
--
ALTER TABLE `easyii_article_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_carousel`
--
ALTER TABLE `easyii_carousel`
  MODIFY `carousel_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_catalog_categories`
--
ALTER TABLE `easyii_catalog_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_catalog_items`
--
ALTER TABLE `easyii_catalog_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_catalog_item_data`
--
ALTER TABLE `easyii_catalog_item_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_faq`
--
ALTER TABLE `easyii_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_feedback`
--
ALTER TABLE `easyii_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_files`
--
ALTER TABLE `easyii_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_gallery_categories`
--
ALTER TABLE `easyii_gallery_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `easyii_gallery_categories_lang`
--
ALTER TABLE `easyii_gallery_categories_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `easyii_guestbook`
--
ALTER TABLE `easyii_guestbook`
  MODIFY `guestbook_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_loginform`
--
ALTER TABLE `easyii_loginform`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `easyii_modules`
--
ALTER TABLE `easyii_modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `easyii_news`
--
ALTER TABLE `easyii_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `easyii_news_lang`
--
ALTER TABLE `easyii_news_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `easyii_pages`
--
ALTER TABLE `easyii_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `easyii_pages_lang`
--
ALTER TABLE `easyii_pages_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `easyii_photos`
--
ALTER TABLE `easyii_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `easyii_photos_lang`
--
ALTER TABLE `easyii_photos_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `easyii_price`
--
ALTER TABLE `easyii_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_seotext`
--
ALTER TABLE `easyii_seotext`
  MODIFY `seotext_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_settings`
--
ALTER TABLE `easyii_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `easyii_shopcart_goods`
--
ALTER TABLE `easyii_shopcart_goods`
  MODIFY `good_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_shopcart_orders`
--
ALTER TABLE `easyii_shopcart_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_subscribe_history`
--
ALTER TABLE `easyii_subscribe_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_subscribe_subscribers`
--
ALTER TABLE `easyii_subscribe_subscribers`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_tags`
--
ALTER TABLE `easyii_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `easyii_texts`
--
ALTER TABLE `easyii_texts`
  MODIFY `text_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
