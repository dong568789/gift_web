<{extends file="admin/extends/edit.block.tpl"}>
<{block "head-plus"}>
    <{include file="common/uploader.inc.tpl"}>
    <{include file="common/editor.inc.tpl"}>
<{/block}>

<{block "inline-script-plus"}>
    $('#cover').uploader();
    var $editor_content = UE.getEditor('content',$.ueditor_default_setting.simple);
    $('#att_ids').uploader({
    filelimit: 20
    });
<{/block}>
<{block "title"}>产品<{/block}>
<{block "subtitle"}><{$_data.title}><{/block}>

<{block "name"}>goods<{/block}>

<{block "block-title-title"}>
<{include file="admin/goods/fields-nav.inc.tpl"}>
<{/block}>

<{block "fields"}>
<{include file="admin/goods/fields.inc.tpl"}>
<{/block}>
