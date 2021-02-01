<div class="tab-content">
	<div class="tab-pane active" id="form-1">
		<div class="form-group">
			<label class="col-md-3 control-label" for="title">标题</label>
			<div class="col-md-9">
				<input type="text" id="title" name="title" class="form-control" placeholder="请输入标题" value="<{$_data.title}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="number">每套数量</label>
			<div class="col-md-9">
				<input type="number" id="number" name="number" class="form-control" placeholder="请输入数量"
					   value="<{$_data.number}>">
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
			<label class="col-md-3 control-label" for="sales">销量</label>
			<div class="col-md-9">
				<input type="sales" id="sales" name="sales" class="form-control" placeholder="请输入销量"
					   value="<{$_data.sales}>">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="price">单价</label>
			<div class="col-md-9">
				<input type="price" id="price" name="price" class="form-control" placeholder="请输入单价"
					   value="<{$_data.price}>">
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
			<label class="col-md-3 control-label" for="goods_category">分类</label>
			<div class="col-md-9">
				<select name="goods_category" id="goods_category" class="form-control">
					<{foreach catalog_search('fields.goods_category', 'children') as $item}>
				<option value="<{$item.id}>" <{if !empty($_data.goods_category) && $_data.goods_category.id == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="account_type">账号类型</label>
			<div class="col-md-9">
				<select name="account_type" id="account_type" class="form-control">
					<{foreach catalog_search('fields.account_type', 'children') as $item}>
				<option value="<{$item.id}>" <{if !empty($_data.account_type) && $_data.account_type.id == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div><div class="form-group">
			<label class="col-md-3 control-label" for="goods_status">状态</label>
			<div class="col-md-9">
				<select name="goods_status" id="goods_status" class="form-control">
					<{foreach catalog_search('status.goods_status', 'children') as $item}>
				<option value="<{$item.id}>" <{if !empty($_data.goods_status) && $_data.goods_status.id == $item.id}>selected<{/if}>><{$item.title}></option>
					<{/foreach}>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="cover_id">封面</label>
			<div class="col-md-9">
				<input type="hidden" id="cover_id" name="cover_id" class="form-control" value="<{$_data.cover_id|default:0}>">
			</div>
		</div>

		<div class="form-group">
			<label class="col-md-3 control-label" for="description">描述</label>
			<div class="col-md-9">
				<textarea name="description" id="description" class="form-control"><{$_data.description}></textarea>
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
