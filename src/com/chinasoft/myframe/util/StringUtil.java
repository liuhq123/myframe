package com.chinasoft.myframe.util;

/**
 * StringUtil
 * 
 * @author liuhq
 * @since 2016年5月1日 上午8:24:59
 * @version 1.0
 */
public class StringUtil {

	/**
	 * isNull
	 * 
	 * @param str
	 * @return
	 * 
	 * @author liuhq
	 * @since 2016/5/1
	 * @version 1.0
	 */
	public static boolean isNull(String str) {
		if (str == null || "".equals(str)) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * main
	 * 
	 * @param args
	 * 
	 * @author liuhq
	 * @since 2016/5/1
	 * @version 1.0
	 */
	public static void main(String[] args) {
		if (isNull("myframe")) {
			System.out.print("MyFrame is null");
		} else {
			System.out.print("MyFrame is not null");
		}
	}

}
