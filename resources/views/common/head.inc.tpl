
<style type="text/css">
    .am-container{
        max-width: 1200px;
    }
    .am-topbar .am-text-ir {
        display: block;
        margin-right: 10px;
        height: 60px;
        width: 130px;
        background: url("http://www.zhifubaomai.com/public/static/images/1576079088.png") no-repeat left center;
        -webkit-background-size: 125px 24px;
        background-size: 125px 24px;
    }
    /* 色调设置 */
    .am-topbar-inverse {
        background-color: #E54D42;
    }
    .thhead{
        background-color:#ffc6c6;color:#E54D42
    }
    .liebiaocatname{
        background-color: #fff0f0;color:#707070;
    }
    .wapcatname{
        background-color: #ffc6c6;color:#E54D42;
    }
    /* 色调设置 */
    /* .index_good_body{
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
      z-index: 2;
      } */

    .index_good_body:hover{
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        z-index: 2;
    }

    .am-topbar .am-text-ir{
        background: url("<{null|attachment}>/<{$_seo.logo}>") no-repeat;
    }
</style>
<script>
    function searchbtn(){
        layer.prompt({ title: '请输入订单号或联系方式', formType: 3 }, function (ddid, index) {
            window.location.href='/searchOrder.html?page=1&contact='+ ddid;

        });
    }
</script>

<header class="am-topbar am-topbar-inverse am-topbar-fixed-top">
    <div class="am-container">
        <h1 class="am-topbar-brand" style="margin:0 10px 0 0;">
            <a href="<{url('/')}>" class="am-text-ir" style="background-size: 130px 40px;"></a>
        </h1>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse-2'}">
            <span class="am-sr-only">ZFB批发</span>
            <span class="am-icon-bars"></span>
        </button>

        <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse-2">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li><a href="<{url('/')}>"><span class="am-icon-home am-icon-sm"></span>首页</a></li>
                <li><a href="<{url('/')}>" target="_blank"><i class="am-icon-qq am-icon-fw"></i>ZFB批发</a></li>
                <h1 class="am-topbar-brand" style="margin:0 10px 0 0;">
                    支付宝实名小号
                </h1>

                <h2 class="am-topbar-brand" style="margin:0 10px 0 0;">
                    支付宝小号出售
                </h2>
                <h2 class="am-topbar-brand" style="margin:0 10px 0 0;">
                    实名支付宝
                </h2>
                <h6 class="am-topbar-brand" style="margin:0 10px 0 0;">
                    24小时自动发货平台
                </h6>

            </ul>
            <div class="am-topbar-right">
                <ul class="am-nav am-nav-pills am-topbar-nav">
                    <li><a href="/"><span class="am-icon-users"></span>代理中心</a></li>
                    <li><a href="javascript: void(0)" onclick="searchbtn()"><span class="am-icon-search"></span>订单查询</a></li>
                </ul>

            </div>
        </div>
    </div>
</header>
