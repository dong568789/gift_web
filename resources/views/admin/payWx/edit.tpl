<{extends file="admin/extends/edit.block.tpl"}>
<{block "title"}>微信<{/block}>
<{block "subtitle"}><{$_data.mark}><{/block}>

<{block "name"}>pay-wx<{/block}>

<{block "block-title-title"}>
<{include file="admin/payWx/fields-nav.inc.tpl"}>
<{/block}>

<{block "fields"}>
<{include file="admin/payWx/fields.inc.tpl"}>
<{/block}>
