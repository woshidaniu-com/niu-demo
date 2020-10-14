package com.woshidaniu.twxt.xs.xsgl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woshidaniu.dao.entities.NjdmModel;
import com.woshidaniu.service.svcinterface.INjdmService;
import com.woshidaniu.taglibs.data.TagDataProvider;

import net.sf.json.JSONObject;

@Service("njdmTagDataProviderService")
public class NjdmTagDataProviderService implements TagDataProvider{
	
	@Autowired
	private INjdmService njdmService;

	@Override
	public List<?> getDataList(JSONObject json) {
		return this.njdmService.getModelList(new NjdmModel());
	}
}
