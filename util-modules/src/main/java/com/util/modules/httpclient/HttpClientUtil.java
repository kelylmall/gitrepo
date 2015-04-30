package com.util.modules.httpclient;

import org.apache.http.Consts;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;


public class HttpClientUtil {

    private static final int CONNECTION_TIMEOUT = 5 * 1000;
    private static final int SO_TIMEOUT = 5 * 1000;
    private static final Long CONN_MANAGER_TIMEOUT = 500L;

    private static final String USER_AGENT = "Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4";
    private static final String CONTENT_TYPE = "text/html, application/json; charset=utf-8";
    private static final String ACCEPT="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";
    /**
     * @param https
     * @param port
     * @return
     */
    private static HttpClient createHttpClient(boolean https, Integer port) {
        HttpParams httpParams = setConfig();
        if (https) {
            HttpClient httpclient = new DefaultHttpClient(httpParams);
            registryHttps(httpclient, port);
            return httpclient;
        } else {
            return new DefaultHttpClient(httpParams);
        }


    }

    private static HttpParams setConfig() {
        HttpParams params = new BasicHttpParams();
        params.setIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, CONNECTION_TIMEOUT);
        params.setIntParameter(CoreConnectionPNames.SO_TIMEOUT, SO_TIMEOUT);
        params.setLongParameter(ClientPNames.CONN_MANAGER_TIMEOUT, CONN_MANAGER_TIMEOUT);
        //设置常用HTTP头的设置
        Collection<BasicHeader> collection = new ArrayList<>();
        collection.add(new BasicHeader("Accept", ACCEPT));
        collection.add(new BasicHeader(HTTP.CONTENT_TYPE, CONTENT_TYPE));
        collection.add(new BasicHeader(HTTP.USER_AGENT, USER_AGENT));
        params.setParameter(ClientPNames.DEFAULT_HEADERS, collection);
        return params;
    }

    /**
     * @param url
     * @param params
     * @param https
     * @param port
     */
    public static String get(String url, Map<String, String> params, boolean https, Integer port) {
        HttpClient httpClient = createHttpClient(https, port);

        HttpGet httpGet = new HttpGet();
        HttpResponse response = null; // 执行get请求

        String strResult = "";
        try {
            //设置请求参数
            List<NameValuePair> nvps = new ArrayList<NameValuePair>();
            if (params != null && !params.isEmpty()) {
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    nvps.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
                }
            }

            response = httpClient.execute(httpGet);
            if (response.getStatusLine().getStatusCode() == 200) {// 若状态码为200 ok
                strResult = EntityUtils.toString(response.getEntity()); // 取出回应字串
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (httpClient != null) {
                httpClient.getConnectionManager().shutdown();// 关闭连接,释放资源
            }
        }
        return strResult;

    }

    /**
     * @param url
     * @param params
     * @param https
     * @param port
     */
    public static String post(String url, Map<String, String> params, boolean https, Integer port) {
        HttpClient httpClient = createHttpClient(https, port);
        HttpPost httpPost = new HttpPost(url); // 创建HttpPost
        HttpResponse response = null; // 执行POST请求
        String strResult = "";
        try {
            //设置请求参数
            List<NameValuePair> nvps = new ArrayList<NameValuePair>();
            if (params != null && !params.isEmpty()) {
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    nvps.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
                }
                httpPost.setEntity(new UrlEncodedFormEntity(nvps, Consts.UTF_8));
            }

            response = httpClient.execute(httpPost);
            if (response.getStatusLine().getStatusCode() == 200) {// 若状态码为200 ok
                strResult = EntityUtils.toString(response.getEntity()); // 取出回应字串
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (httpClient != null) {
                httpClient.getConnectionManager().shutdown();// 关闭连接,释放资源
            }
        }
        return strResult;
    }

    /**
     * @param url
     * @param content
     * @param https
     * @param port
     */
    public static String postBody(String url, String content, boolean https, Integer port) {
        HttpClient httpClient = createHttpClient(https, port);

        HttpResponse response = null; // 执行POST请求
        HttpPost httpPost = new HttpPost(url); // 创建HttpPost
        String strResult = "";
        try {
            StringEntity se = new StringEntity(content, Consts.UTF_8);
            se.setContentEncoding(Consts.UTF_8.name());
            httpPost.setEntity(se);
            response = httpClient.execute(httpPost);
            if (response.getStatusLine().getStatusCode() == 200) {  // 若状态码为200 ok
                strResult = EntityUtils.toString(response.getEntity());  // 取出回应字串
            }
            System.out.println("请求地址: " + httpPost.getURI());
            System.out.println("响应状态: " + response.getStatusLine());
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (httpClient != null) {
                httpClient.getConnectionManager().shutdown();// 关闭连接,释放资源
            }
        }
        return strResult;

    }

    /**
     * https 不验证证书
     *
     * @param httpClient httpcleint
     * @param port       https访问端口
     */
    public static void registryHttps(HttpClient httpClient, Integer port) {
        try {
            X509TrustManager xtm = new X509TrustManager() { // 创建TrustManager
                public void checkClientTrusted(X509Certificate[] chain,
                                               String authType)
                        throws CertificateException {
                }

                public void checkServerTrusted(X509Certificate[] chain,
                                               String authType)
                        throws CertificateException {
                }

                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
            };
            // TLS1.0与SSL3.0基本上没有太大的差别，可粗略理解为TLS是SSL的继承者，但它们使用的是相同的SSLContext
            SSLContext ctx = SSLContext.getInstance("TLS");
            // 使用TrustManager来初始化该上下文，TrustManager只是被SSL的Socket所使用
            ctx.init(null, new TrustManager[]{xtm}, null);
            // 创建SSLSocketFactory
            SSLSocketFactory socketFactory = new SSLSocketFactory(ctx);
            socketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            // 通过SchemeRegistry将SSLSocketFactory注册到我们的HttpClient上
            httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", port == null ? 443 : port.intValue()
                    , socketFactory));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
