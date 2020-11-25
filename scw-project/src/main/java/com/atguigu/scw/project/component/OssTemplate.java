package com.atguigu.scw.project.component;


import java.io.InputStream;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.OSSException;

import lombok.Data;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@ToString
@Data
@Slf4j
//@Component
public class OssTemplate {

	String endpoint;
	String accessKeyId;
	String accessKeySecret;
	String bucket;

	public String upload(String filename, InputStream inputStream) {
		
		log.debug("endpoint={}",endpoint);
		log.debug("accessKeyId={}",accessKeyId);
		log.debug("accessKeySecret={}",accessKeySecret);
		log.debug("bucket={}",bucket);

		try {
			// 创建OSSClient实例。
			OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);

			// 上传文件流。
			// InputStream inputStream = new FileInputStream("D:/temp/p2.jpg");
			ossClient.putObject("atcrowdfunding20201017", "pic/" + filename, inputStream);

			// 关闭OSSClient。
			ossClient.shutdown();
			
			String filePath="https://" + bucket + "." + endpoint + "/pic" + filename;
			
			log.debug("文件上传成功-{}",filePath);

			// https://atcrowdfunding20201017.oss-cn-beijing.aliyuncs.com/pic/1002.jpg
			return filePath;
		} catch (OSSException e) {
			e.printStackTrace();
			log.debug("文件上传失败-{}",filename);
			return null;
		}
	}
}
