package com.github.kelylm.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer")
public class CustomerController {
	private static Logger logger = LoggerFactory.getLogger(CustomerController.class);

	private static final String pageDir = "customer";

	@RequestMapping("billing")
	public String index() {

		return pageDir + "/billing";
	}

	@RequestMapping("error")
	public String error() {

		return pageDir + "/error";
	}

	@RequestMapping("tickets")
	public String tickets() {

		return pageDir + "/tickets";
	}


	@RequestMapping("ticketsadd")
	public String ticketsadd() {

		return pageDir + "/ticketsadd";
	}
}
