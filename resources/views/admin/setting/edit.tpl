<{extends file="admin/extends/edit.block.tpl"}>
<{block "head-plus"}>
    <{include file="common/uploader.inc.tpl"}>
<{/block}>

<{block "inline-script-plus"}>
    $('#wechat_qr').uploader();
    $('#logo').uploader();
<{/block}>
<{block "title"}>网站设置<{/block}>
<{block "subtitle"}><{$_data.title}><{/block}>

<{block "name"}>setting<{/block}>


<{block "block-title-title"}>
<{include file="admin/setting/fields-nav.inc.tpl"}>
<{/block}>

<{block "fields"}>
<{include file="admin/setting/fields.inc.tpl"}>
<{/block}>
