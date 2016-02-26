<?php

namespace app\controllers;

use yii\web\Controller;
use yii\easyii\modules\page\api\Page;
use yii\easyii\modules\page\models\Page as PageModel;
use yii\web\NotFoundHttpException;


class SiteController extends Controller
{
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
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

    public function actionViewPage($slug,$slug1 = false, $slug2 = false)
    {
        $breadcrumbs = [];
        $breadcrumbs[] = [
            'url' => '/',
            'text' => 'Главная'
        ];
        $page = Page::get($slug);
//var_dump($page->model->parrent_page_id);
        if(empty($page->model->page_id)) throw new NotFoundHttpException();
        if (empty($page->model->parrent_page_id) && empty($slug1)) {
            $breadcrumbs[] = [
                'url' => '',
                'text' => $page->model->title
            ];
            return $this->render('page',['page' => $page, 'breadcrumbs' => $breadcrumbs]);
        }

        if (!empty($page->model->parrent_page_id) && !empty($slug1)) {
            $parent1 = Page::get($slug1);
            //var_dump($parent1->model->page_id); exit;
            if (!empty($parent1->model->page_id) && $parent1->model->page_id == $page->model->parrent_page_id) {
                if (empty($parent1->model->parrent_page_id)) {
                    $breadcrumbs[] = [
                        'url' => '/'.$parent1->model->slug,
                        'text' => $parent1->model->title
                    ];
                    $breadcrumbs[] = [
                        'url' => '',
                        'text' => $page->model->title
                    ];
                    return $this->render('page',['page' => $page, 'breadcrumbs' => $breadcrumbs]);
                }
                if (!empty($parent1->model->parrent_page_id) && !empty($slug2)) {
                    $parent2 = Page::get($slug2);
                    if (!empty($parent2->model->page_id) && $parent2->model->page_id == $parent1->model->parrent_page_id) {
                        if (empty($parent2->model->parrent_page_id)) {
                            $breadcrumbs[] = [
                                'url' => '/'.$parent2->model->slug,
                                'text' => $parent2->model->title
                            ];
                            $breadcrumbs[] = [
                                'url' => '/'.$parent2->model->slug.'/'.$parent1->model->slug,
                                'text' => $parent1->model->title
                            ];
                            $breadcrumbs[] = [
                                'url' =>  '',
                                'text' => $page->model->title
                            ];
                            return $this->render('page',['page' => $page, 'breadcrumbs' => $breadcrumbs]);
                        }
                    }
                }
            }
        }
        throw new NotFoundHttpException();
        //var_dump($slug, $slug1, $slug2);
        //var_dump(Page::get($slug)->model);

        //return $this->render('index');
    }

}