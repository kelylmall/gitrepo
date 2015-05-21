package com.github.kelylm.web.tag;

/**
 * 
 * @Title: TagUtil.java
 * @Description:(用一句话描述该文件做什么)
 * @author kelylmall
 * @date 2014年3月28日 下午5:01:06
 * @version V1.0
 */
class TagUtil {
    public static String BLOCK = "__jsp_override__";
    static String getOverrideVariableName(String name) {
        return BLOCK + name;
    }

}
