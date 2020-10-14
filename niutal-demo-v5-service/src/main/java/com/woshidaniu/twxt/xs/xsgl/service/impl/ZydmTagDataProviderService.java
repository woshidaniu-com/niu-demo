package com.woshidaniu.twxt.xs.xsgl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woshidaniu.jcsj.dao.daointerface.IZydmDao;
import com.woshidaniu.taglibs.data.TagDataProvider;

import net.sf.json.JSONObject;

/**
 * 专业代码
 * @author 1571
 *
 */
@Service("zydmTagDataProviderService")
public class ZydmTagDataProviderService implements TagDataProvider {
	
	@Autowired
	private IZydmDao zydmDao;

	@Override
	public List<?> getDataList(JSONObject json) {
		return this.zydmDao.cxZydm();
	}
}
