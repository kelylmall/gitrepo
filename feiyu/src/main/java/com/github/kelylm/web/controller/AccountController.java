package com.github.kelylm.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("account")
public class AccountController {
	private static Logger logger = LoggerFactory.getLogger(AccountController.class);
	private static final String pageDir = "account";

	@RequestMapping("modifyPwd")
	public String modifyPwd() {

		return pageDir + "/modifyPwd";
	}

	@RequestMapping("loginRecord")
	public String loginRecord() {

		return pageDir + "/loginRecord";
	}

}
