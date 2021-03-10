<div class="tab-content">
	<div class="tab-pane active" id="form-1">
		<div class="form-group">
			<label class="col-md-3 control-label" for="mark">账户名</label>
			<div class="col-md-9">
				<input type="text" id="mark" name="mark" class="form-control" placeholder="请输入账户名" value="<{$_data.mark}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="goods_status">状态</label>
			<div class="col-md-9">
				<{foreach catalog_search('status.param_status', 'children') as $v}>
				<label class="radio-inline">
					<input type="radio" name="param_status" value="<{$v.id}>" <{if !empty($_data.param_status) && $_data.param_status.id == $v.id}>checked="checked"<{/if}> > <{$v.title}>
				</label>
				<{/foreach}>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="appid">支付宝应用id</label>
			<div class="col-md-9">
				<input type="text" id="appid" name="value[appid]" class="form-control" placeholder="请输入支付宝应用id"
					   value="<{$_data.value.appid}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="public_key">支付宝公钥</label>
			<div class="col-md-9">
				<textarea name="value[public_key]" id="" cols="30" rows="5" class="form-control"><{$_data.value.public_key nofilter}></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="private_key">应用私钥</label>
			<div class="col-md-9">
				<textarea name="value[private_key]" id="" cols="30" rows="5" class="form-control"><{$_data.value.private_key nofilter}></textarea>

			</div>
		</div>
	</div>
</div>
<div class="form-group form-actions">
	<div class="col-md-9 col-md-offset-3">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> 提交</button>
	</div>
</div>
