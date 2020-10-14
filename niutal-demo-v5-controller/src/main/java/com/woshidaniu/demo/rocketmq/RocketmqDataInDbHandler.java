package com.woshidaniu.demo.rocketmq;

import com.woshidaniu.rocketmq.event.RocketmqEvent;
import com.woshidaniu.rocketmq.event.chain.HandlerChain;
import com.woshidaniu.rocketmq.event.handler.EventHandler;


public class RocketmqDataInDbHandler implements EventHandler<RocketmqEvent> {
	
	@Override
	public void doHandler(RocketmqEvent event, HandlerChain<RocketmqEvent> handlerChain) throws Exception {
	
		System.out.println("==============================================================");
		System.out.println("Rule : /Topic-DC-Output/TagA-Output/** ");
		
		long threadId = Thread.currentThread().getId();
		System.out.println(String.format("Thread Id %s Topic %s Tag %s into db ....", threadId , event.getTopic() , event.getTag() ));
		System.out.println(String.format("Receive New Message:  %s ", event.getMsgBody() ));
		
		
	}
	 
}
