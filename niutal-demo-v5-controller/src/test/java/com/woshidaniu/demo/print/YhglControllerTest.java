package com.woshidaniu.demo.print;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.HashMap;
import java.util.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.After;
import org.junit.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.test.context.TestContextManager;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import com.alibaba.fastjson.JSONPath;

import static org.junit.Assert.*;
import com.woshidaniu.qa.ZTesterRuner;
import com.woshidaniu.qa.annotation.Order;

/**
 * Copyright (C), woshidaniu Co., Ltd
 * 
 * @author Administrator
 * @date 2017-07-04
 * @mail
 * @version 1.0
 * @desc YhglController unit test
 */
@RunWith(ZTesterRuner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "classpath:conf/spring/config-cache.xml",
		"classpath:conf/spring/config-taglibs.xml", "classpath:conf/spring/config-datasource.xml",
		"classpath:conf/spring/config-shiro.xml", "classpath:conf/spring/config-sjfw.xml",
		"classpath*:conf/dataTable/config*.xml", "classpath:conf/spring/config-webmvc.xml" })
public class YhglControllerTest extends PreSetupTest {
	private MockMvc mockMvc;
	@Autowired
	protected WebApplicationContext wac;

	@Autowired
	protected PrintController yhglController;

	private TestContextManager testContextManager;

	private static final String ctx = "/xtgl/yhgl";

	@Before
	public void setup() throws Exception {
		super.preSetup();
		testContextManager = new TestContextManager(getClass());
		try {
			testContextManager.prepareTestInstance(this);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();

	}

	/**
	 * ZjYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 1)
	public void testZjYhxx() throws Exception {
		String path = "/zjYhxx";
		String uri = ctx + path;

		MvcResult result = mockMvc.perform(get(uri)).andDo(print()).andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验增加用户管理页面是否正确", "/globalweb/comp/xtgl/yhgl/zjYhxx", name);

		String password = result.getModelAndView().getModel().get("password").toString();
		assertNotNull("检验返回的初始化密码是否正确", password);
	}

	/**
	 * SaveYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 2)
	public void testSaveYhxx() throws Exception {
		String path = "/saveYhxx";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("jsdms", "80feacbf55b9ea80e1f094fd5edd7625");
		params.put("zgh", "unit.test");
		params.put("xm", "单元测试");
		params.put("dzyx", "");
		params.put("lxdh", "");
		params.put("jgdm", "01010000");
		params.put("mm", "IS70we");
		params.put("sfqy", "1");
		MvcResult result = mockMvc
				.perform(post(uri).param("jsdms", params.get("jsdms")).param("zgh", params.get("zgh"))
						.param("xm", params.get("xm")).param("dzyx", params.get("dzyx"))
						.param("lxdh", params.get("lxdh")).param("jgdm", params.get("jgdm"))
						.param("mm", params.get("mm")).param("sfqy", params.get("sfqy")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验增加用户是否成功", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	/**
	 * SavePassword
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 8)
	public void testSavePassword() throws Exception {
		String path = "/savePassword";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ymm", "123123.");
		params.put("mm", "123123.");
		params.put("nmm", "123123.");
		params.put("yhmmdj", "123123.");
		MvcResult result = mockMvc
				.perform(post(uri).param("ymm", params.get("ymm")).param("mm", params.get("mm"))
						.param("nmm", params.get("nmm")).param("yhmmdj", params.get("yhmmdj")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验修改用户密码是否成功", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	/**
	 * Mmcsh
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 3)
	public void testMmcsh() throws Exception {
		String path = "/mmcsh";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ids", "unit.test");
		MvcResult result = mockMvc.perform(post(uri).param("ids", params.get("ids"))).andDo(print())
				.andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验密码初始化页面是否正确", "/globalweb/comp/xtgl/yhgl/mmcsh", name);
	}

	/**
	 * SaveMmcsh
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 4)
	public void testSaveMmcsh() throws Exception {
		String path = "/saveMmcsh";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ids", "unit.test");
		params.put("mm", "123123.");
		params.put("yhmmdj", "2");
		params.put("password", "123123.");
		MvcResult result = mockMvc
				.perform(post(uri).param("ids", params.get("ids")).param("mm", params.get("mm"))
						.param("yhmmdj", params.get("yhmmdj")).param("password", params.get("password")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验初始化密码是否成功", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	/**
	 * CkYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 5)
	public void testCkYhxx() throws Exception {
		String path = "/ckYhxx";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("zgh", "unit.test");
		MvcResult result = mockMvc.perform(post(uri).param("zgh", params.get("zgh"))).andDo(print())
				.andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验查看用户信息页面是否正确", "/globalweb/comp/xtgl/yhgl/ckYhxx", name);
	}

	/**
	 * Qyty
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 6)
	public void testQyty() throws Exception {
		String path = "/qyty";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ids", "unit.test");
		params.put("sfqy", "0");
		MvcResult result = mockMvc.perform(post(uri).param("ids", params.get("ids")).param("sfqy", params.get("sfqy")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验停用用户是否成功", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
		params.put("sfqy", "1");
		result = mockMvc.perform(post(uri).param("ids", params.get("ids")).param("sfqy", params.get("sfqy")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验启用用户是否成功", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	/**
	 * ModifyYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 7)
	public void testModifyYhxx() throws Exception {
		String path = "/modifyYhxx";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("jsdms", "admin,80feacbf55b9ea80e1f094fd5edd7625");
		params.put("zgh", "unit.test");
		params.put("xm", "单元测试");
		params.put("dzyx", "");
		params.put("lxdh", "");
		params.put("jgdm", "01090000");
		params.put("sfqy", "0");
		MvcResult result = mockMvc
				.perform(post(uri).param("jsdms", params.get("jsdms")).param("zgh", params.get("zgh"))
						.param("xm", params.get("xm")).param("dzyx", params.get("dzyx"))
						.param("lxdh", params.get("lxdh")).param("jgdm", params.get("jgdm"))
						.param("sfqy", params.get("sfqy")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验修改用户信息是否正确", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	/**
	 * Yhsjfw
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 8)
	public void testYhsjfw() throws Exception {
		String path = "/yhsjfw";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ids", "unit.test");
		MvcResult result = mockMvc.perform(post(uri).param("ids", params.get("ids"))).andDo(print())
				.andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验用户数据范围页面是否成功", "/globalweb/comp/xtgl/yhgl/yhsjfw", name);
	}

	/**
	 * XgMm
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 9)
	public void testXgMm() throws Exception {
		String path = "/xgMm";
		String uri = ctx + path;
		MvcResult result = mockMvc.perform(get(uri)).andDo(print()).andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验修改密码页面是否成功", "/globalweb/comp/xtgl/yhgl/xgMm", name);
	}

	/**
	 * XgYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 10)
	public void testXgYhxx() throws Exception {
		String path = "/xgYhxx";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("zgh", "unit.test");
		MvcResult result = mockMvc.perform(post(uri).param("zgh", params.get("zgh"))).andDo(print())
				.andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验修改用户信息页面是否成功", "/globalweb/comp/xtgl/yhgl/xgYhxx", name);
	}

	/**
	 * CxYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 11)
	public void testCxYhxx() throws Exception {
		String path = "/cxYhxx";
		String uri = ctx + path;
		MvcResult result = mockMvc.perform(post(uri)).andDo(print()).andExpect(status().isOk()).andReturn();
		String name = result.getModelAndView().getViewName();
		assertEquals("校验查询用户信息页面是否正确", "/globalweb/comp/xtgl/yhgl/cxYhxx", name);
	}

	/**
	 * SaveYhsjfw
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 12)
	public void testSaveYhsjfw() throws Exception {
		String path = "/saveYhsjfw";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ids", "unit.test");
		params.put("sjfw", "{\"xydm\":[\"131000\"]}");
		MvcResult result = mockMvc.perform(post(uri).param("ids", params.get("ids")).param("sjfw", params.get("sjfw")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验设置数据范围是否正确", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	/**
	 * GetYhxxList
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 13)
	public void testGetYhxxList() throws Exception {
		String path = "/getYhxxList";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("searchModel.inputType",
				"{\"zgh\":[\"unit.test\"],\"xm\":[\"unit.test\"],\"lxdh\":[\"unit.test\"],\"dzyx\":[\"unit.test\"],\"jsxx\":[\"unit.test\"]}");
		params.put("searchModel.selectType", "{\"sfqy\":[\"0\"]}");
		params.put("searchModel.dateType", "{}");
		params.put("searchModel.numberType", "{}");
		params.put("searchModel.inputSqlType", "0");
		params.put("queryModel.sortName", "zgh");
		params.put("queryModel.sortOrder", "desc");
		params.put("queryModel.showCount", "15");
		params.put("queryModel.currentPage", "1");
		MvcResult result = mockMvc
				.perform(post(uri).param("searchModel.inputType", params.get("searchModel.inputType"))
						.param("searchModel.selectType", params.get("searchModel.selectType"))
						.param("searchModel.dateType", params.get("searchModel.dateType"))
						.param("searchModel.numberType", params.get("searchModel.numberType"))
						.param("searchModel.inputSqlType", params.get("searchModel.inputSqlType"))
						.param("queryModel.sortName", params.get("queryModel.sortName"))
						.param("queryModel.sortOrder", params.get("queryModel.sortOrder"))
						.param("queryModel.showCount", params.get("queryModel.showCount"))
						.param("queryModel.currentPage", params.get("queryModel.currentPage")))
				.andDo(print()).andExpect(status().isOk()).andReturn();
		assertEquals("校验查询用户信息是否成功", 1, JSONPath.read(result.getResponse().getContentAsString(), "$.totalResult"));
	}

	/**
	 * ScYhxx
	 * 
	 * @date 2017-07-04
	 * @return
	 */
	@Test
	@Order(index = 14)
	public void testScYhxx() throws Exception {
		String path = "/scYhxx";
		String uri = ctx + path;
		Map<String, String> params = new HashMap<String, String>();
		params.put("ids", "unit.test");
		MvcResult result = mockMvc.perform(post(uri).param("ids", params.get("ids"))).andDo(print())
				.andExpect(status().isOk()).andReturn();
		assertEquals("校验删除用户是否正确", "success", JSONPath.read(result.getResponse().getContentAsString(), "$.status"));
	}

	@After
	public void tearDown() throws Exception {
		clearSubject();
	}
}