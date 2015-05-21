<%@include file="/includes/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0033)http://web.it600.net/home/fin_pay -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>账户充值 | 行云后台</title>

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
					<a href="http://web.it600.net/home/fin_pay#">Nebula Admin</a>
				</h1>

				<!-- Logo (221px wide) -->
				<a href="http://web.it600.net/home"><img id="logo"
					src="${ctx}/img/logo.png" alt="Simpla Admin logo"></a>

				<!-- Sidebar Profile links -->
				<div id="profile-links">
					您好, <a href="http://web.it600.net/home/acc_set" title="编辑账户资料">kelylm@163.com</a><br>
					<br> 账户余额：<a href="./账户充值 _ 行云后台_files/账户充值 _ 行云后台.html"
						title="账户余额"><font color="green"> <b>0.00</b></font></a> 元<br>
					<br> <a href="./账户充值 _ 行云后台_files/账户充值 _ 行云后台.html"
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

					<li><a href="http://web.it600.net/home/fin_pay#"
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


					<li><a href="http://web.it600.net/home/fin_pay#"
						class="nav-top-item current"> 财务管理 </a>
						<ul style="display: block;">
							<li><a class="current"
								href="./账户充值 _ 行云后台_files/账户充值 _ 行云后台.html">账户充值</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_commission">佣金推介</a></li>
							<li><a class="" href="http://web.it600.net/home/fin_paylog">充值记录</a></li>
							<li><a class=""
								href="http://web.it600.net/home/fin_orderlog">消费记录</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/fin_pay#"
						class="nav-top-item "> 客服帮助 </a>
						<ul style="display: none;">
							<li><a class="" href="http://web.it600.net/home/cs_billing">常见疑问</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_error">常见故障</a></li>
							<li><a class="" href="http://web.it600.net/home/cs_tickets">工单列表</a></li>
							<li><a class=""
								href="http://web.it600.net/home/cs_ticketsadd">提交工单</a></li>
						</ul></li>

					<li><a href="http://web.it600.net/home/fin_pay#"
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
					href="./账户充值 _ 行云后台_files/账户充值 _ 行云后台.html"><span> <img
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

					<h3 style="cursor: s-resize;">账户充值</h3>



				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" style="display: block;">
						<!-- This is the target div. id must match the href of this div's tab -->
						<p>
							<b>当前账户余额：</b> ¥ <span id="balance">0.00</span> 元 （<a
								href="http://web.it600.net/home/fin_paylog">查看充值明细</a>）
						</p>

						<form method="post"
							action="http://web.it600.net/home/fin_checkpay" target="_blank">
							<b>选择付费方式：</b>
							<br>
							<ul class="payment">
								<li><input id="bank_0" type="radio" value=""
									name="checkPayment" checked="checked"><label
									for="bank_0"> <span class="bank_img"><img
											src="${ctx}/img/logo.gif" alt="支付宝" disabled="disabled"></span></label></li>

								<li><input id="bank_1" type="radio" value="ICBCB2C"
									name="checkPayment"><label for="bank_1"> <span
										class="bank_img"><img
											src="${ctx}/img/icon_zggsyh_s.gif" alt="中国工商银行"
											disabled="disabled"></span></label></li>

								<li><input id="bank_2" type="radio" value="BOCB2C"
									name="checkPayment"><label for="bank_2"> <span
										class="bank_img"><img src="${ctx}/img/BOC_OUT.gif"
											alt="中国银行" disabled="disabled"></span></label></li>

								<li><input id="bank_3" type="radio" value="CCB"
									name="checkPayment"><label for="bank_3"> <span
										class="bank_img"><img src="${ctx}/img/icon_ccb_s.gif"
											alt="中国建设银行" disabled="disabled"></span></label></li>
								<li><input id="bank_4" type="radio" value="ABC"
									name="checkPayment"><label for="bank_4"> <span
										class="bank_img"><img src="${ctx}/img/icon_abc_s.gif"
											alt="中国农业银行" disabled="disabled"></span></label></li>
								<li><input id="bank_5" type="radio" value="CMB"
									name="checkPayment"><label for="bank_5"> <span
										class="bank_img"><img src="${ctx}/img/icon_zsyh_s.gif"
											alt="招商银行" disabled="disabled"></span></label></li>


								<li><input id="bank_6" type="radio" value="COMM"
									name="checkPayment"><label for="bank_6"> <span
										class="bank_img"><img src="${ctx}/img/icon_comm_s.gif"
											alt="交通银行" disabled="disabled"></span></label></li>
								<li><input id="bank_7" type="radio" value="HZCBB2C"
									name="checkPayment"><label for="bank_7"> <span
										class="bank_img"><img src="${ctx}/img/HZCB_OUT.gif"
											alt="杭州银行" disabled="disabled"></span></label></li>
								<li><input id="bank_8" type="radio" value="CIB"
									name="checkPayment"><label for="bank_8"> <span
										class="bank_img"><img src="${ctx}/img/index_38.gif"
											alt="兴业银行" disabled="disabled"></span></label></li>
								<li><input id="bank_9" type="radio" value="CMBC"
									name="checkPayment"><label for="bank_9"> <span
										class="bank_img"> <img src="${ctx}/img/icon_cmbc_s.gif"
											alt="中国民生银行" disabled="disabled"></span></label></li>
								<li><input id="bank_10" type="radio" value="GDB"
									name="checkPayment"><label for="bank_10"> <span
										class="bank_img"><img src="${ctx}/img/icon_gdb_s.gif"
											alt="广东发展银行" disabled="disabled"></span></label></li>
								<li><input id="bank_11" type="radio" value="SDB"
									name="checkPayment"><label for="bank_11"> <span
										class="bank_img"><img src="${ctx}/img/icon_sdb_s.gif"
											alt="深圳发展银行" disabled="disabled"></span></label></li>
								<li><input id="bank_12" type="radio" value="SPDB"
									name="checkPayment"><label for="bank_12"> <span
										class="bank_img"><img src="${ctx}/img/SPDB_OUT.gif"
											alt="浦发银行" disabled="disabled"></span></label></li>
								<li><input id="bank_13" type="radio" value="CITIC"
									name="checkPayment"><label for="bank_13"> <span
										class="bank_img"> <img src="${ctx}/img/icon_itic_s.gif"
											alt="中信银行" disabled="disabled"></span></label></li>
								<li><input id="bank_14" type="radio" value="CEBBANK"
									name="checkPayment"><label for="bank_14"> <span
										class="bank_img"><img
											src="${ctx}/img/icon_cebbank_s.gif" alt="中国光大银行"
											disabled="disabled"></span></label></li>
								<li><input id="bank_15" type="radio" value="SHBANK"
									name="checkPayment"><label for="bank_15"> <span
										class="bank_img"><img src="${ctx}/img/SHBANK_OUT.gif"
											alt="上海银行" disabled="disabled"></span></label></li>
								<li><input id="bank_16" type="radio" value="NBBANK"
									name="checkPayment"><label for="bank_16"> <span
										class="bank_img"><img src="${ctx}/img/NBBANK_OUT.gif"
											alt="宁波银行" disabled="disabled"></span></label></li>
								<li><input id="bank_17" type="radio" value="SPABANK"
									name="checkPayment"><label for="bank_17"> <span
										class="bank_img"><img src="${ctx}/img/SPABANK_OUT.gif"
											alt="平安银行" disabled="disabled"></span></label></li>
								<li><input id="bank_18" type="radio" value="BJRCB"
									name="checkPayment"><label for="bank_18"> <span
										class="bank_img"><img src="${ctx}/img/BJRCB_OUT.gif"
											alt="北京农村商业银行" disabled="disabled"></span></label></li>
								<li><input id="bank_19" type="radio" value="POSTGC"
									name="checkPayment"><label for="bank_19"> <span
										class="bank_img"><img src="${ctx}/img/POSTGC.gif"
											alt="中国邮政储蓄银行" disabled="disabled"></span></label></li>
								<li><input id="bank_20" type="radio" value="ICBCBTB"
									name="checkPayment"><label for="bank_20"> <span
										class="bank_img"><img src="${ctx}/img/icbc_btb.gif"
											alt="中国工商银行（B2B）" disabled="disabled"></span></label></li>
								<li><input id="bank_21" type="radio" value="CCBBTB"
									name="checkPayment"><label for="bank_21"> <span
										class="bank_img"><img src="${ctx}/img/ccb_btb.gif"
											alt="中国建设银行（B2B）" disabled="disabled"></span></label></li>
								<li><input id="bank_22" type="radio" value="ABCBTB"
									name="checkPayment"><label for="bank_22"> <span
										class="bank_img"><img src="${ctx}/img/abc_btb.gif"
											alt="中国农业银行（B2B）" disabled="disabled"></span></label></li>
								<li><input id="bank_23" type="radio" value="SPDBB2B"
									name="checkPayment"><label for="bank_23"> <span
										class="bank_img"><img src="${ctx}/img/pufa_btb.gif"
											alt="中国浦发银行（B2B）" disabled="disabled"></span></label></li>


							</ul>

							<div class="clear"></div>
							<p>
								<b>选择充值金额：</b>
							</p>

							<p class="amountselect">
								<input type="radio" name="amount" id="amount_1" value="20"><label
									for="amount_1">20元</label> <input type="radio" name="amount"
									id="amount_2" value="50"><label for="amount_2">50元</label>
								<input checked="checked" type="radio" name="amount"
									id="amount_3" value="90"><label for="amount_3">90元</label>
								<input type="radio" name="amount" id="amount_4" value="160"><label
									for="amount_4">160元</label> <input type="radio" name="amount"
									id="amount_5" value="280"><label for="amount_5">280元</label>

								<input type="radio" name="amount" id="typeamount"><label
									for="typeamount">手动输入</label> <span id="typeamount_text"><input
									type="text" name="amount_text" id="amount_text"
									class="text-input" value="100"> 元</span>
							</p>
							<div class="clear"></div>
							<p></p>
							<p style="padding: 0px; margin: 0px;">
								<input id="paysubmit" class="button" type="submit"
									value="    去付款    ">
							</p>

							<div id="bg"></div>
							<div id="show">
								<h4>提示：</h4>
								<p>您是否已经支付成功？</p>
								<p>
									<input id="pay_success" type="button" value="付款成功"
										class="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										class="closebg" type="button" value="付款失败">
								</p>
							</div>

						</form>




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

			if($('#typeamount').is(':checked')){
				$('#typeamount_text').show();
			}

			$('input[name="checkPayment"]').click(function(){
				$('input[name="checkPayment"]').parent().removeClass();
				$(this).parent().addClass("planchecked");
			});
			
			$('#paysubmit').click(function(){
				if($('#typeamount').is(':checked')&&$('#amount_text').val()==""){
					alert("充值金额不能为空");
					$('#amount_text').focus();
					return false;
				}
			
				$('#bg').show();
				$('#show').show();
			});
			$('#pay_success').click(function(){
				location.href='/home';
			});
			$('input.closebg').click(function(){
				$('#bg').hide();
				$('#show').hide();
			});
			
			
			$('#typeamount').click(function(){
				$('#typeamount_text').show();
			});
			$('#typeamount').prevAll().click(function(){ 
				$('#typeamount_text').hide();
			}); 
			
			
			

		});
	</script>

	<font style="display:none;"> <script
		src="./账户充值 _ 行云后台_files/stat.php" language="JavaScript"></script> <script
		src="./账户充值 _ 行云后台_files/core.php" charset="utf-8"
		type="text/javascript"></script> <a
		href="http://www.cnzz.com/stat/website.php?web_id=1253786191"
		target="_blank" title="站长统计">站长统计</a></font>



</body>
</html>