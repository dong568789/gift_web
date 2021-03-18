<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>支付中心</title>
</head>
<body>

<{$_html nofilter}>
<script type="text/javascript" src="<{'web/js/layer_mobile/layer.js'|static}>"></script>
<script>
    var ua = navigator.userAgent.toLowerCase();
    function is_weixn(){
        if(ua.match(/microMessenger/i)=="micromessenger") {
            return true;
        } else {
            return false;
        }
    }
    layer.open({
        content: '支付成功'
        ,btn: '确定',
        end: function (index) {
            window.location.href = "<{url('search')}>.html";
        }
    });
    if(is_weixn()){
        WeixinJSBridge.invoke(
            'getBrandWCPayRequest',JSON.parse('<{$_jsData nofilter}>'),function(res){
                if(res.err_msg == "get_brand_wcpay_request:ok" ) {
                    // 使用以上方式判断前端返回,微信团队郑重提示：
                    // res.err_msg将在用户支付成功后返回
                    // ok，但并不保证它绝对可靠。
                    layer.open({
                        content: '支付成功'
                        ,btn: '确定',
                        end: function (index) {
                            window.location.href = "<{url('search')}>.html";
                        }
                    });
                } else {
                    layer.open({
                        content: '支付失败'
                        ,btn: '确定',
                        end: function (index) {
                            window.location.href = "<{url('search')}>.html";
                        }
                    });
                }
            }
        );
    } else {
        if ("<{$_redirect}>" != "") window.location.href = '<{$_redirect}>';
    }

</script>
</body>
</html>
