package com.github.kelylm.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * @Title: RegexValidator.java
 * @Description:(正则验证)
 * @author kelylmall
 * @date 2014年3月27日 上午11:45:59
 * @version V1.0
 */
public class RegexValidator {

	private static Logger logger = LoggerFactory.getLogger(RegexValidator.class);
	/**
	 * 身份证的格式验证
	 * @param cardNo
	 * @return
	 */
	public static boolean isCardNo(String cardNo){
		 // 准备正则表达式（身份证有15位和18位两种，身份证的最后一位可能是字母）
        String regex = "(\\d{14}\\w)|\\d{17}\\w";
        Pattern pattern = Pattern.compile(regex); 
        Matcher matcher = pattern.matcher(cardNo);
        return matcher.matches();
	}
	/**
	 * 验证是否为手机号
	 * @param mobile
	 * @return
	 */
	public static boolean isMobile(String mobile) {
		Pattern p = Pattern
				.compile("^((13[0-9])|(15[0-9])|(18[0-9])|(147))\\d{8}$");
		Matcher m = p.matcher(mobile);
		return m.matches();
	}

	/**
	 * 验证是否为邮箱格式
	 * @param email
	 * @return
	 */
	public static boolean isEmail(String email) {
		String str = "^([a-zA-Z0-9]*[-_]?[a-zA-Z0-9]+)*@([a-zA-Z0-9]*[-_]?[a-zA-Z0-9]+)+[\\.][A-Za-z]{2,3}([\\.][A-Za-z]{2})?$";
		Pattern p = Pattern.compile(str);
		Matcher m = p.matcher(email);
		return m.matches();
	}

	public static void main(String args[]) {
		String mobile = "13522505810";
		logger.info("---{}", RegexValidator.isMobile(mobile));
	}

}
