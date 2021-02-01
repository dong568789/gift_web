<{extends file="admin/extends/edit.block.tpl"}>
<{block "title"}>账号<{/block}>
<{block "subtitle"}><{$_data.username}><{/block}>

<{block "name"}>account<{/block}>

<{block "block-title-title"}>
<{include file="admin/account/fields-nav.inc.tpl"}>
<{/block}>

<{block "fields"}>
<{include file="admin/account/fields.inc.tpl"}>
<{/block}>
