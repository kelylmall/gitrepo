package com.github.kelylm.util;

import java.io.IOException;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.MappingJsonFactory;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @Title: JsonUtil.java
 * @Description: TODO(json转化、解析)
 * @author kelylmall
 * @date 2014年3月27日 上午11:08:46
 * @version V1.0
 */
public class JsonUtil {

	private static Logger logger = LoggerFactory.getLogger(JsonUtil.class);

	/**
	 * 将obj 转化为json字符串
	 * 
	 * @param obj
	 * @return string
	 */
	public static String objToJson(Object obj) {
		ObjectMapper objectMapper = null;
		String json = null;
		try {
			objectMapper = new ObjectMapper();
			json = objectMapper.writeValueAsString(obj);
		} catch (JsonProcessingException e) {
			logger.error("obj to json error", e);
		}
		return json;
	}

	/**
	 * 解析json字符串
	 * 
	 * @param jsonText
	 * @param key
	 * @return
	 */
	public static Object parseJson(String jsonText, String key) {
		JsonFactory jsonFactory = new MappingJsonFactory();
		JsonParser jsonParser = null;
		HashMap<String, Object> map = null;
		try {
			jsonParser = jsonFactory.createParser(jsonText);
			jsonParser.nextToken();//
			map = new HashMap<String, Object>();// 结果集HashMap
			while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
				jsonParser.nextToken(); // 跳转到Value
				map.put(jsonParser.getCurrentName(), jsonParser.getText()); // 将Json中的值装入Map中
			}
		} catch (JsonParseException e) {
			logger.error("parser json error", e);
		} catch (IOException e) {
			logger.error("parser json error", e);
		}
		return map.get(key) == null ? null : map.get(key);
	}

	/**
	 * 将string json 转化为Object
	 * @param String
	 *            json
	 * @param Class
	 *            cls
	 * @return Class obj
	 */
	public static <T> T jsonToObj(String json, Class<T> cls) {
		ObjectMapper objectMapper = null;
		T obj = null;
		try {
			objectMapper = new ObjectMapper();
			obj = (T) objectMapper.readValue(json, cls);
		} catch (Exception e) {
			logger.error("string json to obj error", e);
		}
		return obj;
	}
	
	public static void main(String[] args) {
		String answerJson = "{\"id\":10,\"questionId\":10,\"userId\":10,\"answer\":\"ssss\",\"isRight\":1,\"createTime\":\"2013-12-17\"}";
		// Answer answer = getBeanFromJsonString(answerJson, Answer.class);
		// String objectToJsonString = objectToJsonString(answer);
		String parseJson =(String) parseJson(answerJson, "questionId");
		System.out.println(parseJson);

	}

}
