package com.woshidaniu.demo.metrics.controller;

import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codahale.metrics.Counter;
import com.codahale.metrics.annotation.CachedGauge;
import com.codahale.metrics.annotation.Counted;
import com.codahale.metrics.annotation.ExceptionMetered;
import com.codahale.metrics.annotation.Gauge;
import com.codahale.metrics.annotation.Metered;
import com.codahale.metrics.annotation.Timed;
import com.codahale.metrics.biz.MetricsFactory;

@Controller
public class MetricsAnnotationController{

	protected static final Logger LOG = LoggerFactory.getLogger(MetricsAnnotationController.class);
	@Resource
	protected MetricsFactory metricsFactory;
    protected Counter runCounter;
    
    /**
     * Set the metrics factory
     */
    @Autowired
    public void setMetricsFactory(MetricsFactory metricsFactory) {
    	this.metricsFactory = metricsFactory;
		this.runCounter = metricsFactory.getCounter(this.getClass(), "running_workers");
	}
    
    @RequestMapping(value = "/anno/index", method = RequestMethod.GET)
    @ResponseBody
    @Timed(name = "index")
    @ExceptionMetered(name = "exceptions1")
    public String index(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	runCounter.inc();
        LOG.info("Processing Request");
        return "index";
    }
    
    @RequestMapping(value = "/anno/index1", method = RequestMethod.GET)
    @ResponseBody
    @Timed(name = "index1")
    @ExceptionMetered(name = "exceptions2")
    public String index1(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	runCounter.inc();
        LOG.info("Processing Request");
        return "index1";
    }
    
    @RequestMapping(value = "/anno/meter", method = RequestMethod.GET)
    @ResponseBody
    @Metered(name = "MainController_createBuilding")
    public String createBuilding() {
    	runCounter.inc();
    	LOG.info("Processing Request");
        return "createBuilding";
    }


    @RequestMapping(value = "/anno/excption", method = RequestMethod.GET)
    @ResponseBody
    @ExceptionMetered(name = "exceptions")
    public void excptionTest() {
    	runCounter.inc();
        try {
            int count = 1 / 0;
            System.out.println(count);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @RequestMapping(value = "/anno/counted", method = RequestMethod.GET)
    @ResponseBody
    @Counted(name = "Counted")
    public String countedTest() {
    	runCounter.inc();
        return "counted";
    }
    
    @Gauge(name = "gaugeTest")
    @ExceptionMetered(name = "gauge_exceptions")
    public long gaugeTest() {
        System.out.println("runCounter.getCount():" + runCounter.getCount());
        return runCounter.getCount();
    }

    @CachedGauge(name = "cachedGaugeTest", timeout = 30, timeoutUnit = TimeUnit.SECONDS)
    @ExceptionMetered(name = "CachedGauge_exceptions")
    public long cachedGaugeTest() {
        System.out.println("runCounter.getCount():" + runCounter.getCount());
        return runCounter.getCount();
    }
    
 
}
