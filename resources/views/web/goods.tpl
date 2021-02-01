<{extends file="extends/main.block.tpl"}>
<{block "body-container"}>
<{include file="common/head.inc.tpl"}>
<div class="am-container" style="padding:2px">
    <div class="am-panel am-panel-default" style="margin:5px 0 5px 0;border-radius: 0px">
        <div class="am-panel-bd liebiaocatname">
            <p style="font-size:14px;"=""> <span style="font-size:18px;color:#009900;"><b>购买流程：</b></span>
            </p>
            <p style="font-size:14px;"=""><span style="font-size:18px;color:#E53333;"><span style="color:#E53333;">选择商品→点击购买→选择付款方式→立即付款→付款后等待几秒自动显示账号密码→若没跳转请用付款单号顶部查单！</span></span>
            </p></div>
    </div>
    <script>
        $(function(){
            if($("#kucun").val()==0){
                $("#paysubmit").attr("class", 'layui-btn layui-btn-big layui-btn-disabled');
                $("#paysubmit").attr("disabled", true);
                $("#paysubmit").html("商品被抢光了，下次请早点来");
            }
        });
    </script>
    <div class="good-trade">
        <form action="<{url('order/store')}>" method="post" onsubmit="return checkform()"
              style="background-color:#fff;
        padding:4px">
            <{csrf_field() nofilter}>
            <fieldset class="layui-elem-field">
                <legend>商品信息</legend>
                <div class="am-g ">
                    <div class="am-u-sm-12 am-u-md-5 am-u-lg-5 trade-goodimg am-u-end" style="padding: 0px;text-align: center">
                        <div class="layui-field-box">
                            <p><img src="<{null|attachment}>/<{$_goods.cover_id}>" alt="" height="300px" width="100%"></p>
                        </div>
                    </div>
                    <div class="am-container" style="padding:2px">
                        <div class="am-panel am-panel-default">
                            <div class="am-panel-hd">确认订单信息</div>
                            <div class="am-panel-bd">
                                <ul class="am-list am-list-static" >
                                    <span style="color:red"><font color="#333333">商品名称：</font><{$_goods.title}></span>
                                    <input type="hidden" value="<{$_goods.id}>" name="gid">
                                    <li>当前库存：<span style="color:red"><{$_goods.inventory}></span>件</li>
                                    <li>累积销量：<span style="color:red"><{$_goods.sales}></span>件</li>
                                    <li>商品单价：<span style="color:red"><{$_goods.price}></span>元/件</li>
                                    <li>购买数量：<input type="text" class="trade-input" value="1" id="count" name="number" style="height:27px;margin-right:5px">件</li>
                                    <li class="am-text-truncate">优惠活动：<{$_goods.description}></li>
                                    <li>代理价格：<a style="color:#6c6c6c;display:inline;" href="<{url('/')}>">代理登录</a></li> <input type="hidden" id="input-yhq" value="" name="input-yhq">
                                    <li>联系方式：<input type="text" name="contact" id="email" lay-verify="required" placeholder="手机或QQ号码或邮箱" autocomplete="off" class="layui-input"></li>
                                    <li> 付款方式：
                                        <select name="pay_type">
                                            <{foreach catalog_search('fields.pay_type', 'children') as $child}>
                                            <option value="<{$child.id}>" <{if $child.name == "wechat"}>selected="selected"<{/if}>><{$child.title}></option>
                                            <{/foreach}>
                                        </select></li>
                                </ul>
                                <span style="color:red">温馨提示：拍下自动发货的，填的联系方式也会收到账号信息！</span>
                            </div>
                        </div>
                        <hr>
                        <div style=" text-align: right;">
                            <button type="submit" class="am-btn am-btn-danger am-btn-xl" style="width: 100%" id="paysubmit">立即付款</button>
                            <input type="hidden" value="<{$_goods.inventory}>" id="kucun" name="kucun">
                            <input type="hidden" id="maxsl" value="0">
                        </div>
                    </div>
        </form>
        <script>
            function checkform(){
                var email = $("#email").val();
                if(!email){
                    layer.alert('请输入联系方式', {icon: 2});
                    return false;
                }else if(email.indexOf(" ")!= -1){
                    layer.alert('邮件中不得含空格', {icon: 2});
                    return false;
                }
                var count=$("#count").val();
                var kucun=$("#kucun").val();
                count=parseInt(count);
                kucun=parseInt(kucun);
                if(count>kucun){
                    layer.alert('购买数量大于库存量', {icon: 2});
                    return false;
                }
            }
        </script>
        </fieldset>
        <div class="am-panel am-panel-default" style="border-radius:0px;margin-top: 10px">
            <div class="am-panel-hd">商品描述</div>
            <div class="am-panel-bd">
               <{$_goods.content nofilter}>
            </div>
        </div>
    </div>
    <script>
        //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function () {
            var element = layui.element;
        });
    </script>
    <hr>
    <{include file="common/foot.inc.tpl"}>

    <{/block}>
