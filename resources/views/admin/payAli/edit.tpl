<{extends file="admin/extends/edit.block.tpl"}>
<{block "title"}>支付宝<{/block}>
<{block "subtitle"}><{$_data.mark}><{/block}>

<{block "name"}>pay-ali<{/block}>

<{block "block-title-title"}>
<{include file="admin/payAli/fields-nav.inc.tpl"}>
<{/block}>

<{block "fields"}>
<{include file="admin/payAli/fields.inc.tpl"}>
<{/block}>
