<{extends file="extends/main.block.tpl"}>
<{block "head-styles-plus"}>
    <script type="text/javascript">
        window.onload = function () {
            (function () {
                var docElem = document.documentElement;
                docElem.style.fontSize = docElem.getBoundingClientRect().width / 16 + "px";
            })()
        };
    </script>
    <link rel="stylesheet" href="<{'web/css/index.css'|static}>">
    <link rel="stylesheet" href="<{'web/css/swiper.min.css'|static}>">
    <style>
        @font-face{font-family:uc-nexus-iconfont;src:url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')}
    </style>
    <link rel="stylesheet" href="https://dalieba.cn/static/layer/theme/default/layer.css?v=3.1.1" id="layuicss-layer">

    <{/block}>
<{block "body-container"}>
    <{include file="common/head.inc.tpl"}>

<link rel="stylesheet" href="<{'web/css/goods.css'|static}>">
<link rel="stylesheet" href="<{'web/css/service.css'|static}>">

    <div class="top_tab1" id="topbar">
        <ul class="tab_ul">
            <img class="tuImg" src="<{'web/images/jf.png'|static}>">
            <li class="tu1 shouye" _rp="true" _rp_action="我的积分" _rp_category="年货节" _rp_label="<{$_goods.title}>"
                _rp_value="<{$_goods.id}>">
                <p class="tup1">我的积分</p>
                <p class="tup2" style="font-size: 16px;"><span class="jifenzhi"><{$_myInventory}></span></p>
            </li>
        </ul>
        <p class="hen"></p>
        <ul class="tab_ul">
            <img class="tuImg" src="<{'web/images/home.png'|static}>">
            <li class="tu1 shouye" _rp="true" _rp_action="积分首页" _rp_category="年货节" _rp_label="<{$_goods.title}>"
                _rp_value="<{$_goods.id}>">
                <p class="tup1 " style="margin-top: 1px;"><a href="<{url('integral')}>.html">积分首页</a></p>
            </li>
        </ul>
        <div class="top_box">
            <div class="top1">
                <img class="t_Img" src="<{'web/images/laba.png'|static}>">
                <div class="t_txt">您的积分将在
                    <script type="text/javascript">
                        var date = new Date();
                        date.setDate(date.getDate()+15);
                        document.write(date.getFullYear() + "年" + (date.getMonth() + 1) + "月" + date.getDate() + "日");
                    </script>过期 请尽快使用
                </div>
            </div>
        </div>
    </div>
    <div class="top">
        <!-- Swiper -->
        <div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-android" id="swiperc01">
            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                <{foreach $_goods.attachment_urls as $url}>
                <div class="swiper-slide swiper-slide-active">
                    <img class="I_img" src="<{$url}>">
                </div>
                <{/foreach}>

            </div>

            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-bullets" id="swiperp01"></div>

            <div class="swiper_gm">
                <div class="swiper-container swiper-container21 swiper-container-vertical swiper-container-android swiper-container-initialized">
                    <div class="swiper-wrapper" style="transform: translate3d(0px, -60px, 0px); transition-duration: 0ms;">
                            <{include file="common/goods_slide.inc.tpl"}>
                    </div>
                </div>
            </div>
        </div>
    <div class="shop-info">
        <div class="price-count clearfix">

            <div class="prive fl clearfix">
                <div class="money fl">
                    <span style="font-size: 28px;"><span id="goodPoints"><{$_goods.integral}></span>积分</span>
                    <input type="hidden" id="shop_id" value="<{$_goods.id}>">
                </div>
                <div class="old-money fl">
                    <del class="jifensheng1"><{$_goods.original_price}></del>
                    <div>
                        <div style="font-size: 16px;margin-top: -2px;">+<span class="jifensheng2"><{$_goods.price}></span>元<p class="pa" style="    float: right;margin-top:2px;">兑换价</p></div>
                    </div>
                </div>
            </div>
            <div class="count fl">
                <p class="count-tit">
                    积分已省
                </p>
                <p class="count-tit">
                    <del class="jifensheng3">￥<{$_goods.save}></del>
                </p>

            </div>

        </div>
        <div class="shop-tit">
            <h3 style="font-size: 18px;" id="title"><img style="height: 20px;position: relative;top: 5px;margin-right: 10px;" src="<{'web/images/ysqg03.png'|static}>">
                <span><{$_goods.attr}></span>
            </h3>

            <div>
                <span style="color: #999999;font: 14px/1.5 tahoma, \5b8b\4f53, sans-serif;">全场包邮</span>
                <div class="_1YFM01i7" style="color: black;display: inline;">
                    <p class="time_t1" style="color: black;display:inline;padding-left: 0" id="time_t1a"></p>
                    <p class="time_t2" style="color: black;display:inline;padding-left: 0">:</p>
                    <p class="time_t1" style="color: black;display:inline;padding-left: 0" id="time_t1b"></p>
                    <p class="time_t2" style="color: black;display:inline;padding-left: 0">:</p>
                    <p class="time_t1" style="color: black;display:inline;padding-left: 0" id="time_t1c"></p>
                    <p class="tip" style="color: black;display:inline;padding-left: 0">恢复¥<{$_goods.original_price}>起</p>
                </div>
                <span style="float: right;color: #999999;font: 14px/1.5 tahoma, \5b8b\4f53, sans-serif;">热度<{$_goods.hot}>万+</span>
                <p style="border-bottom: 1px solid #e5e5e5;"></p>
            </div>

            <div class="I_txt2" style="margin: 0px;height: 25px;">
                <div class="I_txt_p" style="line-height: 10px;">
                    <p class="I_txt_p1" style="color: #000;font-size: 16px;"><img style="height: 14px;position: relative;top: 2px;" src="<{'web/images/xnz01.png'|static}>"></p>
                    <p class="I_txt_p2" style="font-size: 12px;">限时兑换</p>
                    <p class="I_txt_p3" style="font-size: 14px;color: black;">限时限量·过期作废</p>
                </div>
            </div>
        </div>

    </div>



    <div style="height:10px;background:#efefef;"></div>
    <div style="padding: 15px;background-color: #fff;">
        <div>
            <span style="color: #999999;">库存</span>
            <span>还剩:</span>
            <span style="color: #f61d4b;"><{$_goods.inventory}>件</span>
            <img style="height: 20px;position: relative;top: 5px;margin-right: 10px;" src="<{'web/images/kcgj01.png'|static}>">
        </div>
        <div id="fuwucl" style="padding-top:15px;">
            <div style="color:black;">服务 <span style="color: #f61d4b;">·差必赔·七天退换·全场包邮</span>
                <img style="width: 15px;vertical-align: middle;margin-left: 2px;margin-bottom: 3px;" src="<{'web/images/right.png'|static}>">
            </div>
            <!--        <ul>-->
            <!--            <li style="color: #f61d4b;">差必赔.</li>-->
            <!--            <li style="color: #f61d4b;">七天退换.</li>-->
            <!--            <li style="color: #f61d4b;">全场包邮</li>-->
            <!--        </ul>-->

        </div>
        <!--    <div style="padding-top:15px;">-->
        <!--        <span style="color: #999999;">服务</span>-->
        <!--        <span>大牌正品<span style="color: #999999;    padding: 0px 5px;">|</span>全场包邮<span-->
        <!--                style="color: #999999; padding: 0px 5px;">|</span>7天无理由退换</span>-->
        <!--    </div>-->
    </div>
<!--<div style="height:10px;background:#efefef;"></div>-->
    <div style="height:10px;background:#efefef;"></div>
    <div class="content" style="font-size:0;">

        <div class="I_title" id="dingdanxinxi1" style="display:inline-block;vertical-align: middle;width:50%;"
             _rp="true" _rp_action="商品信息" _rp_category="年货节" _rp_label="<{$_goods.title}>" _rp_value="<{$_goods.id}>">
            <h1 class="I_t_h1">商品信息</h1>
            <p class="I_t_hena I_t_henbg"></p>
        </div>
        <div class="I_title" id="dingdanxinxi" style="display:inline-block;vertical-align: middle;width:50%;"
             _rp="true" _rp_action="填写订单" _rp_category="年货节" _rp_label="<{$_goods.title}>" _rp_value="<{$_goods.id}>">
            <h1 class="I_t_h1">填写订单</h1>
            <p class="I_t_hena"></p>
        </div>

        <div class="I_box" style="display: none">

            <form class="editForm" id="order-form" name="editForm" action="<{url('order/store')}>" method="post">
                <input type="hidden" id="goodsId" name="gid" value="<{$_goods.id}>">
                <{csrf_field() nofilter}>
                <ul class="I_form" style="margin-top: 20px;">
                    <li>
                        <label class="bdxx"><em>*</em>收货姓名</label><input type="text" name="receiverName" id="receiverName"
                                                                         value="" placeholder="请输入姓名" required="">
                    </li>
                    <li class="Phone">
                        <label class="bdxx"><em>*</em>手机号码</label><input type="number" name="phone" id="phone"
                                                                         value="" placeholder="请输入手机号" required="">
                    </li>
                    <!-- <li class="Phone">
                        <label class="bdxx"><em>*</em>手机验证码</label><input style="width:60%;float:left" type="number" name="phonecode" id="phonecode" value="" placeholder="请输入手机验证码" required="">
                        <a id="get_phone_code" style="display:block;width:39%;line-height:45px;text-align:center;float:left;color:#fff;background:#666699;border-radius:50px;font-size:14px;" href="javascript:;">获取验证码</a>
                    </li>-->
                    <li>
                        <label class="bdxx"><em>*</em>省市区县</label>
                        <div style="width:100%;height:1px;clear:both"></div>
                        <select name="addressProvince" id="addressProvince">

                            <option value="所属省份">所属省份</option><option value="北京市">北京市</option><option value="天津市">天津市</option><option value="河北省">河北省</option><option value="山西省">山西省</option><option value="内蒙古自治区">内蒙古自治区</option><option value="辽宁省">辽宁省</option><option value="吉林省">吉林省</option><option value="黑龙江省">黑龙江省</option><option value="上海市">上海市</option><option value="江苏省">江苏省</option><option value="浙江省">浙江省</option><option value="安徽省">安徽省</option><option value="福建省">福建省</option><option value="江西省">江西省</option><option value="山东省">山东省</option><option value="河南省">河南省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="广东省">广东省</option><option value="广西壮族自治区">广西壮族自治区</option><option value="海南省">海南省</option><option value="重庆市">重庆市</option><option value="四川省">四川省</option><option value="贵州省">贵州省</option><option value="云南省">云南省</option><option value="西藏自治区">西藏自治区</option><option value="陕西省">陕西省</option><option value="甘肃省">甘肃省</option><option value="青海省">青海省</option><option value="宁夏回族自治区">宁夏回族自治区</option><option value="新疆维吾尔自治区">新疆维吾尔自治区</option><option value="台湾省">台湾省</option><option value="香港特别行政区">香港特别行政区</option><option value="澳门特别行政区">澳门特别行政区</option><option value="海外">海外</option></select>
                        <select name="addressCity" id="addressCity">

                            <option value="所属地级市">所属地级市</option><option value="天津市">天津市</option></select>
                        <select name="addressArea" id="addressArea">

                            <option value="所属区县">所属区县</option><option value="和平区">和平区</option><option value="河东区">河东区</option><option value="河西区">河西区</option><option value="南开区">南开区</option><option value="河北区">河北区</option><option value="红桥区">红桥区</option><option value="东丽区">东丽区</option><option value="西青区">西青区</option><option value="津南区">津南区</option><option value="北辰区">北辰区</option><option value="武清区">武清区</option><option value="宝坻区">宝坻区</option><option value="滨海新区">滨海新区</option><option value="宁河区">宁河区</option><option value="静海区">静海区</option><option value="蓟州区">蓟州区</option></select>
                    </li>


                    <li>
                        <label class="bdxx"><em>*</em>详细地址</label><input type="text" name="addressDetail" id="addressDetail"
                                                                         value="" placeholder="请输入详细地址" required="">
                    </li>
                    <div id="paytypemain" data-id="">
                        <li class="zuli" data-id="<{catalog_search('fields.pay_type.wx', 'id')}>">
                            <div class="zlipd1">
                                <img class="zliImg ds" src="<{'web/images/d6a49c43bed2701f8de8358fd8a8913c.jpg'|static}>" alt="">
                                <p class="zlip1 ds">微信支付</p>
                            </div>
                            <div class="zlipd2">
                                <p class="zlip3 ds">推荐</p>
                                <img class="zrad ds" src="<{'web/images/radio.png'|static}>">
                            </div>
                            <div style="clear: both;"></div>
                        </li>
                    </div>
                    <li id="youhuijuan01" style="display: none;">
                        <img class="I_li_img1" src="<{'web/images/radio.png'|static}>">
                        <p class="I_li_p">使用优惠券</p>
                        <img class="I_li_img2" src="<{'web/images/coupon.png'|static}>">
                        <p class="I_li_p1">已减20元</p>
                    </li>
                    <li id="youhuijuan02" style="padding-top: 20px;">
                        <div class="I_li_p2">您提交的信息将加密发送</div>
                        <div class="I_li_p3">应付:<b style="    font-size: 17px;"><{$_goods.integral}>积分</b>&nbsp;<b
                                    style="font-size:
                        12px;">+￥<{$_goods.price}></b></div>
                    </li>

                    <li style="margin-top: 30px;margin-bottom: 35px;">
                        <button class="I_form_but" id="subt" type="button">立即兑换</button>
                        <p class="fuwushang">本次兑换商品由品牌商提供，如有问题联系<a class="telhone" _rp="true" _rp_action="官方客服"
                                                                   href="<{url('chat')}>.html">官方客服</a>
                        </p>
                        <div style="margin-top:55px;line-height:15px;height:15px; font-size:8px;text-align:center;">@本次活动所有解释权归优品商城所有</div>
                    </li>
                </ul>
            </form>
        </div>
        <!--
        <div class="I_title">
            <h1 class="I_t_h1">商品保障</h1>
            <p class="I_t_hen"></p>
        </div>
        -->
        <div class="I_but" style="display: block;">
            <ul class="H_but_box">
                <li class="H_but_ul1 falme" style="width:18%;">
                    <img src="<{'web/images/shop3.png'|static}>">
                    <p>首页</p>
                </li>
                <li class="H_but_ul1 kefu" style="width:18%;">
                    <img src="<{'web/images/kefu.png'|static}>">
                    <p>客服</p>
                </li>
                <li class="H_but_ul3 xiadan" style="width: 64%; background: rgb(224, 0, 0);">
                    <!--
                    <p style='font-size:20px;margin-top:5px;'>￥139.0</p>-->
                    <p style="height:50px;line-height:50px;font-size:16px;font-weight:600;">立即兑换</p>
                    <div style="clear: both;"></div>
                </li>
            </ul>

        </div>


        <div class="shopimg" style="display: block;margin-bottom: 50px">
            <p>
                <img alt="颜色01极光色" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/mV2-ksyZXdCRoQfNKn4IQQ.jpg">
                <img alt="颜色03亮黑色" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/BeviTl7rBFL-atCxscFLnA.jpg">
                <img alt="颜色05珠光贝母" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/9jn33p96kxyfj64xCCE_cw.jpg">
                <img alt="颜色02天空之境" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/lI4pPT93xYMaLhs_Q96PqA.jpg">
                <img alt="宝贝主图03" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/DiwRUpBkOKtK1iEtEgTlzg.jpg">
                <img alt="宝贝主图04" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/8r68D6T7pD9V1xb8_OoZVQ.jpg">
                <img alt="详情08" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/OUDFDO2J5UPiyZYKrRIgZg.jpg">
                <img alt="详情07" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/6zE2K6KcQjtyuklZpnQSaQ.jpg">
                <img alt="详情11" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/nj8CKol6vLsD8V8n3CNR2A.jpg">
                <img alt="宝贝主图05" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/8syjpRNBUeetk444A-Ks-A.jpg">
                <img alt="颜色04赤茶橘" src="https://uimgproxy.suning.cn/uimg1/sop/commodity/Q8hUWKb3iTudzEQyW_sjBA.jpg">
                <{4}>
            </p>
            <div class="swiper" style="margin-bottom:60px;margin-top:10px;">
                <div class="swiper-container swiper-container-initialized swiper-container-vertical swiper-container-android" id="swiperc02">
                    <div class="swiper-wrapper" style="transition-duration: 300ms; transform: translate3d(0px, -200px, 0px);">
                        <{include file="common/goods_slide2.inc.tpl"}>
                    </div>

                </div>
            </div>
        </div>

        <div style="width: 100%;height: 5px;background-color: #f9f9f9;"></div>

        <div id="zz" class="zz" style="display: none;">
            <img id="coupon" class="pon" src="<{'web/images/coupon2.png'|static}>">
        </div>
        <div id="z1" class="zz" style="display: none;">
            <div class="zbox">
                <div class="chazz" style="float: right;margin-top: -20px;margin-right:4px;">
                    <img style="width: 30px;" src="<{'web/images/cha_icon1.png'|static}>">
                </div>
                <p class="zp">支付方式</p>
                <ul class="zul">
                    <li class="zuli" id="person1">
                        <div class="zlipd1">
                            <img class="zliImg ds" src="<{'web/images/weixin.png'|static}>" alt="">
                            <p class="zlip1 ds">微信支付</p>
                        </div>
                        <div class="zlipd2">
                            <p class="zlip3 ds">推荐</p>
                            <img class="zrad ds" src="<{'web/images/radio.png'|static}>">
                        </div>
                        <div class="zlipdbottom">使用微信支付·方便快捷</div>
                        <div style="clear: both;"></div>
                    </li>
                    <li class="zuli" id="person2">
                        <div class="zlipd1">
                            <img class="zliImg ds" src="<{'web/images/zhifubao.png'|static}>" alt="">
                            <p class="zlip1 ds">支付宝支付</p>
                        </div>
                        <div class="zlipd2">
                            <p class="zlip3 ds">推荐</p>
                            <img class="zrad ds" src="<{'web/images/radio1.png'|static}>">
                        </div>
                        <div class="zlipdbottom">使用支付宝支付<span>(支持花呗)</span></div>
                        <div style="clear: both;"></div>
                    </li>
                    <li class="zuli" id="person3">
                        <div class="zlipd1">
                            <img class="zliImg ds" src="<{'web/images/qianbao.png'|static}>" alt="">
                            <p class="zlip1 ds">货到付款</p>
                        </div>
                        <div class="zlipd2">
                            <img class="zrad ds" src="<{'web/images/radio1.png'|static}>">
                        </div>
                        <div class="zlipdbottomh">无线上支付·货到后在付款</div>
                        <div style="clear: both;"></div>
                    </li>
                    <li class="zuli">
                        <p class="zulbt" id="zulbtbut">确定</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <a href="<{url('search')}>.html"><img src="<{'web/images/dingdan02.png'|static}>" _rp="true" _rp_action="订单查询"
                                           style="position:fixed;bottom:120px;right:0px;width:60px;" _rp_category="年货节" _rp_label="<{$_goods.title}>" _rp_value="<{$_goods.id}>"></a>

    <script type="text/javascript" src="<{'web/js/layer/layer.js'|static}>"></script>
    <script type="text/javascript">
    </script>

    <script type="text/javascript" src="<{'web/js/swiper.min.js'|static}>"></script>
    <script src="<{'web/js/area.js'|static}>"></script>
    <script type="text/javascript" src="<{'web/js/jquery.lazyload.min.js'|static}>"></script>
    <script>
        $("#paytypemain li").click(function(){
            $(this).find('.zlipd2 img').attr('src','<{'web/images/radio.png'|static}>').parent().parent().siblings().find('.zlipd2 img').attr('src','<{'web/images/radio1.png'|static}>');
            $("#paytypemain").attr('data-id',$(this).attr('data-id'));
        })
        $(window).scroll(function () {
            var scrollTop = $(this).scrollTop();
            var scrollHeight = $(document).height();
            var windowHeight = $(this).height();
            //console.log(scrollHeight - scrollTop);
            if (scrollHeight - scrollTop < 900) {
                if(pd == 1){
                    return;
                }else{
                    $(".xiadan").trigger("click");
                }



            }
        });


        $(function () {
            var dateTime = new Date(new Date(new Date().toLocaleDateString()).getTime() + 24 * 60 * 60 * 1000 - 1);
            setInterval(function () {
                var endTime = new Date(dateTime.getTime());
                var nowTime = new Date();
                var nMS = endTime.getTime() - nowTime.getTime();
                var myD = Math.floor(nMS / (1000 * 60 * 60 * 24));
                var myH = Math.floor(nMS / (1000 * 60 * 60)) % 24;
                var myM = Math.floor(nMS / (1000 * 60)) % 60;
                var myS = Math.floor(nMS / 1000) % 60;
                var myMS = Math.floor(nMS / 100) % 10;
                if (myD >= 0) {
                    if (myH <= 9) myH = '0' + myH;
                    if (myM <= 9) myM = '0' + myM;
                    if (myS <= 9) myS = '0' + myS;

                    $("#time_t1a").text(myH);
                    $("#time_t1b").text(myM);
                    $("#time_t1c").text(myS);
                } else {
                    $("#time_t1a").text("00");
                    $("#time_t1b").text("00");
                    $("#time_t1c").text("00");
                }
            }, 100);
        });


        function setVulue() {

            var aaa = document.getElementById("kucun");
            aaa.innerHTML = "1000000";
        }

        <!-- Initialize Swiper -->
        var swiper = new Swiper('#swiperc01', {
            pagination: {
                el: '#swiperp01',
            },
        });

        var swiper = new Swiper('#swiperc02', {
            direction: 'vertical',
            slidesPerView: 2,
            mousewheel: true,
            allowTouchMove: false,
            loop: true,
            autoplay: {
                delay: 2000,
                stopOnLastSlide: false,
                disableOnInteraction: false,
            }
        });

        var swiper = new Swiper('.swiper-container21', {
            direction: 'vertical',
            loop: true,
            autoplay: {
                delay: 2500,
                stopOnLastSlide: false,
                disableOnInteraction: false,
            }
        });

        $('#coupon').click(function (argument) {
            // body...
            $('#zz').hide()
        })

        var Phone = $("#txt_SecutiryPhone");
        var Phone_reg = /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/;
        Phone.blur(function () {
            if (Phone_reg.test(Phone.val())) {
                $(".Phone img").show();
                $(".Phone img").attr("src", "http://img.yitanjj.com/h5danpin/shophsl01/dist/images/dui.png");
            } else {
                $(".Phone img").show();
                $(".Phone img").attr("src", "http://img.yitanjj.com/h5danpin/shophsl01/dist/images/cuo.png");
                // Phone.focus();
            }
        })

        /**
         * 懒加载
         */
        $("img.img-lazy").lazyload({threshold: 180});

        //写cookies
        function setCookie(name, value) {
            var Days = 30;
            var exp = new Date();
            exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
            document.cookie = name + "=" + escape(value) + ";path:/;expires=" + exp.toGMTString();
        }

        //读取cookies
        function getCookie(name) {
            var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");

            if (arr = document.cookie.match(reg))

                return unescape(arr[2]);
            else
                return null;
        }

        //删除cookies
        function delCookie(name) {
            var exp = new Date();
            exp.setTime(exp.getTime() - 1);
            var cval = getCookie(name);
            if (cval != null)
                document.cookie = name + "=" + cval + ";path:/;expires=" + exp.toGMTString();
        }

        $("#kefu").click(function () {
            //$(".content").hide();
            $("#service_zz").show();
        });
        $("#cha").click(function () {
            //$(".content").show();
            $("#service_zz").hide();
        });
        $("#zz").click(function () {
            $(this).hide();
            window.location.href = "#dingdanxinxi";
            $("#price").val(148);
            $(".inputNum").val(1);
            $("#isvip").val(1);
            $(".I_li_p3 b").text("￥" + 148);
            $("#youhuijuan01").show();
            $("#youhuijuan02").show();
        });

        $('.footDialogBg').click(function () {
            if ($(this).hasClass('footDialogBg')){
                $('.fd_title_close').click();
            }
        });

        $('.footDialog').click(function () {
            return false;
        });

        $('.fd_title_close').click(function () {
            $(document.body).css('overflow','auto');
            $('.footDialogBg').css('background-color','rgba(0,0,0,0)');
            $('.footDialogBg').css('z-index','-1');
            $('.footDialog').css('bottom','-100%');
        });

        $('#fuwucl').click(function(){
            $(document.body).css('overflow','hidden');
            $('.footDialogBg').css('background-color','rgba(0,0,0,0.4)');
            $('.footDialogBg').css('z-index','9999');
            $('.footDialog').css('bottom','0%');
        });
        /**城市*/
        $(function () {

            _init_area("addressProvince", "addressCity", "addressArea");
            $("#receiverName").val(getCookie("receiverName"));
            $("#phone").val(getCookie("phone"));
            var addressProvince=getCookie("addressProvince");
            var addressArea=getCookie("addressArea");
            var addressCity=getCookie("addressCity");
            if (addressProvince != null && $("#addressProvince").text().indexOf(addressProvince)){
                $("#addressProvince").val(addressProvince);
                $("#addressProvince").change();
            }
            if (addressCity != null && $("#addressCity").text().indexOf(addressCity)){
                $("#addressCity").val(addressCity);
                $("#addressCity").change();
            }
            if (addressArea != null && $("#addressArea").text().indexOf(addressArea)){
                $("#addressArea").val(addressArea);
            }

            $("#addressDetail").val(getCookie("addressDetail"));
        })

        var orderConfirm=true;
        /**form验证*/
        function f_checkForm() {
            var name = $("#receiverName").val();
            var tel = $("#phone").val();
            // var telcode = $("#phonecode").val();
            var addressProvince = $("#addressProvince").val();
            var addressArea = $("#addressArea").val();
            var addressCity = $("#addressCity").val();
            var district = $("#district").val();
            var addressDetail = $("#addressDetail").val();

            var nameReg = /^[\u4E00-\u9FA5]{2,6}$/ //姓名正则
            var numLetterReg = /^[0-9,a-z,A-Z]+$/ //纯字母正则
            if (name == '') {
                alert('收货人姓名不能为空');
                return false;

            }
            /* if(telcode == ''){
             alert('手机验证码不能为空');
             return false;
             }*/

            if (tel == '') {
                alert('请正确填写联系手机');
                return false;
            }
            if (!addressProvince || addressProvince== '' || addressProvince== '所属省份' ) {
                alert('请选择所属省份');
                return false;
            }
            if (!addressCity || addressCity== '' || addressCity== '所属地级市' ) {
                alert('请选择所属地级市');
                return false;
            }
            if ( !addressArea || addressArea== '' || addressArea== '所属区县') {
                alert('请选择所属区县');
                return false;
            }

            if (addressDetail == '') {
                alert('请填写详细地址');
                return false;
            }
            var re = /^1[3|4|5|6|8|7|9][0-9]\d{8}$/;
            if (tel.length != 11 || !re.test(tel)) {
                alert('请填写有效的手机号码');
                return false;
            }
            if (noEmoji(name) == ''){
                alert('收货人姓名不能为特殊字符,请重新输入');
                return false;
            }
            if (noEmoji(addressDetail) == ''){
                alert('详细地址不能为特殊字符,请重新输入');
                return false;
            }
            if (noEmoji(name).trim().length > 20){
                alert('收货人姓名过长,请重新输入');
                return false;
            }
            if (noEmoji(addressDetail).trim().length > 200){
                alert('详细地址过长,请重新输入');
                return false;
            }
            var jifen = '<{$_myInventory}>';
            var goodPoints= '<{$_goods.integral}>';
            if (jifen < goodPoints){
                $('#posttongji').attr("_rp_value",tel);
                $('#posttongji').click();
                alert("购买商品所需积分不足，无法下单");
                return false;
            }
            if (!orderConfirm){
                $('#ocname').text(name);
                $('#ocphone').text(tel);
                $('#ocaddress').text(addressProvince+' '+addressCity+' '+addressArea+' '+addressDetail);
                $('.zz2').show();
                return false;
            }
            setCookie("addressProvince",addressProvince);
            setCookie("addressArea",addressArea);
            setCookie("addressCity",addressCity);
            setCookie("phone",tel);
            setCookie("receiverName",name);
            setCookie("addressDetail",addressDetail);
            return true;
        }

        $('.txbt').click(function (){
            $('.zz2').hide();
        });
        $('.txbt1').click(function (){
            $('.zz2').hide();
            orderConfirm=true;
            $('#subt').click();
        });
        var system = {
            win: false,
            mac: false,
            xll: false,
            ipad:false
        };
        //检测平台
        var p = navigator.platform;
        system.win = p.indexOf("Win") == 0;
        system.mac = p.indexOf("Mac") == 0;
        system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
        system.ipad = (navigator.userAgent.match(/iPad/i) != null)?true:false;
        if (system.win || system.mac || system.xll||system.ipad) {
            $("#aiismob").val("pc");
        } else {
            $("#aiismob").val("wap");　
        }
            /**提交订单*/
            $("#subt").click(function () {
                $("#subt").attr("disabled", "true");
                if (f_checkForm()) {
                    var jsonObj = {};
                    $($('#order-form').serializeArray()).each(function () {
                        jsonObj[this.name] = this.value;
                    });
                    console.log(jsonObj);
                    //jsonObj.userId=userId;
                    jsonObj.receiverName=noEmoji(jsonObj.receiverName).trim();
                    jsonObj.addressDetail=noEmoji(jsonObj.addressDetail).trim();
                    if(jsonObj.addressProvince!=jsonObj.addressCity){jsonObj.addressall=jsonObj.addressProvince+jsonObj.addressCity+jsonObj.addressArea+jsonObj.addressDetail;}
                    else{jsonObj.addressall=jsonObj.addressCity+jsonObj.addressArea+jsonObj.addressDetail;}
                    if (jsonObj.receiverName == ''){
                        alert('收货人姓名不能为特殊字符,请重新输入');
                        $("#subt").removeAttr("disabled");
                        return false;
                    }
                    if (jsonObj.addressDetail == ''){
                        alert('详细地址不能为特殊字符,请重新输入');
                        $("#subt").removeAttr("disabled");
                        return false;
                    }
                    /*-----第一次提交数据----------*/
                    $("#ainame").val(jsonObj.receiverName);
                    $("#aiproname").val($(".biaotide").text());
                    $("#aiproup").val($(".jifensheng2").text());
                    $("#aiprice").val($(".jifensheng2").text());
                    $("#AIDDURL").val(document.location.href);
                    $("#aimob").val(jsonObj.phone);
                    $("#aiaddress").val(jsonObj.addressall);
                    $("#aiproduct1").val($(".biaotide").text()+"所需"+$("#goodPoints").text()+"积分"+"需付￥"+$(".jifensheng2").text());
                    /*-----第一次提交数据----------*/
                    /*-----第二次次提交数据----------*/

                    jsonObj.productname=$(".biaotide").text(); //产品名称
                    jsonObj.producttopimg=encodeURI($(".I_img").eq(0).attr("src"));//产品图片链接
                    jsonObj.productjifen= $("#goodPoints").text();//产品积分
                    jsonObj.productjiage= $(".jifensheng2").text();//所需价格
                    jsonObj.productyuanjia =$(".jifensheng1").text();//原价
                    jsonObj.productdikoujia =$(".jifensheng3").text();//积分抵扣价格

                    /*-----第二次次提交数据----------*/
                    if($("#aiaddress").val()!=""&&$("#ainame").val()!=""&&$("#aimob").val()!="") {

                        var data = {};
                        data.gid=$("#shop_id").val();
                        data.realname = $("#receiverName").val();
                        data.mobile = $("#phone").val();
                        data.address = $("#addressDetail").val() + $("#addressProvince").val()+"-"+$("#addressCity").val()+"-"+$("#addressArea").val();
                        var paytypes = $("#paytypemain").attr('data-id');
                        if(paytypes == ''){
                            paytypes = $("#paytypemain li").attr('data-id');
                        }
                        data.pay_type = paytypes;
                        if(data.paytypes == ''){
                            alert("请选择支付方式");
                            return false;
                        }

                        $.ajax({
                            type:"POST",
                            url:"<{url('order/store')}>",
                            dataType:"json",
                            contentType:"application/json",
                            data:JSON.stringify(data),
                            success:function(res){
                                console.log(res);

                                if(res.result == 'success'){
                                    location.href= "/order/"+res.data.order_id;
                                }
                                if(res.result == "error"){
                                    alert(res.message);
                                    $("#subt").removeAttr("disabled");
                                }

                            }
                        });
                    }


                } else {
                    $("#subt").removeAttr("disabled");
                }

            });
        function noEmoji(str,s) {
            var reg = /[^\u0020-\u007E\u00A0-\u00BE\u2E80-\uA4CF\uF900-\uFAFF\uFE30-\uFE4F\uFF00-\uFFEF\u0080-\u009F\u2000-\u201f\u2026\u2022\u20ac\r\n]/g;
            if (str.match(reg)) {
                return str.replace(reg, s || '');
            }
            return str;
        }
        $(".kefu").click(function () {
            window.location.href = "<{url('chat')}>.html";
        });
        var leg =1;
        var pd = 0;
        setInterval(function () {
            if(leg==1){
                $(".xiadan").css("background","#ffb40e");
                leg=2;
            }else{
                $(".xiadan").css("background","#e00000");
                leg=1;
            }
        }, 300);
        $(".xiadan").click(function(){
            $("html, body").animate({
                scrollTop: $('#dingdanxinxi').offset().top  + "px"
            }, {
                duration: 500,
                easing: "swing"
            });
            $(".shopimg").hide();
            $(".I_box").show();
            $('.I_but').hide();
            $(".I_t_hena").removeClass("I_t_henbg"); //移除
            $("#dingdanxinxi").children(".I_t_hena").addClass("I_t_henbg"); // 追加样式
            pd = 1
        });
        $("#dingdanxinxi").click(function(){
            $(".shopimg").hide();
            $(".I_box").show();
            $('.I_but').hide();
            $(".I_t_hena").removeClass("I_t_henbg"); //移除
            $(this).children(".I_t_hena").addClass("I_t_henbg"); // 追加样式
            pd = 1
        });
        $("#dingdanxinxi1").click(function(){
            $(".shopimg").show();
            $(".I_box").hide();
            $('.I_but').show();
            $(".I_t_hena").removeClass("I_t_henbg"); //移除
            $(this).children(".I_t_hena").addClass("I_t_henbg"); // 追加样式
            pd = 0
        });
    </script>
    <{/block}>
