package com.woshidaniu.demo.metrics.controller;

import java.io.File;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
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

import com.codahale.metrics.ConsoleReporter;
import com.codahale.metrics.Counter;
import com.codahale.metrics.CsvReporter;
import com.codahale.metrics.Gauge;
import com.codahale.metrics.Histogram;
import com.codahale.metrics.Meter;
import com.codahale.metrics.MetricRegistry;
import com.codahale.metrics.UniformReservoir;
import com.codahale.metrics.biz.MetricsFactory;
import com.codahale.metrics.health.HealthCheck;
import com.codahale.metrics.health.HealthCheckRegistry;

@Controller
public class MetricsBaseController {

	protected static final Logger LOG = LoggerFactory.getLogger(MetricsBaseController.class);
	@Resource
	protected MetricsFactory metricsFactory;
    protected Counter runCounter;
    protected Counter successCounter;
    protected Counter failCounter;

    @Resource
    protected HealthCheckRegistry healthCheckRegistry;
    @Resource
    protected MetricRegistry metricRegistry;
    
    protected Histogram histogram;
    protected Histogram uniformHistogram = new Histogram(new UniformReservoir(300));
    protected Random random = new Random();
    
    protected Meter meter;
    
    /**
     * Set the metrics factory
     */
    @Autowired
    public void setMetricsFactory(MetricsFactory metricsFactory) {
    	this.metricsFactory = metricsFactory;
		this.runCounter = metricsFactory.getCounter(this.getClass(), "running_workers");
    	this.successCounter = metricsFactory.getCounter(this.getClass(), "successful_jobs");
    	this.failCounter = metricsFactory.getCounter(this.getClass(), "failed_jobs");
    	this.histogram = metricsFactory.getHistogram(this.getClass(), "histogram");
    	this.meter = metricsFactory.getMeter(this.getClass(), "meter");
	}
    
    @RequestMapping(value = "/base/healthCheck", method = RequestMethod.GET)
    public void testHealthCheck() {
    	
        //healthCheckRegistry.register("health1",new DatabaseHealthCheck(4));
        final Map<String, HealthCheck.Result> results = healthCheckRegistry.runHealthChecks();
        for (Map.Entry<String, HealthCheck.Result> entry : results.entrySet()) {
            if (entry.getValue().isHealthy()) {
                LOG.info(entry.getKey() + " is healthy");
            } else {
                System.err.println(entry.getKey() + " is UNHEALTHY: " + entry.getValue().getMessage());
                final Throwable e = entry.getValue().getError();
                if (e != null) {
                    e.printStackTrace();
                }
            }
        }
    }
    
    @RequestMapping(value = "/base/index", method = RequestMethod.GET)
    @ResponseBody
    public String index(HttpServletRequest request, HttpServletResponse response, String appid) throws Exception {
    	
    	metricsFactory.getCounter(this.getClass(), "index" , appid).inc();
    	
        runCounter.inc();
        LOG.info("Processing Request");
        successCounter.inc();
        return "index";
    }

    @RequestMapping(value = "/base/index1", method = RequestMethod.GET)
    @ResponseBody
    public String index1(HttpServletRequest request, HttpServletResponse response) throws Exception {
        runCounter.inc();
        LOG.info("Processing Request");
        successCounter.inc();
        return "index1";
    }
    
    @RequestMapping(value = "/base/counted", method = RequestMethod.GET)
    @ResponseBody
    public String countedTest() {
        successCounter.inc();
        LOG.info("successCounter.getCount():" + successCounter.getCount());
        runCounter.dec();
        LOG.info("runCounter.getCount():" + runCounter.getCount());
        return "counted";
    }
    
    @RequestMapping(value = "/base/histogram", method = RequestMethod.GET)
    @ResponseBody
    public String createHistogram() {
    	this.histogram.update(random.nextLong());
    	return "histogram";
    }
    
    
    @RequestMapping(value = "/base/gauge", method = RequestMethod.GET)
    @ResponseBody
    public String gaugeTest() {

    	 //实例化一个Gauge
        Gauge<Integer> gauge = new Gauge<Integer>() {
        	
            public Integer getValue() {
                return random.nextInt();
            }
            
        };
        
        //注册到容器中
        metricsFactory.register(MetricRegistry.name(this.getClass(), "pending-job", "size"), gauge);
        return "gauge";
    }

    @RequestMapping(value = "/base/meter", method = RequestMethod.GET)
    @ResponseBody
    public String meterTest() {

    	this.meter.mark();
    	
        return "meter";
    }
    
    @RequestMapping(value = "/base/excption", method = RequestMethod.GET)
    @ResponseBody
    public void excptionTest() {
        try {
        	runCounter.inc();
            int count = 1 / 0;
            System.err.println(count);
            successCounter.inc();
        } catch (Exception e) {
            failCounter.inc();
            LOG.info("runCounter.getCount():" + failCounter.getCount());
            throw new RuntimeException(e);
        }
    }

   
    @RequestMapping(value = "/base/createCsv", method = RequestMethod.GET)
    @ResponseBody
    public void createCsv(){
        final CsvReporter reporter = CsvReporter.forRegistry(metricRegistry)
                .formatFor(Locale.US)
                .convertRatesTo(TimeUnit.SECONDS)
                .convertDurationsTo(TimeUnit.MILLISECONDS)
                .build(new File("E:\\code\\metrics-spring-annotation-3\\projects\\data\\"));
        reporter.start(10, TimeUnit.SECONDS);
        LOG.info("createCsv");
    }
    
    @RequestMapping(value = "/base/createConsole", method = RequestMethod.GET)
    @ResponseBody
    public void createConsole(){
        final ConsoleReporter reporter = ConsoleReporter.forRegistry(metricRegistry)
                .convertRatesTo(TimeUnit.SECONDS)
                .convertDurationsTo(TimeUnit.MILLISECONDS)
                .build();
        reporter.start(5, TimeUnit.SECONDS);
        LOG.info("createConsole");
    }


    
}
