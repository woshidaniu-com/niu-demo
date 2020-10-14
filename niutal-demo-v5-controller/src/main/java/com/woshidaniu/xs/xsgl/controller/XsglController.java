package com.woshidaniu.xs.xsgl.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.woshidaniu.common.MessageKey;
import com.woshidaniu.common.controller.BaseController;
import com.woshidaniu.common.query.QueryModel;
import com.woshidaniu.search.core.SearchParser;
import com.woshidaniu.twxt.xs.xsgl.service.svcinterface.IXsglService;
import com.woshidaniu.xs.xsgl.dao.entities.XsModel;

@Controller
@RequestMapping(value = "/xsgl/xsgl")
public class XsglController extends BaseController{
	
	@Autowired
	private IXsglService xsglService;
	
	@RequiresPermissions("xsgl:cx")
	@RequestMapping(value = "/cxXsxx")
	public String cxYhxx(Model model) {
		return "/globalweb/comp/xs/xsgl/cxXsxx";
	}
	
	@RequiresPermissions("xsgl:cx")
	@RequestMapping(value = "/getXsxxList")
	@ResponseBody
	public Object getYhxxList(XsModel model,HttpSession httpSession){
		try {
			SearchParser.parseMybatisSQL(model.getSearchModel());
			QueryModel queryModel = model.getQueryModel();
			
			List<XsModel> pagedList = xsglService.getPagedList(model);
			queryModel.setItems(pagedList);
			return queryModel;
		} catch (Exception e) {
			logException(e);
			return MessageKey.SYSTEM_ERROR.getJson();
		}
	}
}