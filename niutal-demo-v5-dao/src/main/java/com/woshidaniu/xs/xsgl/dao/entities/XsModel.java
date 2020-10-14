package com.woshidaniu.xs.xsgl.dao.entities;

import java.io.Serializable;

import com.woshidaniu.common.query.QueryModel;
import com.woshidaniu.search.core.SearchModel;

public class XsModel implements Serializable{

	private static final long serialVersionUID = 1L;

	private String xh;
	
	private String xm;
	
	private String xbdm;
	
	private String sfzh;
	
	private String bjdmId;
	
	private String mzdm;
	
	private String zzmmdm;
	
	private SearchModel searchModel;
	public QueryModel queryModel = new QueryModel();
	
	public SearchModel getSearchModel() {
		return searchModel;
	}

	public void setSearchModel(SearchModel searchModel) {
		this.searchModel = searchModel;
	}

	public QueryModel getQueryModel() {
		return queryModel;
	}

	public void setQueryModel(QueryModel queryModel) {
		this.queryModel = queryModel;
	}

	public String getXh() {
		return xh;
	}

	public void setXh(String xh) {
		this.xh = xh;
	}

	public String getXm() {
		return xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	public String getXbdm() {
		return xbdm;
	}

	public void setXbdm(String xbdm) {
		this.xbdm = xbdm;
	}

	public String getSfzh() {
		return sfzh;
	}

	public void setSfzh(String sfzh) {
		this.sfzh = sfzh;
	}

	public String getBjdmId() {
		return bjdmId;
	}

	public void setBjdmId(String bjdmId) {
		this.bjdmId = bjdmId;
	}

	public String getMzdm() {
		return mzdm;
	}

	public void setMzdm(String mzdm) {
		this.mzdm = mzdm;
	}

	public String getZzmmdm() {
		return zzmmdm;
	}

	public void setZzmmdm(String zzmmdm) {
		this.zzmmdm = zzmmdm;
	}
}
