package com.woshidaniu.demo.apidoc;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.cache.CacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.CacheControl;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.CachingResourceTransformer;
import org.springframework.web.servlet.resource.GzipResourceResolver;
import org.springframework.web.servlet.resource.PathResourceResolver;
import org.springframework.web.servlet.resource.VersionResourceResolver;
import org.springframework.web.servlet.resource.WebJarsResourceResolver;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;  
/* 
 * Restful API 访问路径: 
 * http://IP:port/{context-path}/swagger-ui.html 
 * eg:http://localhost:8080/jd-config-web/swagger-ui.html
 * 
 *  @Configuration 配置注解，自动在本类上下文加载一些环境变量信息  
 *  @EnableWebMvc   
 *  @EnableSwagger2 使swagger2生效  
 *  @ComponentScan("com.myapp.packages") 需要扫描的包路径  
 *  
 *  http://www.baeldung.com/swagger-2-documentation-for-spring-rest-api
 *  http://www.cnblogs.com/woshimrf/p/5863318.html
 *  http://m635674608.iteye.com/blog/2309534
 *  http://blog.csdn.net/chao_1990/article/details/53449494
 *
 */  
@Configuration
@EnableSwagger2
public class SwaggerConfig extends WebMvcConfigurerAdapter {  

	public static final String SWAGGER_SCAN_BASE_PACKAGE = "com.woshidaniu.demo";
    public static final String VERSION = "1.0.0";
	    
    protected CacheManager cacheManager;
    protected String cacheName;
    
    
	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> pConverters) {
	    //pConverters.add(RestUtils.getJSONMessageConverter());
	}

	@Override  
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {  
        configurer.enable();  
    }  
  
	/**
	 * 
	 * 添加资源处理Handler，参见 （http://www.tuicool.com/articles/iQRvaqN） 
	 */
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	
		
    	//registry.addResourceHandler("**/**").addResourceLocations("classpath:/META-INF/resources/");
    	
        registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
     
        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/")  
        	.resourceChain(false)  
            .addResolver(new PathResourceResolver())
            .addResolver(new GzipResourceResolver())
            /*  WebJarsResourceResolver 的作用是可以省略 webjar 的版本。
	    		比如对于请求 http://localhost:8080/webjars/jquery/3.1.0/jquery.js 省略版本号 3.1.10 直接使用 http://localhost:8080/webjars/jquery/jquery.js 也可访问。
	    	 */    		
	        .addResolver(new WebJarsResourceResolver()) 
            // 添加 VersionResourceResolver，且指定版本号 
            .addResolver(new VersionResourceResolver().addFixedVersionStrategy("1.0.0", "/**"))
            //.addResolver(new VersionResourceResolver().addContentVersionStrategy("/**"))

            /*
	            AppCacheManifestTransformer: 帮助处理 HTML5 离线应用的 AppCache 清单内的文件
	            CachingResourceTransformer: 缓存其它 transfomer 的结果，作用同 CachingResourceResolver
	            CssLinkResourceTransformer: 处理 css 文件中的链接，为其加上版本号
	            ResourceTransformerSupport: 抽象类，自定义 transfomer 时继承
            */
            .addTransformer(new CachingResourceTransformer(cacheManager, cacheName));
        
            registry.setOrder(0);
        
        	//registry.setCacheControl(CacheControl.maxAge(10, TimeUnit.MINUTES).cachePrivate());
    }
    
    @Bean  
    public Docket createRestApi() {  
        return new Docket(DocumentationType.SWAGGER_2)  
                .apiInfo(apiInfo())  
                .select() 
                //.apis(RequestHandlerSelectors.basePackage(SWAGGER_SCAN_BASE_PACKAGE))
                .apis(RequestHandlerSelectors.any())
                //.apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
                //.directModelSubstitute(org.joda.time.LocalDate.class, java.sql.Date.class)
                .paths(PathSelectors.any())  
                .build();  
    } 
    
    private ApiInfo apiInfo() {  
    	//Swagger与Spring结合生成Restful接口文档
        return new ApiInfoBuilder()  
                .title("RESTful APIs") 
                .description("This is to show api description")
                .license("Apache 2.0")
                .licenseUrl("http://www.apache.org/licenses/LICENSE-2.0.html")
                .termsOfServiceUrl("")
                .contact(new Contact("woshidaniu", "www.woshidaniu.com", "woshidaniu@woshidaniu.com"))  
                .version(VERSION)  
                .build();   
    }  
    
   
    
}  