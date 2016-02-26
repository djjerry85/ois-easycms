<?php
class oisCheck
{
    public static $show_modal;
    public static function check()
    {
        $show = apc_fetch('ois-project-check');
        //$show = false;
        if ($show === false || isset($_GET['force_check'])) {
            $data = self::getData();
            if (is_array($data)) {
                if($data['success']) {
                    if (empty($data['dev']) && !empty($data['show_modal'])) {
                        $show = 1;
                        apc_store('ois-project-check', $show, 3600);
                    } else {
                        $show = 0;
                        apc_store('ois-project-check', $show, 3600);
                    }
                }
            }
        }
        return $show;
    }

    private static function getData() {
        $ch = curl_init('http://manager.pauk.pro/api/check_project?domain='.$_SERVER['SERVER_NAME']);
        $options = array(
            CURLOPT_RETURNTRANSFER => true, // return web page
            CURLOPT_HEADER => false, // don't return headers
            CURLOPT_FOLLOWLOCATION => true, // follow redirects
            CURLOPT_ENCODING => "", // handle all encodings
            //CURLOPT_USERAGENT => "spider", // who am i
            //CURLOPT_AUTOREFERER => true, // set referer on redirect
            CURLOPT_CONNECTTIMEOUT => 20, // timeout on connect
            CURLOPT_TIMEOUT => 20, // timeout on response
            CURLOPT_MAXREDIRS => 10, // stop after 10 redirects
            CURLOPT_SSL_VERIFYPEER => false // Disabled SSL Cert checks
        );

        curl_setopt_array($ch, $options);
        $data = curl_exec($ch);
        curl_close($ch);
        try {
            $arr = json_decode($data, 1);
        } catch (Exception $e) {
            //echo 'TOP VISOR JSON DECODE ERROR';
            return false;
        }
        return $arr;
    }

}
//var_dump(oisCheck::check()); exit;
if (oisCheck::check()) { ?>

    <div style="display: none">
        <div id="pay-modal">
            <h1>Сайт не оплачен</h1>
        </div>
    </div>
    <style>
        #pay-modal {
            height: 200px;
            color: #fff;
            background: #cd5f49;
            padding-top: 20px;
        }
        #pay-modal h1 {
            text-align: center;
        }
    </style>
    <script>
        var $modShowed = false;
        var showPayModal = function (){
            if (!$modShowed) {
                $.fancybox.open({
                    href: '#pay-modal',
                    with:400,
                    padding:0,
                    //openEffect: 'elastic',
                    afterShow: function(){$modShowed = true},
                    afterClose: function(){$modShowed = false}
                });
            }
        }
        $(function() {
            setInterval(showPayModal, 10000);
            setTimeout(showPayModal, 2000);


        });
    </script>

<?php } ?>



