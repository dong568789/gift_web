<{extends file="admin/extends/create.block.tpl"}>
<{block "head-plus"}>
    <{include file="common/uploader.inc.tpl"}>
    <{include file="common/editor.inc.tpl"}>
    <{/block}>

<{block "inline-script-plus"}>
    $('#cover_id').uploader();
    var $editor_content = UE.getEditor('content',$.ueditor_default_setting.simple);

    <{/block}>
<{block "title"}>产品<{/block}>
<{block "name"}>goods<{/block}>
<{block "block-title-title"}>
<{include file="admin/goods/fields-nav.inc.tpl"}>
<{/block}>
<{block "fields"}>
<{include file="admin/goods/fields.inc.tpl"}>
<{/block}>

