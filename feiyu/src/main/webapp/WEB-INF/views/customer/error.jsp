<%@include file="/includes/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0034)http://web.it600.net/home/cs_error -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>常见故障 | 行云后台</title>

<!--                       CSS                       -->

<!-- Reset Stylesheet -->
<link rel="stylesheet" href="${ctx}/css/reset.css" type="text/css"
	media="screen">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="${ctx}/css/style.css" type="text/css"
	media="screen">

<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="${ctx}/css/invalid.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="${ctx}/css/blue.css" type="text/css"
	media="screen">


<!-- Internet Explorer Fixes Stylesheet -->

<!--[if lte IE 7]>
			<link rel="stylesheet" href="/Public/home/css/ie.css" type="text/css" media="screen" />
		<![endif]-->

<!--                       Javascripts                       -->

<!-- jQuery -->
<script type="text/javascript" src="${ctx}/js/jquery-1.6.2.min.js"></script>

<!-- jQuery Configuration -->
<script type="text/javascript"
	src="${ctx}/js/simpla.jquery.configuration.js"></script>

<!-- jQuery Validation Plugin -->
<script type="text/javascript" src="${ctx}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${ctx}/js/messages_cn.js"></script>
<script type="text/javascript" src="${ctx}/js/additional-methods.js"></script>

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
					<a href="http://web.it600.net/home/cs_error#">Nebula Admin</a>
				</h1>

				<!-- Logo (221px wide) -->
				<a href="http://web.it600.net/home"><img id="logo"
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

					<li><a href="http://web.it600.net/home"
						class="nav-top-item no-submenu"> <!-- Add the class "no-submenu" to menu items with no sub menu -->
							后台首页
					</a></li>

					<li><a href="http://web.it600.net/home/cs_error#"
						class="nav-top-item "> <!-- Add the class "current" to current menu item -->
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


					<li><a href="http://web.it600.net/home/cs_error#"
						class="nav-top-item "> 财务管理 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/fin_pay">账户充值</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_commission">佣金推介</a></li>
							<li><a class="" href="http://web.it600.net/home/fin_paylog">充值记录</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_orderlog">消费记录</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/cs_error#"
						class="nav-top-item current"> 客服帮助 </a>
						<ul style="display: block;">
							<li><a class="" href="http://web.it600.net/home/cs_billing">常见疑问</a></li>
							<li><a class="current" href="${ctx}/img/常见故障 _ 行云后台.html">常见故障</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_tickets">工单列表</a></li>
							<li><a class=""
								href="http://web.it600.net/home/cs_ticketsadd">提交工单</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/cs_error#"
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
							src="${ctx}/img/severs.png" alt="icon"><br> 服务器地址
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_vpnlist"><span> <img
							src="${ctx}/img/vpn.png" alt="icon"><br> VPN账号
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/main_newvpn"><span> <img
							src="${ctx}/img/buyvpn.png" alt="icon"><br> 购买VPN
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/fin_pay"><span> <img
							src="${ctx}/img/pay.png" alt="icon"><br> 账户充值
					</span></a></li>

				<li><a class="shortcut-button"
					href="http://web.it600.net/home/cs_tickets"><span> <img
							src="${ctx}/img/help.png" alt="icon"><br> 客服工单
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

					<h3 style="cursor: s-resize;">常见故障</h3>

					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" style="display: block;">
						<!-- This is the target div. id must match the href of this div's tab -->

						<div style="display: none;">
							<h2>VPN常见错误及故障</h2>
						</div>
						<!--********************  正文开始  ********************-->

						<h3 style="padding-top: 0px; display: none;" class="errorhide e0">Windows
							提示 691 错误以及IOS提示“鉴定失败”</h3>
						<p class="errorhide e0" style="display: none;">
							691错误或“鉴定失败”的解决方法：<br> （1）请确定VPN账号是否处于“已到期”状态;<br>
							（2）设置中VPN账号和VPN密码是否填写错误;<br>
							（3）VPN账号仍处于在线状态，拨号时因为超出账号当前最大许可的连接数，所以被被拒绝。您可以在后台vpn页面中查看当前在线的VPN连接，也可以将异常掉线的连接下线处理。
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e1">Windows
							使用 PPTP 协议提示 619 错误</h3>
						<p class="errorhide e1" style="display: none;">
							619错误一般是因为您本地的pptp端口被禁，解决办法如下：<br>
							（1）检查您电脑的防火墙或防护软件以及路由器是否将VPN的端口关闭；<br>
							（2）确认您的小区宽带网络是允许VPN连接的；<br> （3）本地安装的某些软件将pptp端口给占用了。<br>
							619错误可能有多重原因，如果上述办法未果，建议您尝试切换成L2TP协议进行连接，并注意预共享密钥设置为123456
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e2">windows
							提示 800 错误</h3>
						<p class="errorhide e2" style="display: none;">
							连接VPN时发生“错误800：不能建立VPN连接”的原因一般有以下几个：<br>
							（1）检查配置中的线路地址是否设置正确，全部VPN线路见于后台<a
								href="http://web.it600.net/home/main_servers" target="_blank">服务器地址</a>；<br>
							（2）临时性故障，多半是由于您使用的DNS服务器繁忙无法对服务器地址进行IP解析。推荐设置本地网络连接的DNS为
							223.5.5.5 备用 1.2.4.8 ，<a href="http://web.it600.net/help/setdns/">各系统设置DNS教程</a>
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e3">windows
							提示 807、806 错误</h3>
						<p class="errorhide e3" style="display: none;">
							807与806两个错误的原因类似，一般与防火墙有关。解决方法：<br> （1）检查本地防火墙或路由器相关选项，让其支持
							PPTP 以及 L2TP协议；<br> （2）尝试切换其他线路；<br>
							（3）尝试点击桌面左下角的”开始”-“运行”，在”运行”里输入：netsh winsock reset
							待它执行完成后，请重启计算机后再尝试；<br>
							（4）尝试切换下协议试试，如pptp切换成l2tp方式，并请注意l2tp需要额外设置预共享密钥为123456
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e4">Windows
							提示 789 错误</h3>
						<p class="errorhide e4" style="display: none;">
							789错误主要是因为系统的IPSec Service没能够正常启动造成的。可以通过手动进入系统服务，将IPSec
							Service的启动类型改为“自动”即可。<br>
							第一步，使用组合键Win+R调用运行窗口，输入services.msc<br> 第二步，找到IPSec Policy
							Agent或者IPSec Service服务，右键选择“属性”，将启动类型改为“自动”即可修正789错误。
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e5">为什么没找到行云VPN的客户端或软件的下载页面？</h3>
						<p class="errorhide e5" style="display: none;">
							行云VPN是账号形式的VPN，只要在系统中设置好账号密码即可。VPN账号虽然相比客户端，首次设置不太简便，但相比任何软件都更加稳定、安全，且兼容性更好！几乎主流的设备、操作系统均可使用。<br>
							如果您对设置不太熟悉，建议参考 各系统VPN设置帮助：<br> PPTP协议：<a target="_blank"
								href="http://web.it600.net/help/setvpn/winxppptp">WinXP</a> <a
								target="_blank" href="http://web.it600.net/help/setvpn/win7pptp">Win7</a>
							<a target="_blank"
								href="http://web.it600.net/help/setvpn/win8pptp">Win8</a> <a
								target="_blank"
								href="http://web.it600.net/help/setvpn/macospptp">MacOS</a> <a
								target="_blank" href="http://web.it600.net/help/setvpn/iospptp">Iphone/Ipad</a>
							<a target="_blank"
								href="http://web.it600.net/help/setvpn/androidpptp">Android</a>
							<a target="_blank"
								href="http://web.it600.net/help/setvpn/ubuntupptp">Ubuntu</a><br>

							L2TP协议：<a target="_blank"
								href="http://web.it600.net/help/setvpn/winxpl2tp">WinXP</a> <a
								target="_blank" href="http://web.it600.net/help/setvpn/win7l2tp">Win7</a>
							<a target="_blank"
								href="http://web.it600.net/help/setvpn/win8l2tp">Win8</a> <a
								target="_blank"
								href="http://web.it600.net/help/setvpn/macosl2tp">MacOS</a> <a
								target="_blank" href="http://web.it600.net/help/setvpn/iosl2tp">Iphone/Ipad</a>
							<a target="_blank"
								href="http://web.it600.net/help/setvpn/androidl2tp">Android</a>
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e6">移动设备(IOS,安卓)连接数分钟断开连接了</h3>
						<p class="errorhide e6" style="display: none;">
							移动设备出现隔数分钟断线的情况，很有可能是设备自身的省电机制所造成的：<br>
							（1）关掉节约流量和省电模式(IOS常见此问题)；<br> （2）一直用VPN浏览网站（保持工作)；<br>
							（3）也可以切换连接方式，如PPTP切换为L2TP/IPsec协议；<br>
							（4）另外有条件可以关闭WIFI休眠模式，这样就能避免VPN掉线。
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e7">安卓系统无法连接VPN，以及IOS无法建立PPTP连接</h3>
						<p class="errorhide e7" style="display: none;">
							（1）由于安卓版本众多，对VPN功能的处理也是不一样的，有些甚至是残缺的。小米的安卓系统之前就只能以PPTP方式连接，而无法L2TP连接。所以请您确保您的安卓系统是支持VPN连接的！<br>
							（2）IOS系统建议可以尝试切换成L2TP方式进行连接，并注意预共享密钥设置为123456
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e8">可以连接上VPN，但是无法打开海外网站</h3>
						<p class="errorhide e8" style="display: none;">
							有时候用户虽然连接上了VPN，但只能访问国内网站，而无法访问国外如YTB、FB等网站，<br>
							（1）请使用海外线路，大陆的所有网络均无法访问某些网站；<br>
							（2）DNS无法对某些海外网站的域名做正确的解析，推荐设置本地网络连接的DNS为 223.5.5.5 备用 1.2.4.8，<a
								target="_blank" href="http://web.it600.net/help/setdns/">各系统设置DNS教程</a>;<br>
							（3）如果您使用的是MacOS系统或iOS，请注意勾选vpn设置选项中的“通过vpn发送所有流量”，MacOS默认不勾选此项，常造成此问题；<br>
							（4）如果您使用的是WinXP系统，其设置DNS后仍然无效，则可能是因为XP系统默认的DNS还是原来的本地连接的国内DNS，依旧被劫持中。要解决此问题，请编辑注册表以便将“远程访问服务”连接移至绑定顺序中的最优先位置（以下仅对WinXP有效）：<br>

								&nbsp;&nbsp;&nbsp; 4.1） 在“开始”，单击“运行”，在“打开”框中键入
								regedit，也就是注册表设置，然后单击“确定”。
							<br> &nbsp;&nbsp;&nbsp; 4.2）
								在左边列表单击以下注册表子项：HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Linkage
							<br> &nbsp;&nbsp;&nbsp; 4.3） 在右窗格中，双击“Bind”。
							<br> &nbsp;&nbsp;&nbsp; 4.4）
								在“数值数据”框中，选择“\Device\NdisWanIp”项，按 Ctrl+X，在内容的顶部，然后按
								Ctrl+V。也就是把第三行内容调整到第一行。
							<br> &nbsp;&nbsp;&nbsp; 4.5） 单击“确定”，然后退出注册表编辑器。
							<br>
							通过该操作，调整了TCP/IP的绑定序列，将VPN拨号等初级接口的优先级调整为第一。这样，通过该端口得到的TCP/IP属性会被优先使用。请重启系统后再连接，你就可以打开youtube、twitter等网站了。
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e9">可以连接上VPN，但是马上就断开或者什么网页也打不开了怎么办</h3>
						<p class="errorhide e9" style="display: none;">
							解决方法：<br> （1）尝试更换连协议，如pptp更换成l2tp协议。一般更换协议能解决90%这种情况；
							<br>
							（2）检查路由器是否开启了QOS功能或SPI防火墙之类的会干扰VPN数据流的功能，请关闭这些选项然后再尝试连接；<br>
							（3）如果所有网页都打不开，则可能是DNS的问题，建议您手动设置本地连接的DNS，<a target="_blank"
								href="http://web.it600.net/help/setdns/">各系统设置DNS教程</a>
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e10">连接VPN之后，速度变慢了？</h3>
						<p class="errorhide e10" style="display: none;">
							如果连接我们的线路之后，速度变慢了，或者很慢，请检查以下几点：<br>
							（1）部分地区的网络提供商会限制PPTP或者L2TP协议，请尝试暂时切换下连接协议；<br>
							（2）建议可以尝试暂时切换其他地区的VPN线路；<br>
							（3）本地软件或局域网其他用户占用了大量的带宽。VPN的速度同样也取决于你本地网络的速度，本地网络慢，连接成功后，速度也会慢；<br>
							（4）您本地网络提供商的出口带宽限制，比如您本地有20M的光纤，访问国内网络速度很快，但访问国外网站没有原来的快，或者下载等。可能出口带宽已经被限制为2M了或者更低，也会导致下载速度慢的，一些网络提供商会限制出口带宽，具体请咨询您的网络提供商；<br>
						</p>

						<h3 style="padding-top: 0px; display: none;" class="errorhide e11">有其他的故障或问题？</h3>
						<p class="errorhide e11" style="display: none;">
							如果这些错误和解决办法不是您所需要的，可以在后台给我们 <a
								href="http://web.it600.net/home/cs_ticketsadd">提交工单</a>！<br>
							填写新工单,请尽量详述 您使用的系统、提示内容或错误代号，这有助于我们解决您的问题。提交工单之后我们会尽快回复您。<br>
							<br>
							我们也建议您合理使用搜索引擎，因为您的问题也许很普遍，已经在网上被回答了很多次，直接找到答案会更加节省您解决问题的时间。
						</p>


						<!--********************  正文结束  ********************-->

						<h3 class="errorh3">常见故障列表：</h3>
						<p id="errortitle">
							<a href="http://web.it600.net/home/cs_error#e0">Windows 提示
								691 错误 或 IOS/MacOS提示“鉴定失败” </a><br> <a
								href="http://web.it600.net/home/cs_error#e1">Windows 使用 PPTP
								协议提示 619 错误</a><br> <a
								href="http://web.it600.net/home/cs_error#e2">Windows 提示 800
								错误</a><br> <a href="http://web.it600.net/home/cs_error#e3">Windows
								提示 806、807 错误</a><br> <a
								href="http://web.it600.net/home/cs_error#e4">Windows 提示 789
								错误</a><br> <a href="http://web.it600.net/home/cs_error#e5">为什么没找到行云VPN的客户端或软件的下载页面？</a><br>
							<a href="http://web.it600.net/home/cs_error#e6">移动设备(IOS,安卓)连接数分钟断开连接了</a><br>
							<a href="http://web.it600.net/home/cs_error#e7">安卓系统无法连接VPN，以及IOS无法建立PPTP连接</a><br>
							<a href="http://web.it600.net/home/cs_error#e8">可以连接上VPN，但是无法打开海外网站</a><br>
							<a href="http://web.it600.net/home/cs_error#e9">可以连接上VPN，但是马上就断开或者什么网页也打不开</a><br>
							<a href="http://web.it600.net/home/cs_error#e10">连接VPN之后，速度变慢了？</a><br>
							<a href="http://web.it600.net/home/cs_error#e11">上述问题解决方法中没有我需要的？</a>
						</p>



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

			$(".errorhide").hide();
			
			$("#tkform").validate({
				errorElement : 'span',
				
				rules : {  //增加rules属性
					tktitle: { required : true , minlength : 2 , maxlength : 80} ,  
					tktype: { required : true } ,  
					tkcont : { required : true , minlength : 10 , maxlength : 1000} ,
				}
			})


			$('#errortitle a').click(function(){
				var errorid = $(this).attr("href");
				errorid = errorid.replace("#","");
				
				$('h3.errorhide').hide();
				$('p.errorhide').hide();
				$('h3.'+errorid).fadeIn();
				$('p.'+errorid).fadeIn();
		
			});
	
	});
	</script>

	<font style="display:none;"> <script
		src="./常见故障 _ 行云后台_files/stat.php" language="JavaScript"></script> <script
		src="./常见故障 _ 行云后台_files/core.php" charset="utf-8"
		type="text/javascript"></script> <a
		href="http://www.cnzz.com/stat/website.php?web_id=1253786191"
		target="_blank" title="站长统计">站长统计</a></font>



</body>
</html>