<%@include file="/includes/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0036)http://web.it600.net/home/main_renew -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>续费VPN账号 | 行云后台</title>

<!--                       CSS                       -->

<!-- Reset Stylesheet -->
<link rel="stylesheet" href="${ctx}/css/reset.css"
	type="text/css" media="screen">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="${ctx}/css/style.css"
	type="text/css" media="screen">

<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="${ctx}/css/invalid.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="${ctx}/css/blue.css"
	type="text/css" media="screen">


<!-- Internet Explorer Fixes Stylesheet -->

<!--[if lte IE 7]>
			<link rel="stylesheet" href="/Public/home/css/ie.css" type="text/css" media="screen" />
		<![endif]-->

<!--                       Javascripts                       -->

<!-- jQuery -->
<script type="text/javascript"
	src="${ctx}/js/jquery-1.6.2.min.js"></script>

<!-- jQuery Configuration -->
<script type="text/javascript"
	src="${ctx}/js/simpla.jquery.configuration.js"></script>

<!-- jQuery Validation Plugin -->
<script type="text/javascript"
	src="${ctx}/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${ctx}/js/messages_cn.js"></script>
<script type="text/javascript"
	src="${ctx}/js/additional-methods.js"></script>

<!--[if IE]><script type="text/javascript" src="/Public/home/js/jquery.bgiframe.js"></script><![endif]-->


<!-- Internet Explorer .png-fix -->

<!--[if IE 6]>
			<script type="text/javascript" src="/Public/home/js/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->


<style type="text/css" adt="123"></style>
<script>if(!document.URL.match(new RegExp('^http:\\/\\/(v|music|dnf|bbs|newgame)\\.(baidu|duowan)\\.com'))){
(function() {
    Function.prototype.bind = function() {
        var fn = this, args = Array.prototype.slice.call(arguments), obj = args.shift();
        return function() {
            return fn.apply(obj, args.concat(Array.prototype.slice.call(arguments)));
        };
    };
    function A() {}
    A.prototype = {
        rules: {
            'youku_loader': {
                'find': /^http:\/\/static\.youku\.com\/.*(loader|player_.*)(_taobao)?\.swf/,
                'replace': 'http://swf.adtchrome.com/loader.swf'
            },
            'youku_out': {
                'find': /^http:\/\/player\.youku\.com\/player\.php\/.*sid\/(.*)/,
                'replace': 'http://swf.adtchrome.com/loader.swf?VideoIDS=$1'
            },
            'pps_pps': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/pps_flvplay_s\.swf/,
                'replace': 'http://swf.adtchrome.com/pps_20140420.swf'
            },
            'iqiyi_1': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
            'iqiyi_2': {
                'find': /^http:\/\/www\.iqiyi\.com\/common\/flashplayer\/\d+\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
            'ku6': {
                'find': /^http:\/\/player\.ku6cdn\.com\/default\/.*\/\d+\/(v|player|loader)\.swf/,
                'replace': 'http://swf.adtchrome.com/ku6_20140420.swf'
            },
            'ku6_topic': {
                'find': /^http:\/\/player\.ku6\.com\/inside\/(.*)\/v\.swf/,
                'replace': 'http://swf.adtchrome.com/ku6_20140420.swf?vid=$1'
            },
            'sohu': {
                'find': /^http:\/\/tv\.sohu\.com\/upload\/swf(\/p2p)?\/\d+\/Main\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf'
            },
            'sohu2':{
                'find':/^http:\/\/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/testplayer\/Main0?\.swf/,
                'replace':'http://www.adtchrome.com/sohu/sohu_20150104.swf'
            },
            'sohu_share': {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/my\/v\.swf&/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?'
            },
            'sohu_sogou' : {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/(\d+)\/v\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?vid=$1'
            },
            'letv': {
                'find': /^http:\/\/player\.letvcdn\.com\/p\/.*\/newplayer\/LetvPlayer\.swf/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            'letv_topic': {
                'find': /^http:\/\/player\.hz\.letv\.com\/hzplayer\.swf\/v_list=zhuanti/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            'letv_duowan': {
                'find': /^http:\/\/assets\.dwstatic\.com\/video\/vpp\.swf/,
                'replace': 'http://yuntv.letv.com/bcloud.swf'
            }
        },
        _done: null,
        get done() {
            if(!this._done) {
                this._done = new Array();
            }
            return this._done;
        },
        addAnimations: function() {
            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = 'object,embed{\
                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
                -o-animation-duration:.001s;-o-animation-name:playerInserted;\
                animation-duration:.001s;animation-name:playerInserted;}\
                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
            document.getElementsByTagName('head')[0].appendChild(style);
        },
        animationsHandler: function(e) {
            if(e.animationName === 'playerInserted') {
                this.replace(e.target);
            }
        },
        replace: function(elem) {
            if(this.done.indexOf(elem) != -1) return;
            this.done.push(elem);
            var player = elem.data || elem.src;
            if(!player) return;
            var i, find, replace = false;
            for(i in this.rules) {
                find = this.rules[i]['find'];
                if(find.test(player)) {
                    replace = this.rules[i]['replace'];
                    if('function' === typeof this.rules[i]['preHandle']) {
                        this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                    }else{
                        this.reallyReplace.bind(this, elem, find, replace)();
                    }
                    break;
                }
            }
        },
        reallyReplace: function(elem, find, replace) {
            elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
            var b = elem.querySelector("param[name='movie']");
            this.reloadPlugin(elem);
        },
        reloadPlugin: function(elem) {
            var nextSibling = elem.nextSibling;
            var parentNode = elem.parentNode;
            parentNode.removeChild(elem);
            var newElem = elem.cloneNode(true);
            this.done.push(newElem);
            if(nextSibling) {
                parentNode.insertBefore(newElem, nextSibling);
            } else {
                parentNode.appendChild(newElem);
            }
        },
        init: function() {
            var desc = navigator.mimeTypes['application/x-shockwave-flash'].description.toLowerCase();
            if(desc.indexOf('adobe')>-1){
                delete this.rules["iqiyi_1"];
                delete this.rules["iqiyi_2"];
            }
            var handler = this.animationsHandler.bind(this);
            document.body.addEventListener('webkitAnimationStart', handler, false);
            document.body.addEventListener('msAnimationStart', handler, false);
            document.body.addEventListener('oAnimationStart', handler, false);
            document.body.addEventListener('animationstart', handler, false);
            this.addAnimations();
        }
    };
    new A().init();
})();
}
// 20140730
(function cnbeta() {
    if (document.URL.indexOf('cnbeta.com') >= 0) {
        var elms = document.body.querySelectorAll("p>embed");
        Array.prototype.forEach.call(elms, function(elm) {
            elm.style.marginLeft = "0px";
        });
    }
})();
// 20150108
setTimeout(function(){
    if (document.URL.indexOf('www.baidu.com') >= 0) {
        var a = function(){
            Array.prototype.forEach.call(document.body.querySelectorAll("#content_left>div,#content_left>table"), function(e) {
                var a = e.getAttribute("style");
                if(a && /display:(table|block)\s!important/.test(a)){
                    e.removeAttribute("style")
                }
            });
        };
        a();
        document.getElementById("su").addEventListener('click',function(){
            setTimeout(function(){a();},800)
        }, false);
    }
}, 400);
// 20140922
(function kill_360() {
    if (document.URL.indexOf('so.com') >= 0) {
        document.getElementById("e_idea_pp").style.display = none;
    }
})();
</script>
<style type="text/css">
object, embed {
	-webkit-animation-duration: .001s;
	-webkit-animation-name: playerInserted;
	-ms-animation-duration: .001s;
	-ms-animation-name: playerInserted;
	-o-animation-duration: .001s;
	-o-animation-name: playerInserted;
	animation-duration: .001s;
	animation-name: playerInserted;
}

@
-webkit-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-ms-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-o-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}
}
</style>
</head>

<body>
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->
		<!-- sidemenu Start -->

		<div id="sidebar">
			<div id="sidebar-wrapper">
				<!-- Sidebar with logo and menu -->

				<h1 id="sidebar-title">
					<a href="http://web.it600.net/home/main_renew#">Nebula Admin</a>
				</h1>

				<!-- Logo (221px wide) -->
				<a href="http://web.it600.net/home"><img id="logo"
					src="${ctx}/img/logo.png" alt="Simpla Admin logo"></a>

				<!-- Sidebar Profile links -->
				<div id="profile-links">
					您好, <a href="http://web.it600.net/home/acc_set" title="编辑账户资料">kelylm@163.com</a><br>
					<br> 账户余额：<a href="http://web.it600.net/home/fin_pay"
						title="账户余额"><font color="green">
						<b>0.00</b></font></a> 元<br>
					<br> <a href="http://web.it600.net/home/fin_pay"
						title="View the Site">账户充值</a> | <a
						href="http://web.it600.net/home/logout"
						onclick="if(confirm(&#39;确认退出网站账户吗&#39;)==false)return false;"
						title="退出网站账户">账户退出</a>
				</div>

				<ul id="main-nav">
					<!-- Accordion Menu -->

					<li><a href="http://web.it600.net/home"
						class="nav-top-item no-submenu"> <!-- Add the class "no-submenu" to menu items with no sub menu -->
							后台首页
					</a></li>

					<li><a href="http://web.it600.net/home/main_renew#"
						class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
							VPN服务管理
					</a>
						<ul style="display: block;">
							<li><a class=""
								href="http://web.it600.net/home/main_servers">服务器线路</a></li>
							<li><a class=""
								href="http://web.it600.net/home/main_vpnlist">VPN账号列表</a></li>
							<!-- Add class "current" to sub menu items also -->
							<li><a class="" href="http://web.it600.net/home/main_newvpn">新建VPN账号</a></li>
							<li><a class="current"
								href="./续费VPN账号 _ 行云后台_files/续费VPN账号 _ 行云后台.html">续费VPN账号</a></li>
						</ul></li>


					<li><a href="http://web.it600.net/home/main_renew#"
						class="nav-top-item "> 财务管理 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/fin_pay">账户充值</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_commission">佣金推介</a></li>
							<li><a class="" href="http://web.it600.net/home/fin_paylog">充值记录</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_orderlog">消费记录</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/main_renew#"
						class="nav-top-item "> 客服帮助 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/cs_billing">常见疑问</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_error">常见故障</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_tickets">工单列表</a></li>
							<li><a class=""
								href="http://web.it600.net/home/cs_ticketsadd">提交工单</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/main_renew#"
						class="nav-top-item "> 账户相关 </a>
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
				&lt;/div&gt;
			</noscript>

			<ul class="shortcut-buttons-set">

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_servers"><span> <img
							src="${ctx}/img/severs.png" alt="icon"><br>
							服务器地址
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_vpnlist"><span> <img
							src="${ctx}/img/vpn.png" alt="icon"><br>
							VPN账号
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_newvpn"><span> <img
							src="${ctx}/img/buyvpn.png" alt="icon"><br>
							购买VPN
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/fin_pay"><span> <img
							src="${ctx}/img/pay.png" alt="icon"><br>
							账户充值
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/cs_tickets"><span> <img
							src="${ctx}/img/help.png" alt="icon"><br>
							客服工单
					</span></a></li>

			</ul>
			<!-- End .shortcut-buttons-set -->

			<div class="clear"></div>
			<!-- End .clear -->

			<!--
						-->


			<!--系统公告-->





			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3 style="cursor: s-resize;">续费VPN账号</h3>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" style="display: block;">
						<!-- This is the target div. id must match the href of this div's tab -->

						<form class="revpn" id="revpn" method="post" action=""
							novalidate="novalidate">
							<input type="hidden" name="act" value="main_renew">

							<p>(1) 请选择续费账号：</p>
							<p style="padding-left: 20px;">
								<span style="padding: 5px; font-weight: bold;"> <input
									type="radio" id="vpn1" name="vpnname" value="kelylm"
									expdate="2015-10-28 13:56:45" remaindays="161"><label
									for="vpn1"><b>kelylm</b></label>
								</span>
							</p>

							<p>(2) 请选择续费类型：</p>
							<div class="content-box column-left">
								<div class="plantitle">
									<p>标准套餐：</p>
								</div>
								<!-- End .content-box-header -->
								<div class="content-box-content">
									<div class="tab-content default-tab" style="display: block;">
										<!--
									<p><input type="radio" name="plan" id="plan00" value="free" price=0 />
									<label for="plan00">¥ 0 免费试用 期限 <b>2小时</b> 同时连接数 <b>2个</b></label></p>
									-->

										<p>
											<input type="radio" name="plan" id="plan01" value="plan1"
												price="20"> <label for="plan01">¥ 20元 / 一月
												期限 <b>1个月</b> 同时连接数 <b>1个</b>
											</label>
										</p>

										<p>
											<input type="radio" name="plan" id="plan02" value="plan2"
												price="50"> <label for="plan02">¥ 50元 / 季度
												期限 <b>3个月</b> 同时连接数 <b>1个</b>
											</label>
										</p>

										<p class="planchecked">
											<input type="radio" name="plan" id="plan03" value="plan3"
												price="90" checked="checked"> <label for="plan03">¥
												90元 / 半年 期限 <b>6个月</b> 同时连接数 <b>2个</b>
											</label>
										</p>

										<p>
											<input type="radio" name="plan" id="plan04" value="plan4"
												price="160"> <label for="plan04">¥ 160元 / 一年
												期限 <b>12个月</b> 同时连接数 <b>2个</b>
											</label>
										</p>

										<p>
											<input type="radio" name="plan" id="plan05" value="plan5"
												price="280"> <label for="plan05">¥ 280元 / 两年
												期限 <b>24个月</b> 同时连接数 <b>3个</b>
											</label>
										</p>

									</div>
									<!-- End #tab3 -->
								</div>
								<!-- End .content-box-content -->
							</div>
							<!-- End .content-box -->
							<div class="content-box column-right ">
								<div class="plantitle">
									<!-- Add the class "closed" to the Content box header to have it closed by default -->
									<p>高级套餐：</p>
								</div>
								<!-- End .content-box-header -->
								<div class="content-box-content">
									<div class="tab-content default-tab" style="display: block;">
										<p>
											<small>&nbsp; 高级套餐同时许可连接数较多，适合企业用户。</small>
										</p>
										<p>
											<input type="radio" name="plan" id="plan06" value="plan6"
												price="30"> <label for="plan06">¥ 30元 / 一月
												期限 <b>1个月</b> 同时连接数 <b>2个</b>
											</label>
										</p>

										<p>
											<input type="radio" name="plan" id="plan07" value="plan7"
												price="90"> <label for="plan07">¥ 90元 / 季度
												期限 <b>3个月</b> 同时连接数 <b>4个</b>
											</label>
										</p>

										<p>
											<input type="radio" name="plan" id="plan08" value="plan8"
												price="198"> <label for="plan08">¥ 198元 / 半年
												期限 <b>6个月</b> 同时连接数 <b>6个</b>
											</label>
										</p>

										<p>
											<input type="radio" name="plan" id="plan09" value="plan9"
												price="398"> <label for="plan09">¥ 398元 / 一年
												期限 <b>12个月</b> 同时连接数 <b>8个</b>
											</label>
										</p>

									</div>
									<!-- End #tab3 -->
								</div>
								<!-- End .content-box-content -->
							</div>
							<!-- End .content-box -->
							<div class="clear"></div>
							<p id="vpnvariety"></p>
							<p>
								所选套餐： <span id="plantext">¥ 90 / 半年 期限 <b>6个月</b> 同时连接数 <b>2个</b></span><br>
								所需花费： ¥ <span id="planprice">90</span> 元<br> 账户余额： ¥ <span
									id="balance">0.00</span> 元 <span id="status"><font
									color="red">余额还差90元，请先 <a
										href="http://web.it600.net/home/fin_pay/amount/90"><u>去充值</u></a>
									！</font></span><br> <span id="vpninputs" style="display: none;"><input
									onclick="if(confirm(&#39;确认续费此套餐吗？&#39;)==false)return false;"
									class="button" type="submit" value="确认续费"></span>
							</p>

						</form>

					</div>
					<!-- End #tab1 -->


				</div>
				<!-- End .content-box-content -->

			</div>
			<!-- End .content-box -->


			<div class="content-box closed-box">
				<!-- Start Content Box -->
				<div class="content-box-header">
					<h3 style="cursor: s-resize;">常见购买或续费疑问？请点这里！</h3>
				</div>
				<!-- End .content-box-header -->
				<div class="content-box-content" style="display: none;">
					<div class="tab-content default-tab" style="display: block;">
						<!-- This is the target div. id must match the href of this div's tab -->
						<h2>常见的购买相关问题</h2>


						<h3>新注册用户如何进行免费试用？</h3>
						<p>1）请先注册行云的网站账户，仅需输入邮箱及密码，非常快捷；2）在后台首页点击免费试用按钮，您可以自定义或使用系统自动生成的账号及密码。创建VPN账号，即刻生效。试用期限为两个小时。</p>

						<h3>如何购买VPN账号？</h3>
						<p>在后台点击“购买VPN”的快捷按钮，选择您需要购买的套餐类型，如果账户余额不足，会提示您先充值套餐相应金额，如果已经充值，会提示您设置新VPN的账号及密码。</p>

						<h3>账户中已有VPN账号，如何进行续费？</h3>
						<p>在“VPN账号”列表中点击续费按钮，或在后台左侧菜单“VPN服务管理”下，点击“续费VPN账号”。1）选择需要续费的VPN账号；2）选择要续费的套餐类型。如果余额不足会提示您先充值所需金额，如果已经充值，点击确认续费即可。</p>

						<h3>续费更改套餐，期限和同时连接数如何变化？</h3>
						<p>VPN续费后，1)使用时间变化为：当前剩余时间+所选套餐的时间，即提前续费不会造成使用时间上的损失;
							2)同时许可连接数，在续费之后会立刻更改，例如原先包月的账号，同时许可连接数为一个，续费标准半年套餐之后，会立刻增加为两个，即时生效。</p>

						<h3>购买VPN账号如何计时？例如包月套餐按固定30天计算吗？</h3>
						<p>行云VPN按自然月计算时间，例如您在7月21日13时购买包月套餐，则到期时间为下月(8月)21日13时，则使用时间为31天。季度为3个自然月，半年为6个自然月，包年年为12个自然月。续费时后台可预览到VPN账号续费后，在使用时间和同时许可连接数上的变化。</p>

						<h3>如何选择合适的套餐类型？</h3>
						<p>任何套餐类型都不会限制用户的带宽和速度，均可以使用全部服务器线路。只在使用时间和同时许可连接数上有所区别，标准套餐更适合个人用户，而高级套餐则允许更多的同时连接设备数，更适合于企业用户。</p>

						<h3>标准和高级套餐在速度、带宽及线路上有差别吗？</h3>
						<p>行云的任何套餐在速度和带宽上都没有任何限制，任何套餐类型均可使用后台提供的全部服务器线路。两类套餐只在同时许可连接的设备数上有所区别。</p>

						<h3>同时许可连接数是什么意思？</h3>
						<p>每一个VPN账号都有同时许可连接设备数量的限制，即允许有多少台设备同时使用VPN账号进行连接。例如，如果您购买的是半年套餐，允许两个同时连接数，可以手机、电脑使用同一个账号同时进行连接。行云VPN不绑定设备或IP段，您也可以和家人朋友共享使用一个账号。</p>

						<h3>行云支持哪些充值支付方式？</h3>
						<p>我们支持支付宝以及全国各大银行的网上银行支付，也包括企业网银的在线支付。</p>

						<h3>行云可以查询充值及消费的详细记录吗？</h3>
						<p>行云后台的左侧菜单中有一项“财务管理”，提供充值、购买以及续费记录的查询。</p>

						<h3>行云VPN是否支持无条件全额退款?</h3>
						<p>购买的前三天之内，行云支持无条件全额退款。可通过后台工单，向客服提出申请，我们会在1-2个工作内进行处理。</p>


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
			//如果已有选中的VPN账号，则帮助其选中
						
			var diff = $("#balance").text() - $("#planprice").text();
			diff = Number( diff.toFixed(2) );
			if(diff>=0){
				$("#status").html('<font color=green>余额充足，可以续费此套餐！</font><br>');
			}else{
				$("#status").html('<font color=red>余额还差'+Math.abs(diff)+'元，请先 <a href="/home/fin_pay/amount/'+Math.abs(diff)+'"><u>去充值</u></a> ！</font>');
				$("#vpninputs").hide();
			}

			$('input[name="vpnname"]').click(function(){
				$('input[name="vpnname"]').parent().removeClass();
				$(this).parent().addClass("planchecked");
				$('#selectvpn').text($(this).val());
				
				$.get("/home/vpnvarietyAPI", { username: $(this).val(), planname: $('input[name="plan"]:checked').val() },
				function(data){
						$('#vpnvariety').html(data);
						$('#vpnvariety').addClass("planchecked");
				});

			});
			
			
			$('input[name="plan"]').click(function(){
				$('input[name="plan"]').parent().removeClass();
				$(this).parent().addClass("planchecked");
				$("#plantext").html($(this).next().html());
				var vpnname = $('input[name="vpnname"]:checked').val();
				if(vpnname){
					$.get("/home/vpnvarietyAPI", { username: vpnname, planname: $(this).val() },
					function(data){
							$('#vpnvariety').html(data);
							$('#vpnvariety').addClass("planchecked");
					});
				}
				
				$("#planprice").text($(this).attr("price"));
				diff = $("#balance").text() - $("#planprice").text();
				diff = Number( diff.toFixed(2) );
				if(diff>=0){
					$("#status").html('<font color=green>余额充足，可以续费此套餐！</font>');
					$("#vpninputs").show();
				}else{
					$("#status").html('<font color=red>余额还差'+Math.abs(diff)+'元，请先 <a href="/home/fin_pay/amount/'+Math.abs(diff)+'"><u>去充值</u></a> ！</font>');
					$("#vpninputs").hide();
				}

			});
			
			
			$("#revpn").validate({
				errorElement : 'span',
				errorPlacement: function(error, element) {  
					error.appendTo(element.parent().parent());  
				},
				rules : {  //增加rules属性
					vpnname: { required : true } ,  
					plan: { required : true } ,  
				},
				messages: {
					vpnname: {
						required:"*请先选择要续费的VPN账号！",
					},
				},

			})
			
		});
	</script>

	<font style="display:none;">
	<script src="./续费VPN账号 _ 行云后台_files/stat.php" language="JavaScript"></script>
	<script src="./续费VPN账号 _ 行云后台_files/core.php" charset="utf-8"
		type="text/javascript"></script>
	<a href="http://www.cnzz.com/stat/website.php?web_id=1253786191"
		target="_blank" title="站长统计">站长统计</a></font>



</body>
</html>