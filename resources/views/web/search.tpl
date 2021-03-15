<{extends file="extends/main.block.tpl"}>
<{block "head-styles-plus"}>
<script>window.onload = function() { (function() {
        var docElem = document.documentElement;
        docElem.style.fontSize = docElem.getBoundingClientRect().width / 16 + "px";
    })()
    };</script>
<style type="text/css">body{ background-color: #F6F5F5; font-family:'tahoma, 宋体, sans-serif;'; } /*手机号查询订单*/ .query{ width: 100%; margin: 0 auto; height: 100vh; background-color: #fff; } .title{ width: 80%; margin: 0 auto 20px; font-size: 26px; font-weight: 900; padding-top: 50px; color: #333333; } .qubox{ width: 80%; margin: 0 auto; } .quTxt{ width: 100%; font-size: 16px; color: #333333; } .quInp{ width: 100%; font-size: 0; margin-top: 20px; border-bottom: 1px solid #DCDCDC; padding-bottom: 15px; } .q1{ display: inline-block; vertical-align: middle; width: 15%; font-size: 15px; color: #A5945D; border-right: 1px solid #D8D8D8; } .q2{ display: inline-block; vertical-align: middle; width: 80%; font-size: 15px; border:none; margin-left: 3%; } .q3{ font-size: 15px; color: #DADADA; } .q2:focus{ outline-color: transparent; } .qbut{ width: 100%; height: 50px; line-height: 50px; font-size: 16px; color: #919090; background-color: #EFF0F2; border-radius: 8px; outline:none; border: none; margin-top: 20px; } /*没有订单*/ .noOrder{ width: 100%; /*height: 100vh;*/ background-color: #fff; margin-top: 10px; } .no{ width: 100%; /*height: 90px;*/ height: 20px; } .noImg{ width: 40%; display: block; margin: 0 auto 30px; } .noTxt{ width: 100%; text-align: center; color: #333333; font-weight: 0; font-size: 22px; } .noTxt>b{ color: #FF006D; font-weight: 0; } .noTxt2{ width: 100%; text-align: center; font-size: 12px; margin-top: 5px; color: #AFAFAF; } .gobuy{ width: 100px; margin: 20px auto; height: 40px; line-height: 40px; color: #FEE619; background-color: #272425; text-align: center; } /*有订单*/ .order{ width: 100%; background-color: #fff; margin-top: 10px; } .top{ width: 90%; margin: 0 auto 10px; padding: 10px 0; border-bottom: 1px solid #EFEFEF; font-size: 0; } .t1{ display: inline-block; vertical-align: middle; width: 70%; font-size: 15px; color: #333333; text-align: left; } .t2{ display: inline-block; vertical-align: middle; width: 30%; font-size: 15px; color: #333333; text-align:right; font-weight: 900; } .box { width: 95%; margin: 10px auto 0; background-color: #fff; border-radius: 6px; padding:7px 0 34px } /*商品*/ .shop{ width: 90%; margin: 0 auto; padding-bottom: 10px; border-bottom: 1px solid #EFEFEF; } .shopImg{ display: inline-block; vertical-align: top; width: 65px; margin-right: 10px; } .shopBox{ display: inline-block; vertical-align: middle; width: calc(100% - 120px); } .shop1{ color: #191919; width: 100%; font-size: 15px; margin-bottom: 5px; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; } .shop2{ width: 100%; color: #E00000; font-size: 15px; } .shop3 { height: 18px; } .k1 { display: inline-block; vertical-align: middle; width: 49%; text-align: left; color: #191919; font-weight: 500; } .shop3 img { display: inline; margin-left: -12px; height: 20px; } .kd { width: 95%; margin: 8px auto 0; font-size: 15px; } .shopNum1 { position: relative; right: 0; top: 68%; font-size: 0.9rem; text-decoration: line-through; color: #E00000; } .shopNum{ display: inline-block; vertical-align: middle; width: 30px; font-size: 12px; text-align: center; } .bottom{ width: 90%; margin: 0 auto; font-size: 0; padding: 10px 0; } .b1{ display: inline-block; vertical-align: middle; width: calc(100% - 80px); font-size: 15px; font-weight: 900; } .b2{ float:right; width: 150px; height: 40px; line-height: 40px; background-color: #2ba245; border-radius: 6px; color: #fff; font-size: 14px; text-align: center; } .b3{ float:left; width: 130px; height: 35px; line-height: 35px; color:#3E3A34; border:1px solid #3E3A34; border-radius: 6px; font-size: 14px; text-align: center; } .b3 a{ color:#3E3A34; } .b4{ float:right; width: 130px; height: 35px; line-height: 35px; color:#3E3A34; border:1px solid #3E3A34; border-radius: 6px; font-size: 14px; text-align: center; } .b4 a{ color:#3E3A34; } /*模态*/ .zz{ width: 100%; height: 100vh; position: fixed; top: 0; left: 0; background:rgba(0,0,0,.4); z-index: 100; } /*添加微信*/ .wx{ width: 80%; background-color: #fff; border-radius: 8px; position: absolute; top: 25vh; left: 0; right: 0; margin: 0 auto; padding: 20px 0; } .gb{ position: absolute; top: 10px; right: 10px; width: 25px; } .wxTxt{ width: 100%; text-align: center; font-size: 16px; font-weight: 900; color: #191919; } .wxImg{ display: block; width: 70%; margin: 10px auto; } .wxTxt1{ width: 100%; text-align: center; font-size: 14px; color: #999999; } .wxTxt2{ width: 100%; text-align: center; font-size: 14px; color: #191919; border-top: 1px solid #EDEDED; margin-top: 10px; padding-top: 20px; font-weight: 900; } .wxTxt2>b{ color: #536898; }</style>
<style>@font-face{font-family:uc-nexus-iconfont;src:url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')}</style></head>
<{/block}>
<{block "body-container"}>
<{include file="common/head.inc.tpl"}>
<div style="position:relative;top:0px;height:auto;margin-top:0px;" id="div1" align="center">
    <div style="position:absolute;top:0px;left:50%;width:100%;height:auto;margin-top:0px;margin-left:-50%;" align="center">
        <style>.topTbox{ width: 100%; position: fixed; top: 0; left: 0; z-index: 5; background-color: #fff; font-size: 0; } .topli{ display: inline-block; vertical-align: middle; width: 50%; position: relative; height: 50px; line-height: 50px; padding-bottom: 2px; } .toplid{ width: 100%; text-align: center; color: #313131; font-size: 16px; } .toplih{ position: absolute; bottom: 1px; left: 0; right: 0; margin: 0 auto; width: 40%; height: 2px; border-radius: 2px; background-color: transparent; } .toplid1{ width: 100%; text-align: center; color: #e00000; font-size: 16px; } .toplih1{ position: absolute; bottom: 1px; left: 0; right: 0; margin: 0 auto; width: 40%; height: 2px; border-radius: 2px; background-color: #e00000; } .shopAddr{ margin-top: 10px; background-color: #f5f5f5; border-radius: 10px; padding: 5px; font-size: 12px; color: #555; } /*换购商品*/ .jitem{ width:100%; margin: 0 auto; } .jh1{ width: 95%; margin: 0 auto; text-align: left; font-size: 18px; font-weight: 900; color: #212121; } .jiUl{ width: 99%; margin: 0 auto; } .jiLi{ width: 46%; margin: 0 2% 10px; display: inline-block; background:#fff; box-shadow:0px 0px 6px 0px rgba(68,68,68,0.1); border-radius: 8px; float: left; } .jiLimg{ width: 100%; margin: 0 auto; display: block; } .jiPtxt{ width: 90%; margin: 0 auto; font-size: 14px; font-weight: 500; height: 42px; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden;color:#333333 } .jiPtxt1{ width: 50%; margin-top: 10px; margin-left: 2.5%; border:1px solid #FFD4D5; color:#FF5951; text-align:center; border-radius:5px; font-size:14px; } .jiPtxt2{ width:95%; margin:0 auto; } .jiPtxt3{ display:inline-block; vertical-align: middle; padding-bottom: 10px; } .jip1{ font-size:12px; } .jip2{ font-size:20px; } .jip3{ display:inline-block; vertical-align: middle; font-size:14px; color:#969696; } .search{ margin: 10px 10px 0px 10px; } .search .left{ display: inline-block; background-color: #fff; padding: 3px 10px; border-radius: 4px; width: 70vw; } .search .left img{width: 12px;float: left;margin: 4px 10px; margin-bottom: 2px; } .search .left input{ border: none; font-size: 12px; width: 60vw; } .search .right{ float: right; border: none; padding: 3px 10px; background-color: #ff5951; color: #fff; border-radius: 4px; } .cltxt1{ width: 95%; margin: 0 auto; font-size: 14px; color: #212121; padding-bottom: 5px; } .cltxt1>span{ color: #DD1818; font-size: 16px; }</style>
        <ul class="topTbox">
            <li class="topli">
                <p class="toplid1">我的订单</p>
                <p class="toplih1"></p>
            </li>
            <!-- <li class="topli"> -->
            <!-- <p class="toplid" th:onclick="tiaozhuan()">物流信息</p>-->
            <!--<p class="toplid"><a href="search/search.html" style="color:#313131">物流信息</a></p>
            <p class="toplih"></p>--></ul>
        <div style="width:100px;height:50px;"></div>
        <div class="search" id="search" method="get">
            <input type="hidden" name="pId" value="">
            <div class="left">
                <img src="<{'web/images/search.png'|static}>">
                <input type="text" name="phone" id="phone_search" value="" placeholder="请输入下单手机号查询"></div>
            <button class="right" id="searchBtn">查询</button></div>
        <!-- 没有订单 -->
        <div class="noOrder" id="nodingdan" style="display:inline-block;">
            <div class="no"></div>
            <img class="noImg" style="width:95px;height:95px;" src="<{'web/images/getOrderPh.png'|static}>">
            <p class="noTxt">手机号
                <b>查询</b>
            </p>
            <p class="noTxt2">请输入下单手机号查询</p>
        </div>
        <!-- <div class="gobuy" style="font-size: 22.5px;font-weight:bold;border-radius:10px;">去兑换</div></div>-->

        <div id="youdingdan" style="display:block;">
            <!-- 有订单 --></div>
        <!-- 有订单 -->

        <div class="jitem" style="clear:both;margin-top:35px;">
            <h1 class="jh1">猜你喜欢</h1>
            <ul class="jiUl" style="clear: both;margin-top: 10px;position:relative;bottom:60px;">
                <{foreach $_likeList as $item}>
                <a href="<{url('goods', [$item.id])}>.html">
                    <li class="jiLi sbImg">
                        <img class="jiLimg" style="min-height:85px;" src="<{null|attachment}>/<{$item.cover}>">
                        <p class="jiPtxt"><{$item.title}></p>
                        <p class="jiPtxt1">限量抢购</p>
                        <div class="jiPtxt2">
                            <p class="cltxt1">
                                <span><{$item.integral}></span>积分+
                                <span><{$item.price}></span>元</p></div>
                    </li>
                </a>
                <{/foreach}>

            </ul>
        </div>
        <div style="width:100%;height:70px;background-color: #fff;"></div>
        <input id="copy_content" type="hidden" value="" style="position: absolute;top: 0;left: 0;opacity: 0;z-index: -10;">
        <script type="text/javascript"></script>
        <div>
            <{include file="common/foot.inc.tpl"}>
        </div>
        <script type="text/javascript">
            $('#searchBtn').click(function() {
                var phone = $("#phone_search").val();
                if (phone != "" && phone.length == 11) {
                    //alert("您已订购成功，产品宝贝将在3日左右到达，请保持手机畅通");
                    $.ajax({
                        type: "GET",
                        url: "<{url('search-order')}>?mobile=" + phone,
                        timeout: 35000,
                        cache: false,
                        async: true,
                        success: function(result) {
                            if (result.result == 'success') {
                                var l = result.data.length;

                                if (l == 0) {
                                    document.getElementById("nodingdan").style.display = 'block';
                                    document.getElementById("youdingdan").style.display = 'none';
                                } else {
                                    document.getElementById("nodingdan").style.display = 'none';
                                    document.getElementById("youdingdan").style.display = 'block';

                                    $("#youdingdan").html("");

                                    for (var i = 0; i < l; i++) {
                                        var order = result.data[i];
                                        var html = '';

                                        var state = '你的货品已揽单24小时内发货';
                                        var wuliu = ' '
                                        if (order.order_status.id == 1) {
                                            state = '已付款(货品已揽单24小时内发货)';
                                            wuliu = '快递单号：将在发货后24小时内发送至你的手机'
                                        }
                                        if (order.order_status.id ==2) {
                                            state = '货到付款(货品已揽单24小时内发货)';
                                            wuliu = '快递单号：将在发货后24小时内发送至你的手机'
                                        }
                                        if(order.order_status.id == 0) {
                                            state = '未付款';
                                        }


                                        html = html + '<div class="box">';
                                        html = html + '<p class="shop1">' + order.goods_desc + '</p>';
                                        html = html + '       <p class="shop1">邮寄地址：' + order.address+ '</p>';
                                        html = html + '       <p class="shop1">订单状态： '+ order.order_status.title +' ' +
                                            '</p>';
                                        html = html + '       <p class="shop2"><b></b><span>' + order.amount +
                                            '</span>元</p>';
                                        html = html + '       <p class="shop2"><b></b><span>'+ wuliu+'</span></p>';
                                        html = html + '</div>';

                                        $("#youdingdan").append(html);
                                    }
                                }
                            } else {
                                document.getElementById("nodingdan").style.display = 'block';
                                document.getElementById("youdingdan").style.display = 'none';
                            }
                        }
                    });
                } else {
                    alert("请输入正确手机号");
                }

            });
        </script>
    </div>
</div>
    <{/block}>
