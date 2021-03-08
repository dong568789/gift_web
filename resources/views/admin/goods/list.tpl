<{extends file="admin/extends/list.block.tpl"}>

<{block "title"}>产品<{/block}>

<{block "name"}>goods<{/block}>

<{block "filter"}>
<{include file="admin/goods/filters.inc.tpl"}>
<{/block}>

<{block "table-th-plus"}>
<th>别名</th>
<th>标题</th>
<th>积分</th>
<th>单价</th>
<th>原始价格</th>
<th>排序</th>
<th>状态</th>
<{/block}>

<!-- DataTable的Block -->
<{block "table-td-plus"}>
<td data-from="alias">{{data}}</td>
<td data-from="title">{{data}}</td>
<td data-from="integral">{{data.title}}</td>
<td data-from="price">{{data.title}}</td>
<td data-from="original_price">{{data}}</td>
<td data-from="order">{{data}}</td>
<td data-from="goods_status">{{data.title}}</td>
<{/block}>

<{block "table-td-options-delete-confirm"}>您确定删除这项：{{full.username}}吗？<{/block}>
