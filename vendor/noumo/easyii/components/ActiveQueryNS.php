<?php
namespace yii\easyii\components;
use  app\components\multilingual\MultilingualTrait;

use creocoder\nestedsets\NestedSetsQueryBehavior;

class ActiveQueryNS extends ActiveQuery
{
    //use MultilingualTrait;
    public function behaviors()
    {
        return [
            NestedSetsQueryBehavior::className(),
        ];
    }

    public function sort()
    {
        $this->orderBy('order_num DESC, lft ASC');
        return $this;
    }
}