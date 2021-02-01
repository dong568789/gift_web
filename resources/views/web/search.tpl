<{extends file="extends/main.block.tpl"}>
<{block "body-container"}>
<{include file="common/head.inc.tpl"}>
<style type="text/css">
    table.ordertable {
      font-family: verdana,arial,sans-serif;
      font-size:11px;
      color:#333333;
      border-width: 1px;
      border-color: #666666;
      border-collapse: collapse;
    }
    table.ordertable th {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #666666;
        background-color: #dedede;
    }
    table.ordertable td {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #666666;
        background-color: #ffffff;
    }
</style>
<div class="am-container" style="padding:2px">
    <div class="am-panel am-panel-default" style="margin:5px 0 5px 0;border-radius: 0px">
        <div class="am-panel-bd liebiaocatname">
            <p style="font-size:14px;"=""> <span style="font-size:18px;color:#009900;"><b>购买流程：</b></span></p>
            <p style="font-size:14px;"=""><span style="font-size:18px;color:#E53333;"><span style="color:#E53333;">选择商品→点击购买→选择付款方式→立即付款→付款后等待几秒自动显示账号密码→若没跳转请用付款单号顶部查单！</span></span></p>
        </div>
    </div>
    <div class="good-trade">
        <fieldset class="layui-elem-field">
            <legend>查询结果</legend>
            <div class="am-g ">
                <{if !empty($_orders)}>
                <{foreach $_orders as $order}>
                <p>订单号:<{$order.order_id}></p>
                <p>支付金额:<{$order.amount}></p>
                <p>订单信息:<{$order.goods_desc}></p>
                <table class="ordertable">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>密码</th>
                    </tr>
                    </thead>
                    <tbody>
                    <{if !empty($order.accounts)}>
                    <{foreach $order.accounts as $account}>
                    <tr>
                        <td><{$account.username}></td>
                        <td><{$account.password}></td>
                    </tr>
                    <{/foreach}>
                    <{else}>
                        <tr>
                            <td colspan="2">未查询到结果</td>
                        </tr>
                    <{/if}>
                    </tbody>
                </table>
                <{/foreach}>
                <{else}>
                    <p>未查询到结果</p>
                <{/if}>
            </div>

        </fieldset>
    </div>
    <{include file="common/foot.inc.tpl"}>
    <{/block}>
