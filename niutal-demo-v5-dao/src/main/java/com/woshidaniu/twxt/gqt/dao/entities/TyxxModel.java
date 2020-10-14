package com.woshidaniu.twxt.gqt.dao.entities;

import org.apache.ibatis.type.Alias;

import com.woshidaniu.common.query.ModelBase;
import com.woshidaniu.search.core.SearchModel;

/**
 * 
 * <p>
 *   <h3>niutal 开发示例系统<h3>
 *   说明：团员信息
 * <p>
 * @author <a href="mailto:337836629@qq.com">Penghui.Qu[445]<a>
 * @version 2016年9月8日上午11:49:07
 */
@Alias("tyxxModel")
public class TyxxModel  extends ModelBase{

	private static final long serialVersionUID = -4880040509093668741L;
	
	private String xh ;//学号 
	private String xm ;//姓名 
	private String xbdm ;//性别 
	private String mzdm ;//名族 
	private String zzmmdm ;//政治面貌 
	private String sfzh ;//身份证号 
	private String csrq ;//出生日期 
	private String syszd ;//生源所在地 
	private String hkszd ;//户口所在地 
	private String jg ;//籍贯 
	private String xlcc ;//学历层次 
	private String xjzt ;//学籍状态 
	private String sfzxs ;//是否在校生 
	private String xszt ;//学生状态，1为在校生，0为历史生 
	private String sjhm ;//手机号码 
	private String gddh ;//固定电话 
	private String email ;//电子邮箱 
	private String qqhm ;//QQ号码 
	private String jtdz ;//家庭地址 
	private String jtyb ;//家庭邮编 
	private String jtdh ;//家庭电话 
	private String xbmc;
	private String mzmc;
	private String zzmmmc;
	private SearchModel searchModel;
	
	public String getMzmc() {
		return mzmc;
	}
	public void setMzmc(String mzmc) {
		this.mzmc = mzmc;
	}
	public String getZzmmmc() {
		return zzmmmc;
	}
	public void setZzmmmc(String zzmmmc) {
		this.zzmmmc = zzmmmc;
	}
	public String getXbmc() {
		return xbmc;
	}
	public void setXbmc(String xbmc) {
		this.xbmc = xbmc;
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
	public String getSfzh() {
		return sfzh;
	}
	public void setSfzh(String sfzh) {
		this.sfzh = sfzh;
	}
	public String getCsrq() {
		return csrq;
	}
	public void setCsrq(String csrq) {
		this.csrq = csrq;
	}
	public String getSyszd() {
		return syszd;
	}
	public void setSyszd(String syszd) {
		this.syszd = syszd;
	}
	public String getHkszd() {
		return hkszd;
	}
	public void setHkszd(String hkszd) {
		this.hkszd = hkszd;
	}
	public String getJg() {
		return jg;
	}
	public void setJg(String jg) {
		this.jg = jg;
	}
	public String getXlcc() {
		return xlcc;
	}
	public void setXlcc(String xlcc) {
		this.xlcc = xlcc;
	}
	public String getXjzt() {
		return xjzt;
	}
	public void setXjzt(String xjzt) {
		this.xjzt = xjzt;
	}
	public String getSfzxs() {
		return sfzxs;
	}
	public void setSfzxs(String sfzxs) {
		this.sfzxs = sfzxs;
	}
	public String getXszt() {
		return xszt;
	}
	public void setXszt(String xszt) {
		this.xszt = xszt;
	}
	public String getSjhm() {
		return sjhm;
	}
	public void setSjhm(String sjhm) {
		this.sjhm = sjhm;
	}
	public String getGddh() {
		return gddh;
	}
	public void setGddh(String gddh) {
		this.gddh = gddh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQqhm() {
		return qqhm;
	}
	public void setQqhm(String qqhm) {
		this.qqhm = qqhm;
	}
	public String getJtdz() {
		return jtdz;
	}
	public void setJtdz(String jtdz) {
		this.jtdz = jtdz;
	}
	public String getJtyb() {
		return jtyb;
	}
	public void setJtyb(String jtyb) {
		this.jtyb = jtyb;
	}
	public String getJtdh() {
		return jtdh;
	}
	public void setJtdh(String jtdh) {
		this.jtdh = jtdh;
	}
	public SearchModel getSearchModel() {
		return searchModel;
	}
	public void setSearchModel(SearchModel searchModel) {
		this.searchModel = searchModel;
	}

	
}
