package com.woshidaniu.twxt.xs.xsgl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woshidaniu.common.service.BaseServiceImpl;
import com.woshidaniu.twxt.xs.xsgl.service.svcinterface.IXsglService;
import com.woshidaniu.xs.xsgl.dao.daointerface.IXsDao;
import com.woshidaniu.xs.xsgl.dao.entities.XsModel;

@Service
public class XsglServiceImpl extends BaseServiceImpl<XsModel, IXsDao> implements IXsglService{
	
	@Autowired
	private IXsDao xsDao;

	@Override
	public void afterPropertiesSet() throws Exception {
	    super.setDao(xsDao);   
	}
}
