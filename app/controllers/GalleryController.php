<?php

namespace app\controllers;

use yii\easyii\modules\gallery\api\Gallery;
use yii\web\NotFoundHttpException;

class GalleryController extends \yii\web\Controller
{
   public $galleryControllerName = 'gallery';
    public function behaviors()
    {
        return [
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    // everything else is denied
                ],
            ],
        ];
    }
    public function beforeAction($event)
    {
        $langCode = \Yii::$app->urlManager->getCurLangCode();
        if ($langCode !== \Yii::$app->params['defaultLanguage']) {
            $this->layout = 'main_'.$langCode;
        }
        return parent::beforeAction($event);
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionView($slug)
    {
        $album = Gallery::cat($slug);
        //var_dump($album->model->parents(1)->asArray()->one());
        if(!$album){
            throw new \yii\web\NotFoundHttpException('Album not found.');
        }

        $children = $album->model->children(1)->all();

        return $this->render('view', [
            'album' => $album,
            'children' => $children,
            'photos' => $album->photos(['pagination' => ['pageSize' => 40]])
        ]);
    }

    public function actionViewGallery($route)
    {
        $route = str_replace($this->galleryControllerName.'/', '', $route);
        $urlParts = explode('/', $route);
        $album = false;
        $valid = false;
        while (!empty($urlParts)) {
            $currentPart = array_pop($urlParts);
            $last = true;
            if (!empty($urlParts)) {
                $parentPart = $urlParts[count($urlParts)-1];
            } else {
                $parentPart = false;
            }
            $currentGallery = Gallery::cat($currentPart);

            if (empty($currentGallery)) throw new NotFoundHttpException('Album not found. (route)');
            if(empty($album)) $album = $currentGallery;
            //var_dump($currentGallery); exit;
            $parentGallery = $currentGallery->model->parents(1)->one();

            if (empty($parentPart) && empty($parentGallery)) {

                $valid = true;
            } elseif (!empty($parentGallery->slug) && $parentGallery->slug == $parentPart) {

                $valid = true;
            } else {
                $valid = false;
                break;
                //var_dump($parentGallery->slug, $parentPart); exit;
            }

            //var_dump($currentPart, $parentPart);
        }
        if ($valid && $album) {
            $children = $album->model->children(1)->all();
            return $this->render('view', [
                'album' => $album,
                'children' => $children,
                'photos' => $album->photos(['pagination' => ['pageSize' => 40]])
            ]);
        } else {
            throw new NotFoundHttpException('Album not found. (route)');
        }
    }
}
