<{extends file="admin/extends/list.block.tpl"}>

<{block "title"}>订单<{/block}>

<{block "name"}>order<{/block}>

<{block "filter"}>
<{include file="admin/order/filters.inc.tpl"}>
<{/block}>

<{block "table-th-plus"}>
<th>订单号</th>
<th>产品</th>
<th>金额</th>
<th>数量</th>
<th>支付号</th>
<th>状态</th>
<th>发货</th>
<th>联系方式</th>
<th>ip</th>
<{/block}>

<!-- DataTable的Block -->
<{block "table-td-plus"}>
<td data-from="order_id">{{data}}</td>
<td data-from="goods_desc">{{data}}</td>
<td data-from="amount">{{data}}</td>
<td data-from="number">{{data}}</td>
<td data-from="third_id">{{data}}</td>
    <td data-from="order_status"><span class="label label-danger">{{data.title}}</span></td>
    <td data-from="send_account"><span class="label label-primary">{{data.title}}</span></td>
<td data-from="contact">{{data}}</td>
<td data-from="ip">{{data}}</td>
<{/block}>

<{block "table-td-options-plus"}>
{{if full.send_account.id != "<{catalog_search('status.send_account.success', 'id')}>"}}
    <a href="<{''|url}>/admin/order/rebill/{{full.id}}" method="put" confirm="您确定补单这项：{{full.id}}吗？"
       data-toggle="tooltip" title="补单" class="btn btn-xs btn-danger">补单</a>
{{else}}
    <a data-toggle="modal"  href="<{url('admin/order')}>/{{full.id}}" data-target="#accountModal" class="btn btn-xs btn-warning">账号</a>
{{/if}}
<{/block}>
<{block "table-tools-dropdown-operate"}><{/block}>
<{block "table-tools-create"}><{/block}>
<{block "table-th-timestamps-created_at"}><th>创建时间</th><{/block}>
<{block "table-th-timestamps-updated_at"}><{/block}>
<{block "table-td-timestamps-updated_at"}><{/block}>

<{block "table-td-options-edit"}><{/block}>
<{block "table-td-options-delete"}><{/block}>
<{block "table-td-options-delete-confirm"}>您确定删除这项：{{full.username}}吗？<{/block}>
<{block "body-plus"}>
<div class="modal fade" id="accountModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="height: 500px;overflow: scroll;">

        </div>
    </div>
</div>
<{/block}>
<{block "body-scripts"}>
<script>
    (function($){
        $(document).on('hidden.bs.modal', '#accountModal', function () {
            $(this).removeData("bs.modal");
            $(this).find('.modal-content').children().remove();
        });
    })(jQuery);
</script>
<{/block}>
