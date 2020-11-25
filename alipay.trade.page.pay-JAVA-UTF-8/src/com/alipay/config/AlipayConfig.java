package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016102600764560";

	// 商户私钥，您的PKCS8格式RSA2私钥
	public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDHUbsw4uOQMOvhPv1qmdPtDp1fJVMoGwlkbUpGCasKa6jGAq5aVXQVGoNrvxSLUflDCBrozr064ImaxoYFXXQYpRM1JOo+/BkF+KE+DvlThhLQLW7L4l6BZNVTOgOw5S6n29r5Qyvmzk3EMn1tm87FZnnoC3ZbSHU7yNzDMNHgCK/f4LCrZd7eZkkJykHkOlmzzRpmuvFltIRl8LgU8ZcN6uDi4VmRxH76PzS+k/b9C3nr0/Pv5gnzQne8DUcVNYCKaRUO7HNsXDnl/qTDfEt1I6FvKzIRm6P6BFhk31bNC4bEZqwVYB1bq5HdYXMwEJnxAvzUohfJADJSrsErW297AgMBAAECggEADjJoHudKRi713ilaa4lhavUriGdkMOscFCckrzBpGmjosJHoUU7c4dPtoHMPx4yjMH8XS5XOLK9pnbieOyuY5Vh8scBbXvkd3ysCcSUn5Scbl/Bkf+kzygugljj/ok3wsMwcIL0EF4CCUYM3I+OBKtZNwJVwbLgQgZ2g+9YyXL6hei3gHPLmcInt8kOZEWOYUgfQEOZ9gsv17V3d5ykoTelO0Ed92Ny7xUJ6jNIQuuSqHgH0f6crhxY3/NugdtvpqT3/WOsAOyPmu5m/Eg9X02cmeJEEsHoPF9Q18u9LyJFou95w3vxtyBaY7ohxs7heOadgx31H7HtzLeyJPrCfYQKBgQDjusyXt+NVkFdE5bJzc4QAELWWsF2S55lUgnFeJJqcvI8FEioo7L+PLeNW9Qs7WngtsP0+J6W21br0cWUIWDDTA+t3nYXJ7CRfj9vBz0qqaQQo1ASoC86FQU3mesqwr+GMLafzlkQOCbkCYVve2nLKOjIaMfhta6i0be1/Rl+A/QKBgQDgEA4MgweBcEJuTbAVPch2uT2RtnGjTYuum/7XzGpPs8QEh8J6/YBnrp8AtHD01kTtwYaBC9WJ1UMfF5DrdlydcsQ376CC/pDQDbgg02BAKAne2JnbU05ZoJ7gFTo7EiFaKYvJh1/NQzqtCW/1gSgf5CMDmja//DJv/4h8uhr31wKBgBKo6b68yJnoO95fW+Ht4zEGLXrtdJ1m8L9l+NgX87tIEAgAVwgHbiLTRb+IUKVKYnKMABQpt4Blvu3spLSsVUPVHGQuuhmzib9y0DTvQVT5Sef2h3MllISCt1ldUmJr5vVPgGWLOIRV85zoUVjPWXyMjDJtScfdfHNcVouJPqYZAoGATptTUnBlobOQmsIGlG0odv5l60jmdTQvXQK9VVgRtASNMEmwoRVuhvFsNwMW3c6OQBs05PER6Vk4QyAxZ2oO8+3fiQA4f7xvcY5emqWNjvR9AgFbeOaxBiCjnFnWJAMoUEljEUC9C3Yaj7pP3QGC4i1XW1wu+QuxZjlv2NIxw+ECgYB7321f9hzy3P52uK2jVFytYDz86+C4/MG+VuLv07C4wVcnsKrlEzo0smArzwa//76MfALuDwI3yFt+QwyxC3OAkaB3BgD4Sp9ZPWARb/gFxMT0aTPrZDP46e+1RjFyNV/BnC++i1vbivZLtLTwKYJGqPmJs7z/kspxQD/+YScG9g==";

	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx1G7MOLjkDDr4T79apnT7Q6dXyVTKBsJZG1KRgmrCmuoxgKuWlV0FRqDa78Ui1H5Qwga6M69OuCJmsaGBV10GKUTNSTqPvwZBfihPg75U4YS0C1uy+JegWTVUzoDsOUup9va+UMr5s5NxDJ9bZvOxWZ56At2W0h1O8jcwzDR4Aiv3+Cwq2Xe3mZJCcpB5DpZs80aZrrxZbSEZfC4FPGXDerg4uFZkcR++j80vpP2/Qt569Pz7+YJ80J3vA1HFTWAimkVDuxzbFw55f6kw3xLdSOhbysyEZuj+gRYZN9WzQuGxGasFWAdW6uR3WFzMBCZ8QL81KIXyQAyUq7BK1tvewIDAQAB";

	// 服务器异步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://scw.free.idcfengye.com/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://scw.free.idcfengye.com/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";

	// 字符编码格式
	public static String charset = "utf-8";

	// 支付宝网关
	// https://openapi.alipaydev.com/gateway.do 沙箱环境使用
	// https://openapi.alipayd.com/gateway.do 正式接入使用
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// 支付宝网关
	public static String log_path = "C:\\";

//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	/**
	 * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
	 * 
	 * @param sWord 要写入日志里的文本内容
	 */
	public static void logResult(String sWord) {
		FileWriter writer = null;
		try {
			writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
			writer.write(sWord);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
