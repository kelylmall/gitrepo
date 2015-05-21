<%@include file="/includes/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0038)http://web.it600.net/home/main_servers -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>服务器地址列表 行云后台</title>

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
<script type="text/javascript" src="${ctx}/js/messages_cn.js"></script>
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
					<a href="http://web.it600.net/home/main_servers#">Nebula Admin</a>
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

					<li><a href="http://web.it600.net/home/main_servers#"
						class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
							VPN服务管理
					</a>
						<ul style="display: block;">
							<li><a class="current"
								href="./服务器地址列表 行云后台_files/服务器地址列表 行云后台.html">服务器线路</a></li>
							<li><a class=""
								href="http://web.it600.net/home/main_vpnlist">VPN账号列表</a></li>
							<!-- Add class "current" to sub menu items also -->
							<li><a class="" href="http://web.it600.net/home/main_newvpn">新建VPN账号</a></li>
							<li><a class="" href="http://web.it600.net/home/main_renew">续费VPN账号</a></li>
						</ul></li>


					<li><a href="http://web.it600.net/home/main_servers#"
						class="nav-top-item "> 财务管理 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/fin_pay">账户充值</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_commission">佣金推介</a></li>
							<li><a class="" href="http://web.it600.net/home/fin_paylog">充值记录</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_orderlog">消费记录</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/main_servers#"
						class="nav-top-item " style="padding-right: 15px;"> 客服帮助 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/cs_billing">常见疑问</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_error">常见故障</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_tickets">工单列表</a></li>
							<li><a class=""
								href="http://web.it600.net/home/cs_ticketsadd">提交工单</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/main_servers#"
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
					href="./服务器地址列表 行云后台_files/服务器地址列表 行云后台.html"><span> <img
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

					<h3 style="cursor: s-resize;">服务器地址列表</h3>

					<ul class="content-box-tabs">
						<li><a href="http://web.it600.net/home/main_servers#tab0"
							class="default-tab current">全部</a></li>
						<!-- href must be unique and match the id of target div -->
						<li><a href="http://web.it600.net/home/main_servers#tab1">美国</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab2">大陆</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab3">日本</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab4">新加坡</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab5">台湾</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab6">香港</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab7">韩国</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab8">下载</a></li>
						<li><a href="http://web.it600.net/home/main_servers#tab9">欧洲</a></li>
					</ul>

					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab0"
						style="display: block;">
						<!-- This is the target div. id must match the href of this div's tab -->

						<div class="notification Noti_attention png_bg"
							style="opacity: 0; display: none;">
							<a href="http://web.it600.net/home/main_servers#" class="close"><img
								src="${ctx}/img/cross_grey_small.png"
								title="Close this notification" alt="close"></a>
							<div>
								提示！请勿在<u>美国线路</u>使用<u>P2P</u>工具或下载<u>侵犯版权</u>的影音文件，若需要可用<u>下载专线</u>。<br>
								也请勿使用我们的任何线路 群发垃圾邮件(SPAM)，一旦系统检测到将会封停您的账号！谢谢合作！
							</div>
						</div>

						<table>

							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a>
									</th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>
							<tbody>

								<tr class="alt-row">
									<td>日本大阪01</td>
									<td><strong>jp1.bulusi.net</strong></td>
									<td class="serversip">106.184.7.208</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>日本大阪02</td>
									<td><strong>jp2.bulusi.net</strong></td>
									<td class="serversip">106.187.48.99</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>日本大阪03</td>
									<td><strong>jp3.bulusi.net</strong></td>
									<td class="serversip">106.187.37.75</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>日本大阪04</td>
									<td><strong>jp4.bulusi.net</strong></td>
									<td class="serversip">106.184.2.43</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好(新)</td>
								</tr>
								<tr class="alt-row">
									<td>中国台湾01</td>
									<td><strong>tw1.bulusi.net</strong></td>
									<td class="serversip">60.250.12.53</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>中国台湾02</td>
									<td><strong>tw2.bulusi.net</strong></td>
									<td class="serversip">211.23.149.66</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>韩国首尔01</td>
									<td><strong>kr1.bulusi.net</strong></td>
									<td class="serversip">61.36.33.236</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>新加坡02</td>
									<td><strong>sg2.bulusi.net</strong></td>
									<td class="serversip">173.255.143.10</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好(新)</td>
								</tr>
								<tr class="alt-row">
									<td>新加坡01</td>
									<td><strong>sg1.bulusi.net</strong></td>
									<td class="serversip">199.195.193.38</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>下载专线01</td>
									<td><strong>d1.bulusi.net</strong></td>
									<td class="serversip">173.255.243.220</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>美国圣何塞06</td>
									<td><strong>us6.bulusi.net</strong></td>
									<td class="serversip">206.217.192.229</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好(新)</td>
								</tr>
								<tr>
									<td>美国加州02</td>
									<td><strong>us2.bulusi.net</strong></td>
									<td class="serversip">45.56.88.202</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>美国加州03</td>
									<td><strong>us3.bulusi.net</strong></td>
									<td class="serversip">45.56.86.252</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>美国加州04</td>
									<td><strong>us4.bulusi.net</strong></td>
									<td class="serversip">45.56.85.37</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>美国加州05</td>
									<td><strong>us5.bulusi.net</strong></td>
									<td class="serversip">45.56.80.104</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>美国加州01</td>
									<td><strong>us1.bulusi.net</strong></td>
									<td class="serversip">45.56.91.36</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国香港01</td>
									<td><strong>hk1.bulusi.net</strong></td>
									<td class="serversip">59.188.136.90</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>中国香港02</td>
									<td><strong>hk2.bulusi.net</strong></td>
									<td class="serversip">59.188.87.69</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>英国伦敦01</td>
									<td><strong>uk1.bulusi.net</strong></td>
									<td class="serversip">212.71.253.116</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>中国青岛01</td>
									<td><strong>cn1.bulusi.net</strong></td>
									<td class="serversip">121.42.146.58</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国上海02</td>
									<td><strong>cn2.bulusi.net</strong></td>
									<td class="serversip">115.159.87.192</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>中国北京03</td>
									<td><strong>cn3.bulusi.net</strong></td>
									<td class="serversip">123.57.34.42</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国深圳04</td>
									<td><strong>cn4.bulusi.net</strong></td>
									<td class="serversip">120.24.159.101</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
						<div>
							<p class="fblue">使用提示：请使用 大陆之外 的线路访问Google、Facebook、YTB等
								被墙网站，！</p>
						</div>
					</div>
					<!-- End #tab1 -->

					<div class="tab-content" id="tab1" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>美国圣何塞06</td>
									<td><strong>us6.bulusi.net</strong></td>
									<td class="serversip">206.217.192.229</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好(新)</td>
								</tr>
								<tr class="alt-row">
									<td>美国加州02</td>
									<td><strong>us2.bulusi.net</strong></td>
									<td class="serversip">45.56.88.202</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>美国加州03</td>
									<td><strong>us3.bulusi.net</strong></td>
									<td class="serversip">45.56.86.252</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>美国加州04</td>
									<td><strong>us4.bulusi.net</strong></td>
									<td class="serversip">45.56.85.37</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>美国加州05</td>
									<td><strong>us5.bulusi.net</strong></td>
									<td class="serversip">45.56.80.104</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>美国加州01</td>
									<td><strong>us1.bulusi.net</strong></td>
									<td class="serversip">45.56.91.36</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab1 -->
					<div class="tab-content" id="tab2" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>中国青岛01</td>
									<td><strong>cn1.bulusi.net</strong></td>
									<td class="serversip">121.42.146.58</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国上海02</td>
									<td><strong>cn2.bulusi.net</strong></td>
									<td class="serversip">115.159.87.192</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>中国北京03</td>
									<td><strong>cn3.bulusi.net</strong></td>
									<td class="serversip">123.57.34.42</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国深圳04</td>
									<td><strong>cn4.bulusi.net</strong></td>
									<td class="serversip">120.24.159.101</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab2 -->
					<div class="tab-content" id="tab3" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>日本大阪01</td>
									<td><strong>jp1.bulusi.net</strong></td>
									<td class="serversip">106.184.7.208</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>日本大阪02</td>
									<td><strong>jp2.bulusi.net</strong></td>
									<td class="serversip">106.187.48.99</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr>
									<td>日本大阪03</td>
									<td><strong>jp3.bulusi.net</strong></td>
									<td class="serversip">106.187.37.75</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>日本大阪04</td>
									<td><strong>jp4.bulusi.net</strong></td>
									<td class="serversip">106.184.2.43</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好(新)</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab3 -->
					<div class="tab-content" id="tab4" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>新加坡02</td>
									<td><strong>sg2.bulusi.net</strong></td>
									<td class="serversip">173.255.143.10</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好(新)</td>
								</tr>
								<tr class="alt-row">
									<td>新加坡01</td>
									<td><strong>sg1.bulusi.net</strong></td>
									<td class="serversip">199.195.193.38</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab4 -->
					<div class="tab-content" id="tab5" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>中国台湾01</td>
									<td><strong>tw1.bulusi.net</strong></td>
									<td class="serversip">60.250.12.53</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国台湾02</td>
									<td><strong>tw2.bulusi.net</strong></td>
									<td class="serversip">211.23.149.66</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab5 -->
					<div class="tab-content" id="tab6" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>中国香港01</td>
									<td><strong>hk1.bulusi.net</strong></td>
									<td class="serversip">59.188.136.90</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
								<tr class="alt-row">
									<td>中国香港02</td>
									<td><strong>hk2.bulusi.net</strong></td>
									<td class="serversip">59.188.87.69</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab6 -->
					<div class="tab-content" id="tab7" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>韩国首尔01</td>
									<td><strong>kr1.bulusi.net</strong></td>
									<td class="serversip">61.36.33.236</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab7 -->
					<div class="tab-content" id="tab8" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr class="alt-row">
									<td>下载专线01</td>
									<td><strong>d1.bulusi.net</strong></td>
									<td class="serversip">173.255.243.220</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab8 -->
					<div class="tab-content" id="tab9" style="display: none;">
						<table>
							<thead>
								<tr>
									<th>线路名称</th>
									<th>线路地址 <a class="showip">[显示IP]</a></th>
									<th class="serversip">线路IP <a class="hideip">[隐藏]</a></th>
									<th>协议支持</th>
									<th>状态</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>英国伦敦01</td>
									<td><strong>uk1.bulusi.net</strong></td>
									<td class="serversip">212.71.253.116</td>
									<td>PPTP、L2TP</td>
									<td class="fgreen">良好</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End #tab9 -->

				</div>
				<!-- End .content-box-content -->

			</div>
			<!-- End .content-box -->

			<!--快捷帮助-->
			<div class="content-box">
				<!-- Start Content Box -->
				<div class="content-box-header">
					<h3 style="cursor: s-resize;">快捷帮助</h3>
				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">
					<div class="tab-content default-tab" id="tab10"
						style="display: block;">
						<h3>各系统 VPN设置教程</h3>
						<p>
							PPTP协议： <a target="_blank"
								href="http://web.it600.net/help/setvpn/winxppptp">WinXP</a> , <a
								target="_blank" href="http://web.it600.net/help/setvpn/win7pptp">Win7</a>
							, <a target="_blank"
								href="http://web.it600.net/help/setvpn/win8pptp">Win8</a> , <a
								target="_blank"
								href="http://web.it600.net/help/setvpn/macospptp">MacOS</a> , <a
								target="_blank" href="http://web.it600.net/help/setvpn/iospptp">Iphone/Ipad</a>
							, <a target="_blank"
								href="http://web.it600.net/help/setvpn/androidpptp">Android</a>
							, <a target="_blank"
								href="http://web.it600.net/help/setvpn/ubuntupptp">Ubuntu</a><br>
							L2TP 协议： <a target="_blank"
								href="http://web.it600.net/help/setvpn/winxpl2tp">WinXP</a> , <a
								target="_blank" href="http://web.it600.net/help/setvpn/win7l2tp">Win7</a>
							, <a target="_blank"
								href="http://web.it600.net/help/setvpn/win8l2tp">Win8</a> , <a
								target="_blank"
								href="http://web.it600.net/help/setvpn/macosl2tp">MacOS</a> , <a
								target="_blank" href="http://web.it600.net/help/setvpn/iosl2tp">Iphone/Ipad</a>
							, <a target="_blank"
								href="http://web.it600.net/help/setvpn/androidl2tp">Android</a>
						</p>
					</div>
				</div>
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

	<font style="display:none;"> <script
		src="./服务器地址列表 行云后台_files/stat.php" language="JavaScript"></script> <script
		src="./服务器地址列表 行云后台_files/core.php" charset="utf-8"
		type="text/javascript"></script> <a
		href="http://www.cnzz.com/stat/website.php?web_id=1253786191"
		target="_blank" title="站长统计">站长统计</a></font>


	<script>
		$().ready(function() {
			//包含
			$("td:contains('良好')").addClass('fgreen');
			$("td:contains('暂停')").addClass('fgray');

			$(".showip").click(function(){ 
				$(".serversip").show();
				$(".showip").hide()
			});

			$(".hideip").click(function(){ 
				$(".serversip").hide();
				$(".showip").show()
			});

		});
	</script>




</body>
</html>