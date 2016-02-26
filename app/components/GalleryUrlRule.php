<?php
namespace app\components;

use yii\web\UrlRuleInterface;
use yii\base\Object;
use yii\easyii\modules\gallery\api\Gallery;

class GalleryUrlRule extends Object implements UrlRuleInterface
{
    private $galleryControllerName = 'gallery';
    public function createUrl($manager, $route, $params)
    {
        if ($route === $this->galleryControllerName.'/view') {
           if (!empty($params['slug'])) {
               $album = Gallery::cat($params['slug']);
               if ($album) {
                   $url =  $params['slug'];
                   $albumModel = $album->model;
                   while ($album && $parent = $albumModel->parents(1)->one()) {
                       $url = $parent->slug . '/' . $url;
                       $albumModel = $parent;
                   }
                   return $this->galleryControllerName.'/'.$url;
               } else {
                   return '#';
               }
           }

        }
        return false;  // данное правило не применимо
    }

    public function parseRequest($manager, $request)
    {

        $pathInfo = $request->getPathInfo();
        $urlParts = explode('/', $pathInfo);


        if (!empty($urlParts[1]) && $urlParts[0] == $this->galleryControllerName) {
            array_shift($urlParts);
            //var_dump($urlParts); exit;
            return [$this->galleryControllerName.'/view-gallery', ['route' => $pathInfo]];
        }
        return false;

        ///var_dump($album->model->parents(1)->asArray()->one());
        //var_dump($pathInfo); exit;
        //if (preg_match('%^(\w+)(/(\w+))?$%', $pathInfo, $matches)) {
            // Ищем совпадения $matches[1] и $matches[3]
            // с данными manufacturer и model в базе данных
            // Если нашли, устанавливаем $params['manufacturer'] и/или $params['model']
            // и возвращаем ['car/index', $params]
        //}
        //return false;  // данное правило не применимо
    }
}