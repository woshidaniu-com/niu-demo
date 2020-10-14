/**
 * <p>Coyright (R) 2014。<p>
 */
package com.woshidaniu.demo.rocketmq.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.common.message.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.woshidaniu.rocketmq.RocketmqTemplate;

@RestController
public class RocketMQController {
	
	@Autowired(required = false)
	protected RocketmqTemplate rocketmqTemplate; 
    
    @GetMapping("/rocketmq/send")  
    public String activemq(HttpServletRequest request, String text) { 
    	
    	text = StringUtils.isEmpty(text) ? "This is Empty Msg." : text;  
      
        try {  
        	// 数据中心数据上行主题 ：生产该主题与自己系统标记相关的消息
        	Message msg = new Message("Topic-DC-Input", // topic
    				"TagB-Input", // tag
    				"KKK", // key用于标识业务的唯一性； key 消息关键词，多个Key用KEY_SEPARATOR隔开（查询消息使用）
    				(new Date() + text).getBytes() // body 二进制字节数组
    		);
    		SendResult result = rocketmqTemplate.send(msg);
    		//System.out.println(result);
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        return "Rocketmq has sent OK.";  
    }  
    
    
}
