package com.woshidaniu.twxt.gqt.dao.daointerface;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.woshidaniu.common.dao.BaseDao;
import com.woshidaniu.common.datarange.DataRange;
import com.woshidaniu.common.datarange.QueryType;
import com.woshidaniu.search.annotation.AdvancedSearch;
import com.woshidaniu.twxt.gqt.dao.entities.TyxxModel;

/**
 * 
 * <p>
 *   <h3>niutal开发示例系统<h3>
 *   说明：团员信息DAO
 * <p>
 * @author <a href="mailto:337836629@qq.com">Penghui.Qu[445]<a>
 * @version 2016年9月8日上午11:50:46
 */
@Repository("tyxxDao")
public interface ITyxxDao extends BaseDao<TyxxModel> {

	
	@DataRange(info = "{STUDENT_SZXY:'BMDM',STUDENT_SDBJ:'BJDM_ID'}", dataIds = { "student" } , type=QueryType.OR)
	@AdvancedSearch
	public List<TyxxModel> getPagedByScope(TyxxModel t);
}
