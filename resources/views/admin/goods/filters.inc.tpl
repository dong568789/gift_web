<!-- Form Content -->
<form action="<{'admin'|url nofilter}>/<{block "name"}><{/block}>/" method="GET" class="form-bordered form-horizontal">
	<div class="form-group col-sm-4">
		<label class="col-md-3 control-label" for="title">产品名称</label>
		<div class="col-md-9">
			<div class="input-group">
				<input type="text" id="title" name="f[title][lk]" class="form-control" placeholder="请输入关键词..."
					   value="<{$_filters.title.lk}>">
			</div>
		</div>
	</div>
	<div class="form-group col-sm-4">
		<label class="col-md-3 control-label" for="goods_status">状态</label>
		<div class="col-md-9">
			<div class="input-group">
				<select name="f[goods_status]" id="goods_status" class="form-control">
					<option value="">请选择</option>
					<{foreach catalog_search('status.goods_status', 'children') as $item}>
				<option value="<{$item.id}>" <{if $_filters.goods_status.eq == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-4 pull-right text-right">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-search"></i> 检索</button> &nbsp; &nbsp;
	</div>
	<div class="clearfix"></div>
</form>
