package modules.httpclient;

import com.util.modules.httpclient.HttpClient4Util;
import junit.framework.TestCase;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by kelylm on 15-4-30.
 */
public class HttpClientUtilTest extends TestCase {
    public void testGet() {



    }

    public void testPost() {
        String url="https://110.249.176.140:8443/JsonMainServlet.cl";
        String content="{\"header\":{\"key\":\"\",\"mobile\":\"\",\"sessionid\":\"\",\"status\":\"\",\"trancecode\":\"10055\",\"userid\":\"\",\"version\":\"1.0.0\"},\"password\":\"FB0E22C79AC75679\",\"username\":\"13241744496\"}";
        Map<String,String> params=new HashMap<>();
        params.put("json",content);
        String post = HttpClient4Util.post(url, params, true, 8843);
        System.out.println(post);
    }

}
