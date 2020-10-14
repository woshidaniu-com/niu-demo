package com.woshidaniu.demo.export.controller;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.woshidaniu.common.controller.BaseController;
import com.woshidaniu.common.log.User;
import com.woshidaniu.dao.entities.ExportModel;
import com.woshidaniu.export.service.svcinterface.IExportService;
import com.woshidaniu.jcsj.dao.entities.XsxxglModel;
import com.woshidaniu.jcsj.service.svcinterface.IXsxxglService;

/**
 * <p>
 *   <h3>niutal框架<h3>
 *   <br>说明：TODO
 *	 <br>class：com.woshidaniu.demo.export.controller.ExportDemoController.java
 * <p>
 * @author <a href="#">Zhangxiaobin[1036]<a>
 * @version 2016年8月15日上午8:50:29
 */
@Controller
@RequestMapping("/exportDemo")
public class ExportDemoController extends BaseController{

	protected static final String EXPORT_ID = "export_demo_id";
	
	@Autowired
	@Qualifier("exportExcelPOI")
	protected IExportService exportService;
	
	@Autowired
	@Qualifier("xsxxglService")
	protected IXsxxglService xsssglService;
	
	/**
	 * 
	 * <p>方法说明：导出文件<p>
	 * <p>作者：a href="#">Zhangxiaobin[1036]<a><p>
	 * <p>时间：2016年12月29日上午11:55:19<p>
	 */
	@RequestMapping("/doExport.zf")
	public ResponseEntity<byte[]> download(ExportModel exportModel){
		try {
			User user = getUser();
			exportModel.setZgh(user.getYhm());
			exportModel.setDcclbh(EXPORT_ID);
			XsxxglModel xsxxglModel = new XsxxglModel();
			xsxxglModel.getQueryModel().setShowCount(Integer.MAX_VALUE);
			exportModel.setDataList(xsssglService.getPagedByScope(xsxxglModel));
			File file = exportService.getExportFile(exportModel);
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			headers.setContentDispositionFormData("attachment", file.getName());
			return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
		} catch (Exception e) {
			logException(e);
			return null;
		}
		
	}
	
}
