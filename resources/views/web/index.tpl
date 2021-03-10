<{extends file="extends/main.block.tpl"}>
<{block "head-styles-plus"}>
    <style type="text/css">body {
            margin: 0;
        }

        .jImg {
            width: 100%;
        }

        .jImg1 {
            display: block;
            margin: 20px auto;
            width: 95%;
        }

        .jtab {
            margin-top: -5px;
            width: 100%;
        }

        .jtabUl {
            width: 95%;
            margin: 0 auto;
            font-size: 0;
        }

        .jtabLi {
            display: inline-block;
            vertical-align: middle;
            width: 20%;
            text-align: center;
        }

        .jtabLi > img {
            width: 60%;
        }

        .jtabLi > p {
            width: 100%;
            font-size: 12px;
            margin-top: 5px;
            color: #212121;
        }

        .jbox {
            width: 100%;
            margin: 0 auto;
        }

        .jh1 {
            width: 95%;
            margin: 0 auto;
            text-align: left;
            font-size: 18px;
            font-weight: 900;
            color: #212121;
        }

        .jhw {
            width: 100%;
            display: block;
        }

        .jitem {
            width: 100%;
            margin: 0 auto;
        }

        .jiUl {
            width: 99%;
            margin: 0 auto;
        }

        .jiLi {
            width: 46%;
            position: relative;
            margin: 0 2% 10px;
            display: inline-block;
            background: #fff;
            box-shadow: 0px 0px 6px 0px rgba(68, 68, 68, 0.1);
            border-radius: 8px;
            float: left;
        }

        .jiLimg {
            width: 100%;
            margin: 0 auto;
            display: block;
        }

        .jiPtxt {
            color: #333;
            width: 90%;
            margin: 0 auto;
            font-size: 14px;
            font-weight: 500;
            height: 42px;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 2;
            overflow: hidden;
        }

        .jiPtxt1 {
            width: 50%;
            margin-top: 10px;
            margin-left: 2.5%;
            border: 1px solid #FFD4D5;
            color: #FF5951;
            text-align: center;
            border-radius: 5px;
            font-size: 14px;
        }

        .jiPtxt2 {
            width: 95%;
            margin: 0 auto;
        }

        .jiPtxt3 {
            display: inline-block;
            vertical-align: middle;
            padding-bottom: 10px;
            font-weight: 900;
        }

        .jip1 {
            font-size: 12px;
        }

        .jip2 {
            font-size: 20px;
        }

        .jip3 {
            display: inline-block;
            vertical-align: middle;
            font-size: 12px;
            color: #969696;
        }

        body {
            background: white;
        }

        .cltxt1 {
            width: 95%;
            margin: 0 auto;
            font-size: 14px;
            color: #212121;
            padding-bottom: 5px;
        }

        .cltxt1 > span {
            color: #DD1818;
            font-size: 16px;
        }

        .dw_img {
        }</style>
    <style>
        @font-face{font-family:uc-nexus-iconfont;src:url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')}</style>

    <{/block}>

<{block "body-container"}>
    <{include file="common/head.inc.tpl"}>
    <div style="position:relative;top:0px;height:auto;margin-top:0px;" id="div1" align="center">
        <div style="position:absolute;top:0px;left:50%;width:100%;height:auto;margin-top:0px;margin-left:-50%;"
             align="center">
            <img class="jImg" src="<{'web/images/sy001.jpg'|static}>">
            <!-- 选择按钮 -->
            <div class="jtab">
                <ul class="jtabUl">
                    <a href="/index/index/index.html">
                        <li class="jtabLi falme" _rp="true" _rp_category="中部导航" _rp_action="商品首页">
                            <img src="<{'web/images/index.png'|static}>">

                            <p>商品首页</p>
                        </li>
                    </a>
                    <a href="/index/invest/index.html">
                        <li class="jtabLi inter" _rp="true" _rp_category="中部导航" _rp_action="积分兑换">
                            <img src="<{'web/images/dh.png'|static}>">

                            <p>积分兑换</p>
                        </li>
                    </a>
                    <a href="http://dalieba.cn/chat.html">
                        <li class="jtabLi kefu" _rp="true" _rp_category="中部导航" _rp_action="联系客服">
                            <img src="<{'web/images/kf.png'|static}>">

                            <p>联系客服</p>
                        </li>
                    </a>
                    <a href="/index/invest/index.html">
                        <li class="jtabLi youhui">
                            <img src="<{'web/images/lw.png'|static}>" _rp="true" _rp_category="中部导航" _rp_action="更多优惠">

                            <p>更多优惠</p>
                        </li>
                    </a>
                    <a href="/index/order/index.html">
                        <li class="jtabLi myorder" _rp="true" _rp_category="中部导航" _rp_action="订单查询">
                            <img src="<{'web/images/order.png'|static}>">

                            <p>订单查询</p>
                        </li>
                    </a>
                </ul>
            </div>
            <a href="/index/invest/index.html"> <img class="jImg1 sbImg" src="<{'web/images/QQ图片20210303173424.jpg'|static}>"></a>
            <!-- <img class="jImg1 sbImg" src="<{'web/images/QQ图片20210303173424.jpg'|static}>">-->
            <style type="text/css">
                .wrap{min-width: 320px;max-width:768px;margin:0 auto;overflow:hidden;position:relative;} .htit{line-height:1rem;padding:0 .3rem;color:#ff8e2e;font-size: .4rem;margin:1rem 0 .4rem 0} .wrapper02 {position:relative;height: 1.5rem;width: 94%;overflow: hidden;margin:10px auto;} .wrapper02 .scroller {position:absolute} .wrapper02 .scroller li {height: 1.5rem;color:#333;float: left;line-height: 1.5rem;font-size: .4rem;text-align: center;border-radius: 10px;} .wrapper02 .scroller li a{color:#333;display:block;margin:0 .3rem;text-decoration: none;} .wrapper02 .scroller li.cur{background:#1cbb9b} .wrapper02 .scroller li.cur a

                {color:#fff;}
            </style>
            <div class="wrapper wrapper02" id="retr">
                <div class="scroller"
                     style="width: 82px; transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
                    <ul class="clearfix">

                        <li class="cur" style="margin-left: 0px; margin-right: 0px;" data-id="0"><a
                                    href="javascript:void(0)">全部分类</a></li>

                    </ul>
                </div>
            </div>

            <div class="jitem">
                <h1 class="jh1">热门好物</h1>
                <ul class="jiUl" style="clear: both;margin-top: 10px;">
                    <a href="/index/invest/detail/id/220.html">
                        <li class="jiLi sbImg">
                            <img class="jiLimg" style="min-height:85px;max-height:245.91px;"
                                 src="/uploads/images/20210310/6562919f7bc76d619f42ce687f69aa9a.jpg">

                            <p class="jiPtxt">家用拖把</p>

                            <p class="jiPtxt1">限量抢购</p>

                            <div class="jiPtxt2">
                                <p class="cltxt1">
                                    <span>599</span>积分+
                                    <span>39</span>元</p></div>
                        </li>
                    </a>

                </ul>
            </div>
            <div style="margin-top:55px;line-height:15px;height:15px; font-size:6px;">@本次活动所有解释权归优品商城所有</div>
            <div style="width:100%;height:70px;clear: both;"></div>

            <{include file="common/foot.inc.tpl"}>
        </div>
    </div>

    <{/block}>
<{block "body-plus"}>
    <script type="text/javascript" src="<{'web/js/flexible.js'|static}>"></script>
    <script type="text/javascript" src="<{'web/js/iscroll.js'|static}>"></script>
    <script type="text/javascript" src="<{'web/js/navbarscroll.js'|static}>"></script>
    <script type="text/javascript">
        $(function () {
            $('.wrapper').navbarscroll();
            $(".clearfix li").click(function () {
                var id = $(this).attr('data-id');
                $.post("/index/index/getshop.html", {'id':id}, function (res) {
                    console.log(res);
                    var htmls = '';
                    for (var i = 0; i < res.length; i++) {
                        if (res[i].has_number < 1) {
                            htmls += '<a href="javascript:void(0)">';
                        } else {
                            htmls += '<a href="/index/invest/detail/id/' + res[i].id + '.html">';
                        }
                        htmls += '<li class="jiLi sbImg">'
                                + '<img class="jiLimg" style="min-height:85px;max-height:245.91px;" src="' + res[i].pic + '">';
                        if (res[i].has_number < 1) {
                            htmls += '<img class="dw_img" src="<{'web/images/'|static}>dw.png">';
                        }
                        htmls += '<p class="jiPtxt">' + res[i].title + '</p>'
                                + '<p class="jiPtxt1">';
                        if (res[i].has_number < 1) {
                            htmls += '热度';
                        } else {
                            htmls += "限量抢购";
                        }
                        htmls += '</p>'
                                + '<div class="jiPtxt2">'
                                + '<p class="cltxt1">'
                                + '<span>' + res[i].has_jifen + '</span>积分+'
                                + '<span>' + res[i].vip_price + '</span>元</p></div>'
                                + '</li>'
                                + '</a>';
                    }
                    $(".jiUl").html(htmls);
                })
            })
        });
        $(function () {
            window.history.pushState('forward', null, '#forward');
            //if(coupon!="true"){
            if (window.history && window.history.pushState) {
                $(window).on('popstate',
                        function () {
                            var hashLocation = location.hash;
                            var hashSplit = hashLocation.split('#!/');
                            console.log(hashSplit);
                            var hashName = hashSplit[0];
                            //if (hashName == '') {
                            //if(dj>0){
                            //window.location.href="#middle_box";
                            var url = "/"; //保留
                            window.location.href = url;
                            //}
                            //}
                        });
            }
            $(".sbImg").click(function () {
                var dataurl = $(this).attr("data-url");
                if (dataurl && dataurl.trim().length > 0) {
                    window.location.href = dataurl;
                }
            });

            $('.jImg1').click(function () {
                var url = "/"; //保留
                window.location.href = url;
            })
            $('.kefu').click(function () {
                var url = "/redirectKefu";
                //var url = "tel:4008317118";
                window.location.href = url;
            })
            $('.youhui').click(function () {
                var url = "/redirectKefu"; //保留
                window.location.href = url;
            })
        });</script>
    <{/block}>
