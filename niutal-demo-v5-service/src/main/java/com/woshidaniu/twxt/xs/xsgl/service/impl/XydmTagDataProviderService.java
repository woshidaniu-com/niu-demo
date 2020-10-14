package com.woshidaniu.twxt.xs.xsgl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woshidaniu.taglibs.data.TagDataProvider;

import net.sf.json.JSONObject;

/**
 * 学院代码
 * @author 1571
 *
 */
@Service("xydmTagDataProviderService")
public class XydmTagDataProviderService implements TagDataProvider {
	
	@Autowired
	private com.woshidaniu.jcsj.dao.daointerface.IXydmDao xydmDao;

	@Override
	public List<?> getDataList(JSONObject json) {
		return xydmDao.cxXydmList();
	}
}
