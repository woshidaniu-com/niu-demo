package com.woshidaniu.demo.rocketmq.task;

import java.util.Date;

import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.common.message.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.woshidaniu.rocketmq.RocketmqTemplate;

@Component("sendMsgTask")
public class RocketmqSendMsgTask  {

	protected final Logger LOG = LoggerFactory.getLogger(RocketmqSendMsgTask.class);
	
	@Autowired(required = false)
	protected RocketmqTemplate rocketmqTemplate; 
	
	public void send(){
		try {  
			
			// 数据中心数据上行主题 ：生产该主题与自己系统标记相关的消息
        	Message msg = new Message("Topic-DC-Input", // topic
    				"TagA-Input", // tag
    				"KKK", // key用于标识业务的唯一性； key 消息关键词，多个Key用KEY_SEPARATOR隔开（查询消息使用）
    				( "V5demo 测试内容 : "+ new Date()).getBytes() // body 二进制字节数组
    		);
    		SendResult result = rocketmqTemplate.send(msg);
    		//System.out.println(result);
        } catch (Exception e) {  
			LOG.error(e.getMessage());
		}
	}
	
}
