package com.github.kelylm.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("vpn")
public class VpnController {
	private static Logger logger = LoggerFactory.getLogger(VpnController.class);

	private static final String pageDir = "vpn";

	@RequestMapping("servers")
	public String servers() {
		return pageDir + "/servers";
	}

	@RequestMapping("vpnlist")
	public String vpnList() {
		return pageDir + "/vpnlist";
	}

	@RequestMapping("newvpn")
	public String newVpn() {
		return pageDir + "/newvpn";
	}

	@RequestMapping("revpn")
	public String revpn() {
		return pageDir + "/revpn";
	}
}
