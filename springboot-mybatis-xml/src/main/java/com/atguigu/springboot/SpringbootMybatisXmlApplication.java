package com.atguigu.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
@EnableTransactionManagement //启用声明式事务
@MapperScan("com.atguigu.springboot.mapper") //扫描Dao包
@SpringBootApplication
public class SpringbootMybatisXmlApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootMybatisXmlApplication.class, args);
	}

}
