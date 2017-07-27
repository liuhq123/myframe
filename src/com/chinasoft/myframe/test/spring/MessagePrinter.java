package com.chinasoft.myframe.test.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * MessagePrinter
 * 
 * @author liuhq
 * @since 2016年5月1日 上午11:20:48
 * @version 1.0
 */
@Component
public class MessagePrinter {

	final private MessageService service;

	@Autowired
	public MessagePrinter(MessageService service) {
		this.service = service;
	}

	public void printMessage() {
		System.out.println(this.service.getMessage());
	}
}
