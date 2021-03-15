<{extends file="extends/main.block.tpl"}>
<{block "html-plus"}>style="font-size: 24.375px;"<{/block}>
<{block "head-styles-plus"}>
<link rel="stylesheet" type="text/css" href="<{'web/css/swiper.min.css'|static}>">
<link rel="stylesheet" type="text/css" href="<{'web/css/integral.css'|static}>">
    <{/block}>
<{block "body-container"}>

<div style="position:relative;top:0px;height:auto;margin-top:0px;" id="div1" align="center">
    <div style="position:absolute;top:0px;left:50%;width:100%;height:auto;margin-top:0px;margin-left:-50%;" align="center">
        <style>.zz { width: 100%; height: 100vh; position: fixed; top: 0; left: 0; background: rgba(0, 0, 0, .4); z-index: 100; } .tx { width: 80%; background-color: #fff; border-radius: 8px; position: absolute; top: 35vh; left: 0; right: 0; margin: 0 auto; } .txTxt { width: 100%; text-align: center; font-size: 16px; padding: 20px 0; color: #191919; font-weight: bold; } .txTxt1 { width: 100%; text-align: center; font-size: 16px; margin-bottom: 10px; color: #191919; font-weight: bold; } .txkd { width: 95%; height: 50px; line-height: 50px; border-top: 1px solid #EDEDED; margin: 10px auto 0; font-size: 0; } .txbt { display: inline-block; vertical-align: middle; width: calc(50% - 0.5px); text-align: center; color: #666666; font-weight: 600; font-size: 16px; } .txbt1 { display: inline-block; vertical-align: middle; width: calc(50% - 0.5px); text-align: center; color: #E00000; font-weight: 600; font-size: 16px; } .henDialog { display: inline-block; vertical-align: middle; width: 1px; height: 100%; background-color: #EDEDED; } .showMessage { padding: 5px 10px; border-radius: 5px; position: fixed; top: 45%; left: 45%; color: #ffffff; } .showMessageSuccess { background-color: #00B7EE; } .showMessageError { background-color: #ff0000; } .userbut { border: 0px; } .userbut2 { display: inline-block; vertical-align: middle; width: 4.3rem; padding: 5px 0; border-radius: 35px; } .bTxt { margin-top: 4px; color: #35363c; } .bput { margin-left: 7%; background-color: white; } .showMessage { padding: 5px 10px; border-radius: 5px; position: fixed; top: 45%; left: 45%; color: #ffffff; } .showMessageSuccess { background-color: #00B7EE; } .showMessageError { background-color: #ff0000; } .top_user { padding: 25px 3% 10px 3%; } .he1{ font-weight:700; } .cLi { box-shadow: 0px 1px 5px #efefef; }</style>
        <style>body{ background-color: #ffffff; } .ck { width: 50%; font-weight: 600; background: linear-gradient(90deg,rgba(255,219,73,1),rgba(255,204,9,1)); box-shadow: 0px 2px 5px 0px rgba(255,210,19,0.5); color: #020202; font-size: 14px; text-align: center; margin: 20px auto 0; border-radius: 20px; padding: 10px 0; } .cltxt1{ width: 95%; margin-left: 5px;font-size: 14px; color: #212121; text-align: center;} .cltxt1>span{ color: #ff3600; font-size: 16px; } .In_c_p4{ display: inline-block; vertical-align: middle; width: 44%; font-size: .5rem; text-align: left; margin-left: 5%; color: #222; } .In_c_p5{ display: inline-block; vertical-align: middle; font-size: .5rem; text-align: center; width: 46%; color: #222; } .In_c_p5 span{ color:#ff3600; } /*按钮选择*/ .jtab{ width: 100%; margin-top: 10px; margin-bottom: 10px; } .jtabUl{ width: 95%; margin: 0 auto; font-size: 0; } .jtabLi{ display: inline-block; vertical-align: middle; width: 20%; text-align: center; } .jtabLi>img{ width: 60%; } .jtabLi>p{ width: 100%; font-size: 12px; margin-top: 5px; color: #212121; } /*兑换排行*/ .ph{ width: 90%; } .ph1{ width: 100%; margin: 0 auto; text-align: left; font-size: 18px; font-weight: 900; color: #212121; } .phbox{ width: 100%; margin-top: 10px; font-size: 0; } .phLi{margin-right:5px; display: inline-block; vertical-align: top; width: 31%; position: relative; border-radius: 5px; overflow: hidden; } .phLi:nth-child(2){ margin: 10px 2%; } .phImg{ display: block; width: 100%; } .phImg1{ position: absolute; left: 0; top: 0; width: 30%; } .php1{ width: 95%; margin: 5px auto; font-size: 12px; color: #212121; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; } .php2{ width: 95%; margin: 0 auto; font-size: 14px; color: #212121; } .php2>span{ color: #DD1818; } .php3{ width: 95%; margin: 0 auto; font-size: 14px; color: #212121; } /*猜你喜欢*/ .cai{ width: 100%; } .cbox{ width: 94%; margin: 0 auto; } .cLi{ width: 48%; display: inline-block; vertical-align: middle; } .cLi:nth-child(odd){ margin-right: 1%; } .cLi:nth-child(even){ margin-left: 1%; } .climg{ width: 100%; } .dw_img { position: absolute; top: 0; left: 0; right: 0; bottom: 0; width: 50%; margin: auto; } .cltxt{ width: 95%; margin: 5px auto; font-size: 14px; color: #212121; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; } .cai { width: 100%; } .I_txt { width: 90%; margin: 15px auto 10px; font-size: 0; } .I_t_h2 { float: left; width: 40%; font-size: 18px; font-weight: 900; color: #212121; text-align: left; } .I_txt_ul { float: right; width: 59%; white-space: normal; overflow: hidden; text-align: right; } .I_txt_ul li { display: inline-block; vertical-align: middle; } .I_txt_li1 { background-color: #999999; color: #fff; font-size: 0.5rem; padding: 1px 3px; border-radius: 50%; } .ph { padding: 10px 5%; width: 90%; background-color: #9bc5ff; } .middle_box { width: 100%; padding: 10px 0; } body{ background: white; } .gray_opcity{ position: relative; width: 100%; } .gray_opcity:after{ position: absolute; content: ''; background-color: rgba(185,185,185,0.5); display: block; width: 100%; height: 100%; top: 0px; }.dw_img {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }</style>
        <div class="zz zz2" style="display: none;">
            <div class="tx">
                <h1 class="txTxt" style="color:#e00000;">温馨提示</h1>
                <p class="txTxt1">您的积分即将到期</p>
                <p class="txTxt1" style="margin-bottom: 20px;">为避免过期失效,请尽快使用</p>
                <ul class="txkd">
                    <li class="txbt" style="color:#999999;" _rp="true" _rp_category="积分对话框" _rp_action="残忍离开">残忍离开</li>
                    <p class="henDialog"></p>
                    <a class="txbt1" style="color:#e00000;" _rp="true" _rp_category="积分对话框" _rp_action="继续留下">好的</a></ul>
            </div>
        </div>
        <div class="content">
            <div class="top_box">
                <img class="c_Img" src="<{'web/images/bg.png'|static}>">
                <div class="top" style="position: fixed; z-index: 9999; display: inline-block;">
                    <img class="t_Img" src="<{'web/images/laba02.gif'|static}>">
                    <div class="t_txt">为促进消费，现赠送限时积分消费券.您的
                        <span class="jifenzhi" id="jifenSpan"><{$_myInventory}></span>积分将在
                        <script type="text/javascript">var date = new Date();
                            date.setDate(date.getDate() + 1);

                            document.write(date.getFullYear() + "年" + (date.getMonth() + 1) + "月" + date.getDate() + "日");</script>2021年3月14日过期</div>
                </div>
                <div class="top_user">
                    <img class="userImg" src="<{'web/images/jifen.jpg'|static}>">
                    <ul class="userbox">
                        <li class="u1" style="font-size: 0.6rem;">我的积分</li>
                        <li class="u2" style="color: #ff1a8d;">
                            <span class="jifenzhi"><{$_myInventory}></span>
                            <span id="channel_id"></span>
                        </li>
                    </ul>
                    <button class="userbut" style="display: inline-block;" onclick="qiansight()">立即签到</button>
                    <img src="<{'web/images/lianqujifen.gif'|static}>" class="userbut2" style="display: none;">
                    <div style="font-size: 0.5rem;margin-top: 5px;">
                        <span style="color: gray;margin-right: 1rem;" class="jifenrule">更多优惠</span>积分可以兑换商品,过期清零,请尽快使用</div></div>
            </div>
            <div class="swiper_box" style="clear:both">
                <div style="background:#fff;margin:0px 10px;padding:5px 0px;border-radius: 30px;">
                    <div class="swiper1">
                        <div class="swiper" style="background:rgba(0,0,0,.4);">
                            <div class="swiper-container swiper-container-initialized swiper-container-vertical swiper-container-ios swiper-container-android">
                                <div class="swiper-wrapper" style="transform: translate3d(0px, -90px, 0px); transition-duration: 0ms;">
                                    <{include file="common/slide.inc.tpl"}>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="time_box">
                        <p class="time_txt" style="color:#666666;">离结束</p>
                        <p class="time_t1" id="time_t1a">00</p>
                        <p class="time_t2">:</p>
                        <p class="time_t1" id="time_t1b">36</p>
                        <p class="time_t2">:</p>
                        <p class="time_t1" id="time_t1c">59</p></div>
                </div>
            </div>
            <!-- 选择按钮 -->
            <div class="jtab">
                <ul class="jtabUl">
                    <a href="<{url('/')}>">
                        <li class="jtabLi falme" _rp="true" _rp_category="中部导航" _rp_action="商品首页">
                            <img src="<{'web/images/index.png'|static}>">
                            <p>商品首页</p>
                        </li>
                    </a>
                    <a href="<{url('integral')}>.html">
                        <li class="jtabLi inter" _rp="true" _rp_category="中部导航" _rp_action="积分兑换">
                            <img src="<{'web/images/dh.png'|static}>">
                            <p>积分兑换</p>
                        </li>
                    </a>
                    <a href="<{url('chat')}>.html">
                        <li class="jtabLi kefu" _rp="true" _rp_category="中部导航" _rp_action="联系客服">
                            <img src="<{'web/images/kf.png'|static}>">
                            <p>联系客服</p>
                        </li>
                    </a>
                    <a href="<{url('integral')}>.html">
                        <li class="jtabLi youhui">
                            <img src="<{'web/images/lw.png'|static}>" _rp="true" _rp_category="中部导航" _rp_action="更多优惠">
                            <p>更多优惠</p>
                        </li>
                    </a>
                    <a href="<{url('search')}>.html">
                        <li class="jtabLi myorder" _rp="true" _rp_category="中部导航" _rp_action="订单查询">
                            <img src="<{'web/images/order.png'|static}>">
                            <p>订单查询</p>
                        </li>
                    </a>
                </ul>
            </div>

            <!-- 兑换排行榜 -->
            <!-- 猜你喜欢 -->
            <a name="maolist"></a>
            <div class="cai">
                <div class="I_txt">
                    <div class="hen">
                        <h1 class="he1" style="background: #ffffff;color: #000000;">严选好物</h1>
                        <p class="he2"></p>
                    </div>
                    <div style="clear: both;"></div>
                </div>
                <ul class="cbox">
                    <{foreach $_likeList as $item}>
                    <a href="<{url('goods', [$item.id])}>.html">

                        <li class="cLi box">
                            <div style="position: relative">
                                <img class="climg" src="<{null|attachment}>/<{$item.cover}>" alt="">
                            </div>
                            <p class="cltxt"><{$item.title}></p>
                            <p class="cltxt1">
                                <span><{$item.integral}></span>积分+
                                <span><{$item.price}></span>元</p>
                            <div data-v-299258b2="" style="width: 100%;font-size: 0px;margin-top: 5px;margin-left: -8px;">
                                <p data-v-299258b2="" class="In_c_p5">
                  <span data-v-299258b2="" style="">
                    <span style="color:#ff3600">热度<{$item.hot}>万+</span></span>
                                </p>
                            </div>
                        </li></a>
                    <{/foreach}>
                </ul>
            </div>
            <div style="margin-top:55px;line-height:15px;height:15px; font-size:8px;">@本次活动所有解释权归优品商城所有</div>
            <div style="width:100%;height:77px;"></div>
            <script type="text/javascript" src="<{'web/js/swiper.min.js'|static}>"></script>
            <script type="text/javascript" src="<{'web/js/integral.js'|static}>"></script>
            <div>
                <{include file="common/foot.inc.tpl"}>
            </div>
            <script type="text/javascript">
                function qiansight(){
                    $.post("<{url('qiandao')}>",function(res){
                        if(res.result == 'success'){
                            alert(res.message);
                            $(".jifenzhi").html(res.data.jifen);
                        }else{
                            alert(res.message);
                        }
                    })
                }
                $(function() {

                    var dateTime = new Date(new Date(new Date().toLocaleDateString()).getTime() + 24 * 60 * 60 * 1000 - 1);
                    setInterval(function() {
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
                            },
                            100);
                });
            </script>
        </div>
        <{/block}>
