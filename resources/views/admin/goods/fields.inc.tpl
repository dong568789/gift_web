<div class="tab-content">
	<div class="tab-pane active" id="form-1">
		<div class="form-group">
			<label class="col-md-3 control-label" for="title">标题</label>
			<div class="col-md-9">
				<input type="text" id="title" name="title" class="form-control" placeholder="请输入标题" value="<{$_data.title}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="price">现价</label>
			<div class="col-md-9">
				<input type="price" id="price" name="price" class="form-control" placeholder="请输入单价"
					   value="<{$_data.price}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="price">原价</label>
			<div class="col-md-9">
				<input type="price" id="price" name="price" class="form-control" placeholder="请输入单价"
					   value="<{$_data.price}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="integral">积分</label>
			<div class="col-md-9">
				<input type="price" id="integral" name="integral" class="form-control" placeholder="请输入积分"
					   value="<{$_data.integral}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="inventory">库存</label>
			<div class="col-md-9">
				<input type="inventory" id="inventory" name="inventory" class="form-control" placeholder="请输入库存"
					   value="<{$_data.inventory}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="hot">热度</label>
			<div class="col-md-9">
				<input type="sales" id="hot" name="hot" class="form-control" placeholder="请输入热度"
					   value="<{$_data.hot}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="order">排序</label>
			<div class="col-md-9">
				<input type="order" id="order" name="order" class="form-control" placeholder="请输入排序"
					   value="<{$_data.order}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="goods_status">状态</label>
			<div class="col-md-9">
				<{foreach catalog_search('status.goods_status', 'children') as $v}>
				<label class="radio-inline">
					<input type="radio" name="goods_status" value="<{$v.id}>" <{if !empty($_data.goods_status) && $_data.goods_status.id == $v.id}>checked="checked"<{/if}> > <{$v.title}>
				</label>
				<{/foreach}>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="cover">封面</label>
			<div class="col-md-9">
				<input type="hidden" id="cover" name="cover" class="form-control" value="<{$_data.cover|default:0}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="att_ids">轮播图</label>
			<div class="col-md-9">
				<select multiple="multiple" class="hidden" id="att_ids" name="att_ids[]">
					<{foreach $_data.att_ids as $id}>
					<option value="<{$id}>" selected="selected"><{$id}></option>
					<{/foreach}>
				</select>
				<div class="help-block">最多可以上传20张，继续点击按钮表示添加图片，删除图片，请点击 <span class="fa fa-times"></span> 或 <span
							class="fa fa-trash"></span></div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="content">内容</label>
			<div class="col-md-9">
				<textarea name="content" id="content" ><{$_data.content}></textarea>
			</div>
		</div>
	</div>
</div>
<div class="form-group form-actions">
	<div class="col-md-9 col-md-offset-3">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> 提交</button>
	</div>
</div>
