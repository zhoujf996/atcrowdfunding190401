package com.atguigu.springcloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableHystrixDashboard //启用熔断器监控系统
@EnableCircuitBreaker //启动熔断器功能
@EnableFeignClients //启用Feign客户端功能
@EnableDiscoveryClient
@SpringBootApplication
public class CloudProviderUserApplication {


	
	public static void main(String[] args) {
		SpringApplication.run(CloudProviderUserApplication.class, args);
	}

}
