package modules.xml;

import com.alibaba.fastjson.JSON;
import com.util.modules.xml.JaxbMapper;
import junit.framework.TestCase;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;

/**
 * Created by kelylm on 15-4-30.
 */
public class XmlTests  extends TestCase{

    public void testXMLtoBean(){
        File file=new File("/home/kelylm/ideaProjects/workidea/util-modules/src/test/java/modules/xml/xml.xml");
        try {
            String xmlStr = FileUtils.readFileToString(file, "utf-8");

            User user = JaxbMapper.fromXml(xmlStr, User.class);
            System.out.println(JSON.toJSONString(user));

        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
