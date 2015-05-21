package com.github.kelylm.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("financial")
public class FinancialController {
	private static Logger logger = LoggerFactory.getLogger(FinancialController.class);

	private static final String pageDir = "financial";

	@RequestMapping("pay")
	public String pay() {

		return pageDir + "/pay";
	}

	@RequestMapping("commission")
	public String commission() {

		return pageDir + "/commission";
	}

	@RequestMapping("paylog")
	public String paylog() {

		return pageDir + "/paylog";
	}

	@RequestMapping("orderlog")
	public String orderlog() {

		return pageDir + "/orderlog";
	}

}
