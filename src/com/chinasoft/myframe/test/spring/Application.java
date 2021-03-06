package com.chinasoft.myframe.test.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.*;

/**
 * Application
 * 
 * @author liuhq
 * @since 2016年5月1日 上午11:20:20
 * @version 1.0
 */
@Configuration
@ComponentScan
public class Application {

	@Bean
	MessageService mockMessageService() {
		return new MessageService() {
			public String getMessage() {
				return "Hello World!";
			}
		};
	}

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		ApplicationContext context = new AnnotationConfigApplicationContext(
				Application.class);
		MessagePrinter printer = context.getBean(MessagePrinter.class);
		printer.printMessage();
	}
}
