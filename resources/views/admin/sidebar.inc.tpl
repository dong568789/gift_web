<!-- Main Sidebar -->
<div id="sidebar">
	<!-- Wrapper for scrolling functionality -->
	<div id="sidebar-scroll">
		<!-- Sidebar Content -->
		<div class="sidebar-content">
			<{block "sidebar-brand"}><{include file="admin/sidebar.brand.inc.tpl"}><{/block}>
			<{block "sidebar-user"}><{include file="admin/sidebar.user.inc.tpl"}><{/block}>
			<{block "sidebar-theme"}><{include file="admin/sidebar.theme.inc.tpl"}><{/block}>
			<{block "sidebar-navigation"}>
			<!-- Sidebar Navigation -->
			<ul class="sidebar-nav">
				<li>
					<a href="<{'admin'|url}>" class=""><i class="gi gi-stopwatch sidebar-nav-icon"></i>首页</a>
				</li>
				<li class="sidebar-header">
					<span class="sidebar-header-title">基本</span>
				</li>
				<{if $_permissionTable->checkUserRole('super')}>
				<li>
					<a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator"></i><i class="gi gi-user sidebar-nav-icon"></i>会员管理</a>
					<ul>
						<li><a href="<{'admin/member'|url}>" name="member/list">会员列表</a></li>
						<li><a href="<{'admin/member/create'|url}>" name="member/create"><i class="gi gi-plus"></i> 添加会员</a></li>
					</ul>
				</li>
				<{/if}>
				<li>
					<a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator"></i><i
								class="fa fa-shopping-bag sidebar-nav-icon"></i>产品管理</a>
					<ul>
						<li><a href="<{'admin/goods'|url}>" name="goods/list">产品列表</a></li>
						<li><a href="<{'admin/goods/create'|url}>" name="goods/create"><i class="gi gi-plus"></i>
								添加产品</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator"></i><i
								class="fa fa-jpy sidebar-nav-icon"></i>订单管理</a>
					<ul>
						<li><a href="<{'admin/order'|url}>" name="order/list">订单列表</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator"></i><i
								class="fa fa-address-card sidebar-nav-icon"></i>账号管理</a>
					<ul>
						<li><a href="<{'admin/account'|url}>" name="account/list">账号列表</a></li>
						<li><a href="<{'admin/account/create'|url}>" name="account/create"><i class="gi gi-plus"></i>
								添加产品</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator"></i><i
								class="fa fa-cog sidebar-nav-icon"></i>网站管理</a>
					<ul>
						<li><a href="<{'admin/setting/1/edit'|url}>" name="setting/list">网站设置</a></li>
					</ul>
				</li>
				<{pluginclude file="admin/sidebar.inc.tpl"}>
				<li><a href="<{'admin/auth/logout'|url}>"><i class="gi gi-exit sidebar-nav-icon"></i>退出系统</a></li>
			</ul>
			<!-- END Sidebar Navigation -->
			<{/block}>
		</div>
		<!-- END Sidebar Content -->
	</div>
	<!-- END Wrapper for scrolling functionality -->
</div>
<!-- END Main Sidebar -->
