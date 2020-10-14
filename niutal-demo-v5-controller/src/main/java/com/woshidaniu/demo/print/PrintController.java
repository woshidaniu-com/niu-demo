package com.woshidaniu.demo.print;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.woshidaniu.common.controller.BaseController;
import com.woshidaniu.common.log.User;
import com.woshidaniu.dao.entities.DymbglModel;
import com.woshidaniu.dao.entities.YhglModel;
import com.woshidaniu.service.svcinterface.IDymbglService;

/**
 * 
 * <p>
 *   <h3>niutal框架<h3>
 *   说明：用户管理
 * <p>
 * @author <a href="mailto:337836629@qq.com">Penghui.Qu[445]<a>
 * @version 2016年9月2日下午2:57:10
 */
@Controller
@RequestMapping(value = "/xtgl/print")
public class PrintController extends BaseController {

	@Autowired
	private IDymbglService dymbglService;

	/**
	 * 打印模板
	 * @author guoqb[1127]
	 * @date 2017-3-22 16:55:40
	 * @param gnmkdm
	 * @return
	 */
	@RequestMapping("/dymb.zf")
	public ModelAndView dymb(@RequestParam(required = true) String mblxdm, String ids, ModelAndView view, YhglModel model){
		try{
			//model.setCbvjsxx(ids.split(","));
			//SearchParser.parseMybatisSQL(model.getSearchModel());
			//List<YhglModel> yhglList = yhglService.getYhglList(model);
			List<YhglModel> yhglList = new ArrayList<YhglModel>();
			YhglModel yhglModel = new YhglModel();
			for(int i = 0;i < 1; i++){
				yhglModel.setXm("阿三");
				yhglModel.setZgh("001");
				yhglModel.setJgdm("rw");
				yhglModel.setLxdh("110");
				yhglModel.setDzyx("123@qq.com");
				yhglList.add(yhglModel);
			}
			view.addObject("yhglList", JSONObject.toJSON(yhglList));
			User user = getUser();
			Map<String, String> map = new HashMap<String, String>();
			map.put("zgh", user.getYhm());
			map.put("mblxdm", mblxdm);
			DymbglModel dymbglModel = dymbglService.getDymbByDymblxAndZgh(map);
			view.addObject("dymbglModel", dymbglModel);
			view.setViewName("/globalweb/comp/xtgl/dymbgl/mbdy");
		} catch(Exception e){
			logException(e);
			view.setViewName(ERROR_VIEW);
		}
		return view;
	}
	
	
}
