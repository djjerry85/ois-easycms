<?php

namespace yii\easyii\modules\page\models;
use creocoder\nestedsets\NestedSetsQueryBehavior;
use yii\easyii\components\ActiveQuery;

class PageQuery extends ActiveQuery
{
    public function onlyRoot()
    {
        return $this->andWhere(['parrent_page_id' => 0]);
    }
}