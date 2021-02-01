<{extends file="extends/main.block.tpl"}>

<{block "body-container"}>
    <{include file="common/head.inc.tpl"}>
<div class="am-container" style="padding:2px">

    <div class="am-show-portrait">
        <ul class="am-avg-sm-4 am-avg-md-4 am-avg-lg-4 am-thumbnails" style="text-align:center;margin-top: 10px;">
            <li><a href="javascript:searchbtn();"><svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xingzhuanggongnengtubiao-"></use>
                    </svg><br>订单查询</a></li>
            <li><a href="https://wpa.qq.com/msgrd?v=3&uin=<{$_seo.qq}>&site=qq&menu=yes"><svg class="icon"
                                                                                         aria-hidden="true">
                        <use xlink:href="#icon-icon_kefu"></use>
                    </svg><br>联系客服</a></li>
            <li><a href="<{url('/')}>"><svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-filedicon_memberco"></use>
                    </svg><br>代理中心</a></li>
            <li><a href="<{url('/')}>"><svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-bangzhuyufankui"></use>
                    </svg><br>商务合作</a></li>
        </ul>
    </div>
    <div class="am-panel am-panel-default" style="margin:5px 0 5px 0;border-radius: 0px">
        <div class="am-panel-bd liebiaocatname"><p>
            <p>
            <p style="font-size:14px;"=""> <span style="font-size:18px;color:#009900;"><b>网站公告：</b></span>
            </p>
            <p style="font-size:14px;"=""> <span style="font-size:18px;color:#E53333;"><span style="color:#9933E5;">ZFB账号一手货源批发,ZFB实名号购买,大量支付宝实名号批发！</span></span>
            </p>
            <p style="font-size:14px;"=""><span style="font-size:18px;"><span style="color:#8B4513;">ZFB美国接码白,ZFB,实名支付宝10元出售,实名认证淘宝号出售,ZFB批发！</span></span>
            </p>
            <p style="font-size:14px;"=""> <span style="font-size:18px;"><span style="color:#008000;">实名支付宝购买平台,支付宝绑卡号购买,企业支付宝购买,支付宝批发,购买实名支付宝！</span></span>
            </p>
            <p style="font-size:14px;"=""> <span style="font-size:18px;"><span style="color:#FF0000;">售后客服QQ：<{$_seo.qq}>&nbsp; &nbsp;7X24小时在线无忧售后 我们更专业更安全欢迎长期合作拿货！</span></span>
            </p>
            <p style="font-size:14px;"=""> <span style="font-size:18px;"><span style="color:#FF00FF;">【购买流程】选择商品→点击购买→选择付款方式→立即付款→付款后等待几秒自动显示账号密码→若没跳转请用付款单号顶部查单！</span></span>
            </p>
            </p></div>
    </div>
    <div class="goods">
        <div class="search w am-topbar-btn am-topbar-toggle">
            <form action="<{url('search')}>" method="get">
                <input name="ddid" type="text" class="search_input" placeholder="直接购买的用户输入订单号，联系方式" style="background-image: url(/static/images/iconfont-sousuo.png);">
                <input type="hidden" value="1" name="page">
                <input name="submit" type="submit" class="search_submit" value="查询"></form>
        </div>
        <div class="am-show-landscape">

            <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-thumbnails">
                <{foreach $_data.data as $item}>
                <li ><a href="<{url('goods', [$item.id])}>.html">
                        <div style="background-color: #fff;" class="index_good_body">
                            <img class="" src="<{null|attachment}>/<{$item.cover_id}>" style="width:100%;
                            height:280px"/>
                            <div class="pr-info" style="padding:5px">
                                <span class="price">¥<{$item.price}></span>
                                <span class="pr-xl am-badge am-badge-success" style="color:#fff">库存(<{$item.inventory}>)</span>

                                <div class="index-goodname-xq" style="height:45px;color:#333"><p title="<{$item.title}>"><{$item.title}></p></div>
                            </div>
                        </div>
                    </a>
                </li>
                <{/foreach}>
            </ul>
        </div>
        <div class="am-show-portrait">
            <div class="am-container">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12" style="padding:1px">
                        <div class="wapcatname" style="padding: 1px;text-align: center;">ZFB批发</div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12" style="border-bottom: #ccc 1px dashed">
                        <{foreach $_data.data as $item}>
                        <div style="background-color: #fff;height: 65px">
                            <div style="padding:0px">
                                <a href="<{url('goods', [$item.id])}>.html" style="color: #3c3c3c;">
                                    <img class="am-radius" alt="<{$item.title}>" src="<{null|attachment}>/<{$item.cover_id}>" width="60" height="60" style="float: left" />
                                    <div class="index-goodname-xq" style="height:38px;color:#333;"><p title="2017年支付老白一组5个" style="margin-left:5px;font-size: 10px"><{$item.title}></p></div>
                                    <div class="am-text-truncate" style="margin-left: 15px;">
                                        <div style="">
                                            <span class="am-badge am-badge-primary" style="margin-left: 5px">库存(<{$item.inventory}>)</span>
                                            <span class="am-badge am-badge-danger">销量(<{$item.sales}>)</span>
                                            <span style="color: #ff0000">
                                              <b>¥<{$item.price}></b>
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <{/foreach}>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-6 am-thumbnails" style="margin-top:10px">
        <li><a type="button" class="am-btn am-btn-success am-btn-hollow am-square" style="width:100%;color:#000"
               href="<{url('/')}>" target="_blank">ZFB批发</a></li>
        <li><a type="button" class="am-btn am-btn-success am-btn-hollow am-square" style="width:100%;color:#000" href="<{url('/')}>" target="_blank">支付宝实名小号</a></li>
    </ul>

    <div class="tongji"><br>©2020 ZFB批发</div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">
            订单查询
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd">
            请输入订单号/联系方式
            <input type="text" class="am-modal-prompt-input">
        </div>
        <div class="am-modal-footer">
            <button type="button" class="am-btn am-modal-btn am-btn-default am-btn-hollow" data-am-modal-cancel>取消</button>
            <button type="button" class="am-btn am-modal-btn am-btn-primary" data-am-modal-confirm>查询</button>
        </div>
    </div>
</div>
    <hr>
    <{include file="common/foot.inc.tpl"}>

    <{/block}>
