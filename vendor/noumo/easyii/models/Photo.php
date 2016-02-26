<?php
namespace yii\easyii\models;

use Yii;
use yii\easyii\behaviors\SortableModel;

use app\components\multilingual\MultilingualBehavior;

class Photo extends \yii\easyii\components\ActiveRecord
{
    const PHOTO_MAX_WIDTH = 1900;
    const PHOTO_THUMB_WIDTH = 120;
    const PHOTO_THUMB_HEIGHT = 90;

    public static function tableName()
    {
        return 'easyii_photos';
    }

    public function rules()
    {
        return [
            [['class', 'item_id'], 'required'],
            ['item_id', 'integer'],
            ['image', 'image'],
            ['description', 'trim']
        ];
    }

    public function behaviors()
    {
        return [
            SortableModel::className(),
            'ml' => [
                'class' => MultilingualBehavior::className(),
                'languages' => Yii::$app->params['availableLanguages'],
                /*[
                    'ru' => 'Russian',
                    'en' => 'English',
                ],*/
                //'languageField' => 'language',
                //'localizedPrefix' => '',
                //'requireTranslations' => false',
                //'dynamicLangClass' => true',
                //'langClassName' => PostLang::className(), // or namespace/for/a/class/PostLang
                'defaultLanguage' => Yii::$app->params['defaultLanguage'],
                'langForeignKey' => 'photo_id',
                'tableName' => self::tableName().'_lang',
                'attributes' => [
                    'description'
                ]
            ]
        ];
    }

    public function afterDelete()
    {
        parent::afterDelete();

        @unlink(Yii::getAlias('@webroot').$this->image);
    }
}