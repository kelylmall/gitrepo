package modules.json;

/**
 * @FileName PrimitiveType.java
 * @Description: java的基本类型、
 *               基本类型可以分为三类，字符类型char，布尔类型boolean以及数值类型byte、short、int、long
 *               、float、double
 *               。数值类型又可以分为整数类型byte、short、int、long和浮点数类型float、double
 *               。JAVA中的数值类型不存在无符号的
 *               ，它们的取值范围是固定的，不会随着机器硬件环境或者操作系统的改变而改变。实际上，JAVA中还存在另外一种基本类型void
 *               ，它也有对应的包装类
 *               java.lang.Void，不过我们无法直接对它们进行操作。对于数值类型的基本类型的取值范围，我们无需强制去记忆
 *               ，因为它们的值都已经以常量的形式定义在对应的包装类中了
 * @version V1.0
 */
public class PrimitiveType {

	public static void main(String[] args) {
		// byte
		System.out.println("基本类型：byte 二进制位数：" + Byte.SIZE);
		System.out.println("包装类：" + Byte.class.getName());
		System.out.println("最小值：Byte.MIN_VALUE=" + Byte.MIN_VALUE);
		System.out.println("最大值：Byte.MAX_VALUE=" + Byte.MAX_VALUE);
		System.out.println();

		// short
		System.out.println("基本类型：short 二进制位数：" + Short.SIZE);
		System.out.println("包装类：" + Short.class.getName());
		System.out.println("最小值：Short.MIN_VALUE=" + Short.MIN_VALUE);
		System.out.println("最大值：Short.MAX_VALUE=" + Short.MAX_VALUE);
		System.out.println();

		// int
		System.out.println("基本类型：int 二进制位数：" + Integer.SIZE);
		System.out.println("包装类：" + Integer.class.getName());
		System.out.println("最小值：Integer.MIN_VALUE=" + Integer.MIN_VALUE);
		System.out.println("最大值：Integer.MAX_VALUE=" + Integer.MAX_VALUE);
		System.out.println();

		// long
		System.out.println("基本类型：long 二进制位数：" + Long.SIZE);
		System.out.println("包装类：" + Long.class.getName());
		System.out.println("最小值：Long.MIN_VALUE=" + Long.MIN_VALUE);
		System.out.println("最大值：Long.MAX_VALUE=" + Long.MAX_VALUE);
		System.out.println();

		// float
		System.out.println("基本类型：float 二进制位数：" + Float.SIZE);
		System.out.println("包装类：" + Float.class.getName());
		System.out.println("最小值：Float.MIN_VALUE=" + Float.MIN_VALUE);
		System.out.println("最大值：Float.MAX_VALUE=" + Float.MAX_VALUE);
		System.out.println();

		// double
		System.out.println("基本类型：double 二进制位数：" + Double.SIZE);
		System.out.println("包装类：" + Double.class.getName());
		System.out.println("最小值：Double.MIN_VALUE=" + Double.MIN_VALUE);
		System.out.println("最大值：Double.MAX_VALUE=" + Double.MAX_VALUE);
		System.out.println();

		// char
		System.out.println("基本类型：char 二进制位数：" + Character.SIZE);
		System.out.println("包装类：" + Character.class.getName());
		// 以数值形式而不是字符形式将Character.MIN_VALUE输出到控制台
		System.out.println("最小值：Character.MIN_VALUE=" + (int) Character.MIN_VALUE);
		// 以数值形式而不是字符形式将Character.MAX_VALUE输出到控制台
		System.out.println("最大值：Character.MAX_VALUE=" + (int) Character.MAX_VALUE);
	}

}
