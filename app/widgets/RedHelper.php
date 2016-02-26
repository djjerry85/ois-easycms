<?php
namespace app\widgets;

use Yii;
use yii\easyii\helpers\Data;
use yii\widgets\InputWidget;
use yii\base\Widget;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\web\JsExpression;
use yii\web\AssetBundle;

use yii\easyii\assets\RedactorAsset;

class RedHelper extends Widget
{
    public $options = [];
    public $login;
    public $language;

    private $_defaultOptions = [

    ];


    public function init()
    {
        $this->options = array_merge($this->_defaultOptions, $this->options);
        if (empty($this->language)) {
            $this->language = Yii::$app->urlManager->getCurLangCode();
        }
        if ($this->language == 'ge') {
            $this->view->registerJs('
            redconnect = {

popup: {

        text: "Popup. მოვუწოდებთ თქვენ 30 წამი !"

                },

        textMain: " მოვუწოდებთ თქვენ 30 წამი",

        textButton: " მიწერე გამოძახებით!",

        textPlaceholder: "+$code ... (თქვენი ნომერი)",

        wrongNumber: " შეამოწმეთ ნომერი !",

        textClose: " ახლოს",

        textSend: " გაუგზავნე"

};



redconnect.textMessages = {

talkInProgress: " საუბარი მიმდინარეობს ",

 callingOperator: " დაკავშირება ოპერატორი...",

 callingVisitor: " მოვუწოდებთ თქვენი ტელეფონი...",

 operatorHangup: " ზარი მივიღე დაეცა.",

  operatorUnavailable: " ყველა ჩვენი ოპერატორები ამჟამად დაკავებულია. გთხოვთ გამართავს და ჩვენ მოვუწოდებთ თქვენ რაც შეიძლება მალე .",

  timeout: " გთხოვთ გამართავს , ოპერატორი მოვუწოდებთ თქვენ მალე ...",

  visitorUnavailable: " რაოდენობა თქვენ არ დარეკილი არ არის შესაძლებელი. გთხოვთ შეამოწმოთ ნომერი და ისევ სცადოთ.",

  wait: " დაელოდეთ...",

  warningHeader: " ყურადღება!",

  wrongNumber: " თქვენ არ დარეკილი არასწორი ნომერი . გთხოვთ შეამოწმოთ ნომერი და ისევ სცადოთ."

};



redconnect.feedback = {

                commentQuestion: " გთხოვთ, აღწეროთ მიზეზით თქვენი დარღვევა",

                commentQuestionLiked: " თქვენ შეგიძლიათ დატოვოთ კომენტარი ოპერატორის მუშაობა ",

                completeMessage: " მადლობა!",

                excuse: " როგორც ჩანს, ოპერატორი ვერ მიიღოს ზარი ახლავე. ჩვენ გაუგზავნა მას ელექტრონული ფოსტით თქვენი კონტაქტები , ასე რომ, ის დაახლოებით მოვუწოდებთ თქვენ მალე",

                exitWarning: " თქვენ არ მიეცა შეფასებით , ჩვენი სპეციალისტი მუშაობა. ხართ ypu , რომ თქვენ სურს დატოვოს?",

                likeQuestion: " გთხოვთ მისცეს ხარჯთაღრიცხვა ჩვენი ოპერატორი",

                reachQuestion: " თქვენ მიიღო ზარი?"

};





redhlpSettings = {

                onstart: function() {

                              document.getElementById("rc-copyright").children[0].children[0].innerHTML="Powered by RedConnect"

                              document.getElementById("rc-popup-copyright").children[0].children[0].innerHTML = "Powered by RedConnect"

                              document.getElementById("rc-phone-button").children[1].innerText="მიწერე გამოძახებით!"

                              document.getElementById("rc-phone-input-warning-header").children[0].innerText = "Attention!";

                }

}
            ');
        }



    }

    public function run()
    {
        $this->view->registerJs(' window.redconnect = window.redconnect || {};
                                window.redconnect.language = "'.$this->language.'";');
        //$this->view->registerJsFile('https://web.redhelper.ru/service/main.js?c='.$this->login);
        echo '<!-- RedHelper -->
<script id="rhlpscrtg" type="text/javascript" charset="utf-8" async="async"
	src="https://web.redhelper.ru/service/main.js?c='.$this->login.'">
</script>
<!--/Redhelper -->';
    }

}
