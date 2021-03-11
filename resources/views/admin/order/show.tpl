
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title" id="exampleModalLabel">订单详细</h4>
</div>
<div class="modal-body">
    <table class="table table-striped" id="historyTable">
        <tbody>
        <tr>
            <td>订单号：</td>
            <td><{$_data.order_id}></td>

            <td>产品：</td>
            <td><{$_data.goods_desc}></td>
        </tr>
        <tr>
            <td>金额：</td>
            <td><{$_data.price}></td>
            <td>状态：</td>
            <td><{$_data.order_status.title}></td>
        </tr>
        <tr>
            <td>联系人：</td>
            <td><{$_data.realname}></td>
            <td>联系电话：</td>
            <td><{$_data.tel}></td>
        </tr>
        <tr>
            <td>地址：</td>
            <td><{$_data.address}></td>
        </tr>
        <tr>
            <td>备注：</td>
            <td><{$_data.mark}></td>
        </tr>
        </tbody>
    </table>
</div>
