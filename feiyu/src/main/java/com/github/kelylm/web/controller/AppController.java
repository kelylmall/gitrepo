package com.github.kelylm.web.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.kelylm.service.AppService;
import com.google.common.collect.ImmutableList;

@Controller
@RequestMapping(value = "/admin/app")
public class AppController {
	private static Logger logger = LoggerFactory.getLogger(AppController.class);
	@Autowired
	private AppService appService;

	private static final String PAGE_SIZE = "10";

	// 允许排序的字段
	private static final List<String> ALLOW_SORT_COLUMNS = ImmutableList.of("id");

	/**
	 * 构建排序SQL
	 * 
	 * 排序，默认按ID倒序，参数名称必须为数据库字段名，多个排序字段以-间隔，行如：_id-name_
	 * 
	 * @param sort
	 * @return
	 */
	public static String buildSort(String sort) {
		StringBuffer strf = new StringBuffer();
		for (String sortStr : sort.split("-")) {
			// 如果传入的字段不允许排序，则跳出
			if (!ALLOW_SORT_COLUMNS.contains(sortStr.replace("_", ""))) {
				continue;
			}
			// 去除以下划线开头结尾的参数，只能以固定格式
			if (sortStr.startsWith("_") && sortStr.endsWith("_")) {
				continue;
			}
			if (sortStr.startsWith("_")) {// 以下划线开始为升序
				strf.append(sortStr.substring(1)).append(" ASC");
			} else if (sortStr.endsWith("_")) {// 以下划线结束为降序
				strf.append(sortStr.substring(0, sortStr.length() - 1)).append(" DESC");
			}
		}
		return strf.toString();
	}
}
