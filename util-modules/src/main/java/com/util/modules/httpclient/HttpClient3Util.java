package com.util.modules.httpclient;

import org.apache.commons.httpclient.*;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.httpclient.params.*;
import org.apache.commons.httpclient.protocol.Protocol;
import org.apache.commons.io.IOUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class HttpClient3Util {

    private static final int CONNECTION_TIMEOUT = 5 * 1000;
    private static final int SO_TIMEOUT = 5 * 1000;
    private static final int MAX_CONNECTION=50;
    private static final String USER_AGENT = "Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4";
    private static final String CONTENT_TYPE = "text/html, application/json; charset=utf-8";
    private static final String ACCEPT = "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";


    private static HttpClient createHttpClient(boolean https, Integer port) {
        HttpClientParams httpClientParams = setConfig();

        HttpConnectionManagerParams params = new HttpConnectionManagerParams();
        params.setConnectionTimeout(CONNECTION_TIMEOUT);
        params.setSoTimeout(SO_TIMEOUT);
        params.setMaxTotalConnections(MAX_CONNECTION);
        params.setDefaultMaxConnectionsPerHost(MAX_CONNECTION);
        HttpConnectionManager connectionManager=new SimpleHttpConnectionManager();
        connectionManager.setParams(params);

        if (https) {
            // 指定协议名称和默认的端口号
            Protocol myhttps = new Protocol("https", new HttpClient3SecureProtocolSocketFactory(), port == null ? 443 : port.intValue());
            // 注册刚才创建的https 协议对象
            Protocol.registerProtocol("https", myhttps);
        }

        HttpClient httpClient = new HttpClient(connectionManager);
        httpClient.setParams(httpClientParams);
        return httpClient;
    }

    private static HttpClientParams setConfig() {
        HttpParams httpParams=new DefaultHttpParams();
        httpParams.setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "utf-8");
        httpParams.setParameter(HttpMethodParams.USER_AGENT, USER_AGENT);
        httpParams.setParameter("Accept", ACCEPT);
        httpParams.setParameter("Content-Type",CONTENT_TYPE);
        HttpClientParams httpClientParams = new HttpClientParams(httpParams);
            
        return httpClientParams;

    }

    public static String get(String url, Map<String, String> params, boolean https, Integer port) {
        HttpClient httpClient = createHttpClient(https, port);
        GetMethod gMethod = new GetMethod(url);
        String strResult = "";
        try {
            //设置请求参数
            if (params != null && !params.isEmpty()) {
                HttpMethodParams httpMethodParams = new HttpMethodParams();
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    httpMethodParams.setParameter(entry.getKey(), entry.getValue());
                }
                gMethod.setParams(httpMethodParams);
            }
            httpClient.executeMethod(gMethod);
            strResult = gMethod.getResponseBodyAsString();
        } catch (HttpException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            gMethod.releaseConnection();
        }
        return strResult;
    }


    public static String post(String url, Map<String, String> params, boolean https, Integer port) {
        HttpClient httpClient = createHttpClient(https, port);
        PostMethod pmethod = new PostMethod(url);
        String strResult = "";
        try {
            //设置请求参数
            if (params != null && !params.isEmpty()) {
                List<NameValuePair> pList = new ArrayList<>();
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    pList.add(new NameValuePair(entry.getKey(), entry.getValue()));
                }
                pmethod.setRequestBody(pList.toArray(new NameValuePair[pList.size()]));
            }

            httpClient.executeMethod(pmethod);
            strResult = pmethod.getResponseBodyAsString();
        } catch (HttpException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            pmethod.releaseConnection();
        }
        return strResult;

    }

    public static String postBody(String url, String content, boolean https, Integer port) {

        HttpClient httpClient = createHttpClient(https, port);
        PostMethod pmethod = new PostMethod(url);
        String strResult = "";
        try {
            //设置请求参数
            RequestEntity requestEntity = new InputStreamRequestEntity(IOUtils.toInputStream(content, "UTF-8"));
            pmethod.setRequestEntity(requestEntity);
            httpClient.executeMethod(pmethod);
            strResult = pmethod.getResponseBodyAsString();
        } catch (HttpException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            pmethod.releaseConnection();
        }
        return strResult;

    }


}
