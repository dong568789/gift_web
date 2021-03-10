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
			<label class="col-md-3 control-label" for="appid">公众号appid</label>
			<div class="col-md-9">
				<input type="text" id="appid" name="value[appid]" class="form-control" placeholder="请输入公众号appid"
					   value="<{$_data.value.appid}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="mch_id">商户号</label>
			<div class="col-md-9">
				<input type="text" id="mch_id" name="value[mch_id]" class="form-control" placeholder="请输入商户号"
					   value="<{$_data.value.mch_id}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="mch_key">商户密钥</label>
			<div class="col-md-9">
				<input type="text" id="mch_key" name="value[mch_key]" class="form-control" placeholder="请输入商户密钥"
					   value="<{$_data.value.mch_key}>">
			</div>
		</div>
	</div>
</div>
<div class="form-group form-actions">
	<div class="col-md-9 col-md-offset-3">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> 提交</button>
	</div>
</div>
