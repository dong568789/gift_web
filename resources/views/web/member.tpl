<{extends file="extends/main.block.tpl"}>
<{block "head-styles-plus"}>
    <script type="text/javascript">
        window.onload = function() { (function() {
            var docElem = document.documentElement;
            docElem.style.fontSize = docElem.getBoundingClientRect().width / 16 + "px";
        })()
        };
    </script>
    <style type="text/css">body{ background-color: #f5f5f5; } .content{ width: 100%; margin: 0 auto; position: relative; } .bgImg{ position: absolute; top: 0; left: 0; width: 100%; display: block; } .user{ width:90%; margin: 0 auto; position: relative; padding-top: 30px; } .userImg{ display: inline-block; vertical-align: middle; width: 55px; height: 55px; border-radius: 50%; margin-right: 10px; } .userTxt{ display: inline-block; vertical-align: middle; width: calc(100% - 75px); font-size: 16px; font-weight: 600; color: #fff; } .box{ width: 88%; margin: 20px auto 0; padding: 20px 1% 10px; position: relative; background-color: #fff; border-radius: 5px; } .boxli{ width: 95%; font-size: 0; margin: 0 auto 0px; padding: 10px 0px; } .bliImg{ width: 20px; display: inline-block; vertical-align: middle; } .bliTxt{ width: calc(100% - 80px); display: inline-block; vertical-align: middle; font-size: 16px; color: #282828; margin: 0 10px; } .bliImg1{ width: 30px; display: inline-block; vertical-align: middle; }</style>
    <style>@font-face{font-family:uc-nexus-iconfont;src:url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')}</style></head>
    <{/block}>
<{block "body-container"}>
    <{include file="common/head.inc.tpl"}>

    <div style="position:relative;top:0px;height:auto;margin-top:0px;" id="div1" align="center">
        <div style="position:absolute;top:0px;left:50%;width:100%;height:auto;margin-top:0px;margin-left:-50%;" align="center">
            <img class="bgImg" src="<{'web/images/BJ.png'|static}>">
            <div class="user">
                <img class="userImg" src="<{'web/images/userPhoto.png'|static}>">
                <p class="userTxt">用户Id <{$_clientId}></p></div>
            <ul class="box">
                <a href="<{url('integral')}>.html">
                    <li class="boxli sbImg" data-url="/">
                        <img class="bliImg" src="<{'web/images/inter9.png'|static}>">
                        <p class="bliTxt">我的积分</p>
                        <img class="bliImg1" src="<{'web/images/right.png'|static}>"></li>
                </a>
                <a href="<{url('search')}>.html">
                    <li class="boxli sbImg" data-url="/redirectIndex2">
                        <img class="bliImg" src="<{'web/images/lookOrder.png'|static}>">
                        <p class="bliTxt">我的订单</p>
                        <img class="bliImg1" src="<{'web/images/right.png'|static}>"></li>
                </a>
                <a href="<{url('/')}>">
                    <li class="boxli sbImg" data-url="/">
                        <img class="bliImg" src="<{'web/images/hongbao.png'|static}>">
                        <p class="bliTxt">商城首页</p>
                        <img class="bliImg1" src="<{'web/images/right.png'|static}>"></li>
                </a>
                <a href="<{url('chat')}>.html">
                    <li class="boxli sbImg" data-url="/redirectKefu">
                        <img class="bliImg" src="<{'web/images/kefu.png'|static}>">
                        <p class="bliTxt">联系客服</p>
                        <img class="bliImg1" src="<{'web/images/right.png'|static}>"></li>
                </a>
                <a href="<{url('chat')}>.html">
                    <li class="boxli sbImg" data-url="/redirectKefu">
                        <img class="bliImg" src="<{'web/images/opinon.png'|static}>">
                        <p class="bliTxt">意见反馈</p>
                        <img class="bliImg1" src="<{'web/images/right.png'|static}>"></li>
                </a>
            </ul>
            <script type="text/javascript" src="<{'web/images/jquery.min.js'|static}>"></script>
            <script type="text/javascript"></script>
            <div>
                <style type="text/css">/*底部导航*/ .tab{ width: 100%; position: fixed; bottom: 0; left: 0; font-size: 0; background-color: #fff; padding: 5px 0; z-index: 10; } .tab1{ display: inline-block; vertical-align: middle; width: 25%; text-align: center; } .tabImg{ width: 27px; height: 27px; } .tabTxt{ width: 100%; margin-top: 5px; font-size: 12px; color: #666666; } .tabTxt1{ width: 100%; margin-top: 2px; font-size: 12px; color: #FF2741; }</style>
                <ul class="tab">
                    <li class="tab1">
                        <a href="<{url('/')}>.html" target="_parent">
                            <img class="tabImg" src="<{'web/images/falme.png'|static}>" _rp="true" _rp_category="底部导航" _rp_action="购物节">
                            <p class="tabTxt">购物节</p></a>
                    </li>
                    <li class="tab1">
                        <a href="<{url('integral')}>.html" target="_parent">
                            <img class="tabImg" src="<{'web/images/inter.png'|static}>" _rp="true" _rp_category="底部导航" _rp_action="积分中心">
                            <p class="tabTxt">积分中心</p></a>
                    </li>
                    <!-- <li class="tab1">
       <a href="/index/invest/wine.html" target="_parent">
         <img class="tabImg" src="<{'web/images/winebo.png'|static}>" _rp="true" _rp_category="底部导航" _rp_action="我的酒庄">
         <p class="tabTxt">我的酒庄</p></a>
     </li>-->
                    <li class="tab1">
                        <a href="<{url('search')}>.html" target="_parent">
                            <img class="tabImg" src="<{'web/images/myorder.png'|static}>" _rp="true" _rp_category="底部导航" _rp_action="我的订单">
                            <p class="tabTxt">我的订单</p></a>
                    </li>
                    <li class="tab1">
                        <a href="<{url('member')}>.html" target="_parent">
                            <img class="tabImg" src="<{'web/images/logs1.png'|static}>" _rp="true" _rp_category="底部导航" _rp_action="个人中心">
                            <p class="tabTxt1">个人中心</p></a>
                    </li>
                </ul>
            </div>

            <div style="position: static; width: 0px; height: 0px; border: none; padding: 0px; margin: 0px;">
                <div id="trans-tooltip">
                    <div id="tip-left-top" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-left-top.png}&quot;);"></div>
                    <div id="tip-top" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-top.png}&quot;) repeat-x;"></div>
                    <div id="tip-right-top" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-right-top.png}&quot;);"></div>
                    <div id="tip-right" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-right.png}&quot;) repeat-y;"></div>
                    <div id="tip-right-bottom" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-right-bottom.png}&quot;);"></div>
                    <div id="tip-bottom" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-bottom.png}&quot;) repeat-x;"></div>
                    <div id="tip-left-bottom" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-left-bottom.png}&quot;);"></div>
                    <div id="tip-left" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-left.png}&quot;);"></div>
                    <div id="trans-content"></div>
                </div>
                <div id="tip-arrow-bottom" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-arrow-bottom.png}&quot;);"></div>
                <div id="tip-arrow-top" style="background: url(&quot;chrome-extension://ikkepelhgbcgmhhmcmpfkjmchccjblkd/imgs/map/tip-arrow-top.png}&quot;);"></div>
            </div>
        </div>
    </div>


    </body></html>

    <{include file="common/foot.inc.tpl"}>
    <{/block}>
