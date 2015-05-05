package modules.util;

import com.util.modules.util.Identities;
import org.junit.Test;

import java.util.Random;

public class IdentitiesTest {

	@Test
	public void demo() {
//		System.out.println("uuid: " + Identities.uuid());
//		System.out.println("uuid2:" + Identities.uuid2());
//		System.out.println("randomLong:  " + Identities.randomLong());
//		System.out.println("randomBase62:" + Identities.randomBase62(7));
//		System.out.println("serialNo:" + Identities.serialNo());

//        for (int i = 0; i <10000; i++) {
//            System.out.println("serialNo:" + Identities.serialNo());
//        }
        for (int i = 0; i <10000 ; i++) {
            Random random=new Random();
            System.out.println( random.nextInt(9999));
        }


    }

}
