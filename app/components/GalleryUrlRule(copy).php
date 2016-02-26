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
            $slug = array_pop($urlParts);
            $album = Gallery::cat($slug);
            if (empty($album)) throw new \yii\web\NotFoundHttpException('Album not found.');
            $parent = $album->model->parents(1)->one();
            if (empty($parent)) {
                if (empty($urlParts)) {
                    return [$this->galleryControllerName.'/view', ['slug' => $slug]];
                } else {
                    throw new \yii\web\NotFoundHttpException('Album not found. (parent)');
                }
            } else {
                if (!empty($urlParts)) {
                    $parentSlug = $parent->slug;
                    $valid = true;
                    $GLOBALS['breadcrumbs_cost'] = [];
                    while (!empty($urlParts) && $valid) {
                        $lastSlug = array_pop($urlParts);
                        if ($lastSlug == $parentSlug) {
                            array_unshift($GLOBALS['breadcrumbs_cost'], ['slug' => $lastSlug, 'title' => $parent->title]);
                            if (empty($urlParts)) {
                                return [$this->galleryControllerName.'/view', ['slug' => $slug]];
                            } else {

                            }
                        } else {
                            throw new \yii\web\NotFoundHttpException('Album not found. (parent while)');
                        }
                    }
                } else {
                    throw new \yii\web\NotFoundHttpException('Album not found. (parent+)');
                }
            }
            /*while (!empty($urlParts)) {
                $slug = array_pop($urlParts);
                var_dump($slug);
                $album = Gallery::cat($slug);
                if ($album && empty($urlParts)) {
                    return [$this->galleryControllerName.'/view', ['slug' => $slug]];
                } else {

                }
                //if(!empty($urlParts[count($urlParts)]))
            }*/
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