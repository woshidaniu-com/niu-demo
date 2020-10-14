package com.woshidaniu.demo.rocketmq;

import com.woshidaniu.rocketmq.event.RocketmqEvent;
import com.woshidaniu.rocketmq.event.chain.HandlerChain;
import com.woshidaniu.rocketmq.event.handler.EventHandler;

public class RocketmqDataAllHandler implements EventHandler<RocketmqEvent> {

	@Override
	public void doHandler(RocketmqEvent event, HandlerChain<RocketmqEvent> handlerChain) throws Exception {
		
		System.out.println("==============================================================");
		System.out.println("Rule : /** ");
		
		long threadId = Thread.currentThread().getId();
		System.out.println(String.format("Thread Id %s Topic %s Tag %s sms to user ....", threadId, event.getTopic(),
				event.getTag()));
		System.out.println(String.format("All Receive New Message:  %s ", event.getMsgBody()));
		
	}

}