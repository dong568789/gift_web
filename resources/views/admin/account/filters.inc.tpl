<!-- Form Content -->
<form action="<{'admin'|url nofilter}>/<{block "name"}><{/block}>/" method="GET" class="form-bordered form-horizontal">
	<div class="form-group col-sm-4">
		<label class="col-md-3 control-label" for="username">用户名</label>
		<div class="col-md-9">
			<div class="input-group">
				<input type="text" id="username" name="f[username][lk]" class="form-control" placeholder="请输入关键词..." value="<{$_filters.username.lk}>">
			</div>
		</div>
	</div>
	<div class="form-group col-sm-4">
		<label class="col-md-3 control-label" for="username">类型</label>
		<div class="col-md-9">
			<div class="input-group">
				<select name="f[account_type]" id="account_type" class="form-control">
					<option value="">请选择</option>
					<{foreach catalog_search('fields.account_type', 'children') as $item}>
				<option value="<{$item.id}>" <{if $_filters.account_type.eq == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-4">
		<label class="col-md-3 control-label" for="username">锁定</label>
		<div class="col-md-9">
			<div class="input-group">
				<select name="f[account_lock]" id="account_lock" class="form-control">
					<option value="">请选择</option>
					<{foreach catalog_search('status.account_lock', 'children') as $item}>
				<option value="<{$item.id}>" <{if $_filters.account_lock.eq == $item.id}>selected<{/if}>><{$item.title}></option>
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
<div class="row">
	<div class="form-group col-sm-4">
		<div class="col-md-12">
			<a href="javascript:void(0);" id="importAccount" class="btn btn-info" data-toggle="modal"
			   data-target="#account-modal">
				导入账号
			</a>
		</div>
	</div>
</div>
<div class="modal fade bd-example-modal-lg" id="account-modal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content" style="width: 1024px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
							class="sr-only">关闭</span></button>
				<h4 class="modal-title">导入账号</h4>
			</div>
			<div class="modal-body">
				<form action="<{'admin'|url nofilter}>/account/import" method="post" enctype="multipart/form-data"
					  id="importCompanyForm">
					<{csrf_field() nofilter}>
					<div class="form-group">
						<label class="control-label" for="company">导入账号</label>
						<input type="file" class="form-control" name="account" value=""/>
					</div>
					<p class="help-block"><a href="<{url('/')}>/account.xlsx">示例模板下载</a></p>
					<button type="submit" class="btn btn-success account_btn">导入</button>
				</form>
			</div>
		</div>
	</div>
</div>
