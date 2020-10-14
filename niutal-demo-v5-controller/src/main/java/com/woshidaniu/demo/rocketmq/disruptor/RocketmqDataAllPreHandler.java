package com.woshidaniu.demo.rocketmq.disruptor;

import com.woshidaniu.disruptor.event.handler.DisruptorHandler;
import com.woshidaniu.disruptor.event.handler.chain.HandlerChain;
import com.woshidaniu.rocketmq.event.RocketmqDisruptorEvent;

public class RocketmqDataAllPreHandler implements DisruptorHandler<RocketmqDisruptorEvent> {

	@Override
	public void doHandler(RocketmqDisruptorEvent event, HandlerChain<RocketmqDisruptorEvent> handlerChain) throws Exception {
		
		System.out.println("==============================================================");
		System.out.println("Pre Rule : /** ");
		
		long threadId = Thread.currentThread().getId();
		System.out.println(String.format("Thread Id %s Topic %s Tag %s sms to user ....", threadId, event.getTopic(),
				event.getTag()));
		System.out.println(String.format("All Receive New Message:  %s ", event.getMsgBody()));
		
	}

}