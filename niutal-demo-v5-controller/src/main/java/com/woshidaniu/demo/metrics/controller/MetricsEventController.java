package com.woshidaniu.demo.metrics.controller;

import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codahale.metrics.biz.MetricsFactory;
import com.codahale.metrics.biz.event.BizCountedEvent;
import com.codahale.metrics.biz.event.BizEventPoint;
import com.codahale.metrics.biz.event.BizGaugeEvent;
import com.codahale.metrics.biz.event.BizHistogramEvent;
import com.codahale.metrics.biz.event.BizMeterEvent;

@Controller
public class MetricsEventController implements ApplicationContextAware {

	protected static final Logger LOGGER = LoggerFactory.getLogger(MetricsEventController.class);
	protected ApplicationContext applicationContext;
	@Resource
	protected MetricsFactory metricsFactory;
    protected Random random = new Random();
    
    /**
     * Set the metrics factory
     */
    public void setMetricsFactory(MetricsFactory metricsFactory) {
    	this.metricsFactory = metricsFactory;
    }

	public MetricsFactory getMetricsFactory() {
		return metricsFactory;
	}
	
	public ApplicationContext getApplicationContext() {
		return applicationContext;
	}

	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext = applicationContext;
	}

    @RequestMapping(value = "/event/counted", method = RequestMethod.GET)
    @ResponseBody
    public String countedTest(HttpServletRequest request, HttpServletResponse response) throws Exception {
    
    	BizEventPoint data = new BizEventPoint("counted", "Method Request");
    	
    	getApplicationContext().publishEvent(new BizCountedEvent(this, data));
    	
        return "index";
    }
    
    @RequestMapping(value = "/event/histogram", method = RequestMethod.GET)
    @ResponseBody
    public void histogramTest() {
    	
    	getApplicationContext().publishEvent(new BizHistogramEvent(this, "histogram", random.nextLong()));
    	
    }

    @RequestMapping(value = "/event/gauge", method = RequestMethod.GET)
    @ResponseBody
    public void gaugeTest() {
    	
    	getApplicationContext().publishEvent(new BizGaugeEvent(this, "gauge", random.nextLong()));
    	
    }

    @RequestMapping(value = "/event/meter", method = RequestMethod.GET)
    @ResponseBody
    public String meterTest() {
    	getApplicationContext().publishEvent(new BizMeterEvent(this, "meter"));
        return "meter";
    }
    
    @RequestMapping(value = "/event/excption", method = RequestMethod.GET)
    @ResponseBody
    public void excptionTest() {
        try {
            int count = 1 / 0;
        } catch (Exception e) {
        	getApplicationContext().publishEvent(new BizCountedEvent(this, "excption"));
            throw new RuntimeException(e);
        }
    }
    
    
	
}
