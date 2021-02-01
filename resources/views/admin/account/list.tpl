<{extends file="admin/extends/list.block.tpl"}>

<{block "title"}>账号<{/block}>

<{block "name"}>account<{/block}>

<{block "filter"}>
<{include file="admin/account/filters.inc.tpl"}>
<{/block}>

<{block "table-th-plus"}>
<th>用户名</th>
<th>密码</th>
<th>类型</th>
<th>锁定</th>
<{/block}>

<!-- DataTable的Block -->
<{block "table-td-plus"}>
<td data-from="username">{{data}}</td>
<td data-from="password">{{data}}</td>
<td data-from="account_type">{{data.title}}</td>
<td data-from="oid">{{if data}}已锁定{{else}}正常{{/if}}</td>
<{/block}>

<{block "table-td-options-delete-confirm"}>您确定删除这项：{{full.username}}吗？<{/block}>
