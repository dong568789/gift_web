<{extends file="admin/extends/list.block.tpl"}>

<{block "title"}>微信<{/block}>

<{block "name"}>pay-wx<{/block}>

<{block "filter"}>
<{include file="admin/payWx/filters.inc.tpl"}>
<{/block}>

<{block "table-th-plus"}>
<th>账户名</th>
<th>支付类型</th>
<th>状态</th>
<{/block}>

<!-- DataTable的Block -->
<{block "table-td-plus"}>
<td data-from="mark">{{data}}</td>
<td data-from="pay_type">{{data.title}}</td>
<td data-from="param_status"><span class="{{full.style}}">{{data.title}}</span></td>
<{/block}>

<{block "table-td-options-delete-confirm"}>您确定删除这项：{{full.username}}吗？<{/block}>
