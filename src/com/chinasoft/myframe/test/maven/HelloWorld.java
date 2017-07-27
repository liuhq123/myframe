package com.chinasoft.myframe.test.maven;

import org.joda.time.LocalTime;

/**
 * HelloWorld
 * 
 * @author liuhq
 * @since 2016年5月1日 上午11:19:22
 * @version 1.0
 */
public class HelloWorld {

	/**
	 * main
	 * 
	 * @author liuhq
	 * @since 2016年5月1日 上午11:19:32
	 * @version 1.0
	 */
	public static void main(String[] args) {
		LocalTime currentTime = new LocalTime();
		System.out.println("The current local time is: " + currentTime);
		Greeter greeter = new Greeter();
		System.out.println(greeter.sayHello());
	}

}