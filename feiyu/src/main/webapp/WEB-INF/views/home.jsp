<%@include file="/includes/common/taglibs.jsp"%>
<rapid:override name="body">
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->
		<!-- sidemenu Start -->

		<div id="sidebar">
			<div id="sidebar-wrapper">
				<!-- Sidebar with logo and menu -->

				<h1 id="sidebar-title">
					<a href="http://web.it600.net/home#">Nebula Admin</a>
				</h1>

				<!-- Logo (221px wide) -->
				<a href="./后台首页 _ 行云后台_files/后台首页 _ 行云后台.html"><img id="logo"
					src="${ctx}/img/logo.png" alt="Simpla Admin logo"></a>

				<!-- Sidebar Profile links -->
				<div id="profile-links">
					您好, <a href="http://web.it600.net/home/acc_set" title="编辑账户资料">kelylm@163.com</a><br>
					<br> 账户余额：<a href="http://web.it600.net/home/fin_pay"
						title="账户余额"><font color="green"> <b>0.00</b></font></a> 元<br>
					<br> <a href="http://web.it600.net/home/fin_pay"
						title="View the Site">账户充值</a> | <a
						href="http://web.it600.net/home/logout"
						onclick="if(confirm(&#39;确认退出网站账户吗&#39;)==false)return false;"
						title="退出网站账户">账户退出</a>
				</div>

				<ul id="main-nav">
					<!-- Accordion Menu -->

					<li><a href="./后台首页 _ 行云后台_files/后台首页 _ 行云后台.html"
						class="nav-top-item no-submenu" style="padding-right: 15px;">
							<!-- Add the class "no-submenu" to menu items with no sub menu -->
							后台首页
					</a></li>

					<li><a href="http://web.it600.net/home#" class="nav-top-item "
						style="padding-right: 15px;"> <!-- Add the class "current" to current menu item -->
							VPN服务管理
					</a>
						<ul style="display: none;">
							<li><a class=""
								href="http://web.it600.net/home/main_servers">服务器线路</a></li>
							<li><a class=""
								href="http://web.it600.net/home/main_vpnlist">VPN账号列表</a></li>
							<!-- Add class "current" to sub menu items also -->
							<li><a class="" href="http://web.it600.net/home/main_newvpn">新建VPN账号</a></li>
							<li><a class="" href="http://web.it600.net/home/main_renew">续费VPN账号</a></li>
						</ul></li>


					<li><a href="http://web.it600.net/home#" class="nav-top-item ">
							财务管理 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/fin_pay">账户充值</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_commission">佣金推介</a></li>
							<li><a class="" href="http://web.it600.net/home/fin_paylog">充值记录</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_orderlog">消费记录</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home#" class="nav-top-item "
						style="padding-right: 15px;"> 客服帮助 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/cs_billing">常见疑问</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_error">常见故障</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_tickets">工单列表</a></li>
							<li><a class=""
								href="http://web.it600.net/home/cs_ticketsadd">提交工单</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home#" class="nav-top-item ">
							账户相关 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/acc_set">修改账户密码</a></li>
							<li><a class=""
								href="http://web.it600.net/home/acc_loginrecord">后台登录记录</a></li>
							<li><a href="http://web.it600.net/home/logout"
								onclick="if(confirm(&#39;确认退出网站账户吗&#39;)==false)return false;"
								title="退出网站账户">退出账户</a></li>
						</ul></li>


				</ul>
				<!-- End #main-nav -->


			</div>
		</div>
		<!-- End #sidebar -->

		<!-- sidemenu End -->

		<div id="main-content">
			<!-- Main Content Section with everything -->

			<!-- Page Head -->
			<noscript>&lt;!-- Show a notification if the user has
				disabled javascript --&gt; &lt;div class="notification Noti_error
				png_bg"&gt; &lt;div&gt; Javascript功能未开启或未被您所使用的浏览器所支持。请&lt;a
				href="http://browsehappy.com/" title="Upgrade to a better browser"
				target="_blank"&gt;升级&lt;/a&gt;您的浏览器，或&lt;a
				href="http://360.bgu.edu.cn/help/openJsHelp.html" title="Enable
				Javascript in your browser"
				target="_blank"&gt;开启&lt;/a&gt;本地浏览器的Javascript功能。 &lt;/div&gt;
				&lt;/div&gt;</noscript>

			<ul class="shortcut-buttons-set">

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_servers"><span> <img
							src="${ctx}/img/severs.png" alt="icon"><br> 服务器地址 </span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_vpnlist"><span> <img
							src="${ctx}/img/vpn.png" alt="icon"><br> VPN账号 </span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_newvpn"><span> <img
							src="${ctx}/img/buyvpn.png" alt="icon"><br> 购买VPN </span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/fin_pay"><span> <img
							src="${ctx}/img/pay.png" alt="icon"><br> 账户充值 </span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/cs_tickets"><span> <img
							src="${ctx}/img/help.png" alt="icon"><br> 客服工单 </span></a></li>

			</ul>
			<!-- End .shortcut-buttons-set -->

			<div class="clear"></div>
			<!-- End .clear -->

			<!--
						-->


			<!--系统公告-->
			<div class="notification Noti_error png_bg">
				<a href="http://web.it600.net/home#" class="close"><img
					src="${ctx}/img/cross_grey_small.png"
					title="Close this notification" alt="close"></a>
				<div>公告：近期在百度搜索结果中出现的行云官网：www.xingyunvpn.CN
					是假冒的钓鱼网站！请广大用户注意甄别，行云官网以我们系统邮件中的网址(web.it600.net)为准！2015-05-15
					12:48</div>
			</div>




			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3 style="cursor: s-resize;">后台首页</h3>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab1"
						style="display: block;">
						<!-- This is the target div. id must match the href of this div's tab -->
						<p>
							邮箱：kelylm@163.com <span class="fgreen">已验证√</span>
						</p>
						<p>
							余额：<span class="fgreen">0.00</span> 元 <a
								href="http://web.it600.net/home/fin_pay">账户充值</a>
						</p>
						<p>
							已有：<a href="http://web.it600.net/home/main_vpnlist">1 个VPN账号</a>
						</p>


						<p>上次登录地址：104.207.151.230 北美地区CZ88.NET</p>
						<p>上次登录日期：2015-05-20 10:22:12</p>

					</div>
					<!-- End #tab1 -->


				</div>
				<!-- End .content-box-content -->

			</div>
			<!-- End .content-box -->

			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
					© Copyright 2010 XingyunVPN Powered by <a
					href="http://web.it600.net/" target="_blank">NebulaTec</a> | <a
					href="http://web.it600.net/" target="_blank">官网首页</a>
				</small>
			</div>
			<!-- End #footer -->


		</div>
		<!-- End #main-content -->

	</div>

	<script>
		$().ready(function() {
									
		});
	</script>

	<font style="display: none;"> <script
			src="./后台首页 _ 行云后台_files/stat.php" language="JavaScript"></script> <script
			src="./后台首页 _ 行云后台_files/core.php" charset="utf-8"
			type="text/javascript"></script> <a
		href="http://www.cnzz.com/stat/website.php?web_id=1253786191"
		target="_blank" title="站长统计">站长统计</a></font>
</rapid:override>
<%@include file="./base.jsp"%>
