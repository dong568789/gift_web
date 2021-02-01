<{extends file="admin/extends/list.block.tpl"}>

<{block "title"}>产品<{/block}>

<{block "name"}>goods<{/block}>

<{block "filter"}>
<{include file="admin/goods/filters.inc.tpl"}>
<{/block}>

<{block "table-th-plus"}>
<th>标题</th>
<th>分类</th>
<th>账号类型</th>
<th>数量</th>
<th>库存</th>
<th>销量</th>
<th>单价</th>
<th>状态</th>
<{/block}>

<!-- DataTable的Block -->
<{block "table-td-plus"}>
<td data-from="title">{{data}}</td>
<td data-from="goods_category">{{data.title}}</td>
<td data-from="account_type">{{data.title}}</td>
<td data-from="number">{{data}}</td>
<td data-from="inventory">{{data}}</td>
<td data-from="sales">{{data}}</td>
<td data-from="price">{{data}}</td>
<td data-from="goods_status">{{data.title}}</td>
<{/block}>

<{block "table-td-options-delete-confirm"}>您确定删除这项：{{full.username}}吗？<{/block}>
