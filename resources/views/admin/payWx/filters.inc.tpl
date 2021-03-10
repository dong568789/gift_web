<!-- Form Content -->
<form action="<{'admin'|url nofilter}>/<{block "name"}><{/block}>/" method="GET" class="form-bordered form-horizontal">
	<div class="form-group col-sm-4">
		<label class="col-md-3 control-label" for="mark">账户名</label>
		<div class="col-md-9">
			<div class="input-group">
				<input type="text" id="mark" name="f[mark][lk]" class="form-control" placeholder="请输入关键词..."
					   value="<{$_filters.mark.lk}>">
			</div>
		</div>
	</div>
	<div class="form-group col-sm-4 pull-right text-right">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-search"></i> 检索</button> &nbsp; &nbsp;
	</div>
	<div class="clearfix"></div>
</form>
