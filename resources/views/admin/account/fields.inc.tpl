<div class="tab-content">
	<div class="tab-pane active" id="form-1">
		<div class="form-group">
			<label class="col-md-3 control-label" for="username">用户名</label>
			<div class="col-md-9">
				<input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" value="<{$_data.username}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="password">密码</label>
			<div class="col-md-9">
				<input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" value="<{$_data.password}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="account_type">类型</label>
			<div class="col-md-9">
				<select name="account_type" id="account_type" class="form-control">
					<{foreach catalog_search('fields.account_type', 'children') as $item}>
				<option value="<{$item.id}>" <{if !empty($_data.account_type) && $_data.account_type.id == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="account_lock">锁定</label>
			<div class="col-md-9">
				<select name="account_lock" id="account_lock" class="form-control">
					<{foreach catalog_search('status.account_lock', 'children') as $item}>
				<option value="<{$item.id}>" <{if !empty($_data.account_lock) && $_data.account_lock.id == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div>
	</div>
</div>
<div class="form-group form-actions">
	<div class="col-md-9 col-md-offset-3">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> 提交</button>
	</div>
</div>
