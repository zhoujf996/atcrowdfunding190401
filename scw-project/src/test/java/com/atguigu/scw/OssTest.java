package com.atguigu.scw;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;

public class OssTest {
	public static void main(String[] args) throws FileNotFoundException {
		String endpoint = "http://oss-cn-beijing.aliyuncs.com";

		String accessKeyId = "LTAI4GAsdXRdYC3Cpbsu3hvg";
		String accessKeySecret = "rdPUCtT1fEMipcdkc61kDkHENJEnra";

		// 创建OSSClient实例。
		OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);

		// 上传文件流。
		InputStream inputStream = new FileInputStream("D:/temp/p2.jpg");
		ossClient.putObject("atcrowdfunding20201017", "pic/p2.jpg", inputStream);

		// 关闭OSSClient。
		ossClient.shutdown();
	}
}
