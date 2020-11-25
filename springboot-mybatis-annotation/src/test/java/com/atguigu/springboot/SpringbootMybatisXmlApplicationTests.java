package com.atguigu.springboot;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringbootMybatisXmlApplicationTests {

	@Autowired
	DataSource dataSource;
	
	@Test
	public void testDataSource() {
		
		//class com.zaxxer.hikari.HikariDataSource 性能高
		//class com.alibaba.druid.pool.DruidDataSource 稳定性好
		System.out.println(dataSource.getClass());
	}

}
