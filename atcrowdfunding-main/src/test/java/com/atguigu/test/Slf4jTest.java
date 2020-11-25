package com.atguigu.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Slf4jTest {
	public static void main(String[] args) {
		Logger log = LoggerFactory.getLogger(Slf4jTest.class);

		log.debug("debug消息id={},name={}", 1, "zhangsan");
		log.info("普通消息");
		log.warn("警告");
		log.error("错误消息");
	}
}
