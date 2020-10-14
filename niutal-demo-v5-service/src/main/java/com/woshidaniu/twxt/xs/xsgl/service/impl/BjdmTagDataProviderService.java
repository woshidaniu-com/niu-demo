package com.woshidaniu.twxt.xs.xsgl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woshidaniu.jcsj.dao.daointerface.IBjdmDao;
import com.woshidaniu.jcsj.dao.entities.BjdmModel;
import com.woshidaniu.taglibs.data.TagDataProvider;

import net.sf.json.JSONObject;

@Service("bjdmTagDataProviderService")
public class BjdmTagDataProviderService implements TagDataProvider{
	
	@Autowired
	private IBjdmDao bjdmDao;

	@Override
	public List<?> getDataList(JSONObject json) {
		return this.bjdmDao.getModelList(new BjdmModel());
	}
}
