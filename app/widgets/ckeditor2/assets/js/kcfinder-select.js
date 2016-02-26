function abrirPopup(url, w, h) {
    var newW = w + 100;
    var newH = h + 100;
    var left = (screen.width - newW) / 2;
    var top = (screen.height - newH) / 2;
    var newwindow = window.open(url, 'name', 'width=' + newW + ',height=' + newH + ',left=' + left + ',top=' + top);
    newwindow.resizeTo(newW, newH);

//posiciona o popup no centro da tela
    newwindow.moveTo(left, top);
    newwindow.focus();
    return false;
}

function selectSingle() {
    var param = $.extend({
        url: 'kcfinder/',
        type: 'file',
        popupWidth: 800,
        popupHeight: 600
    }, arguments[0]);

    window.KCFinder = {};
    window.KCFinder.callBack = function (url) {
        param.callback(url);
        window.KCFinder = null;
    };
    abrirPopup(param.url + '?type=' + param.type, param.popupWidth, param.popupHeight);
}

function openKCFinder_multipleFiles() {
    window.KCFinder = {};
    window.KCFinder.callBackMultiple = function (files) {
        for (var i; i < files.length; i++) {
            // Actions with files[i] here
        }
        window.KCFinder = null;
    };
    window.open('/kcfinder/browse.php', 'kcfinder_multiple');
}
