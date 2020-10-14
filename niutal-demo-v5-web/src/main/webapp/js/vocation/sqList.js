jQuery(function($){
	
	var options = {
			 url: 'sqList.zf?type=query',
			 uniqueId: "id",
			 toolbar:  '#but_ancd',
			 classes:'table table-condensed',
			 striped: false,
			 columns: [
	            {checkbox: true }, 
	            {field: 'id', title: '主 键',visible:false}, 
	            {field: 'proposer', title: '申 请 人(学号)',visible:false}, 
	            {field: 'proposerName', title: '申 请 人',sortable:false,width:'150px',align:'center',formatter:function(value,row,index){
	            	return '<strong>' + value+'['+row['proposer']+"]</strong>";
	            }}, 
	            {field: 'vocationType',title: '请 假 类 型',sortable:false,width:'80px',align:'center',formatter:function(value,row,index){
	            	var ret;
	            	switch(value)
	            	{
	            	case 1:
	            	  ret = '<span class="label label-info"> 病    假 </span>';
	            	  break;
	            	case 2:
	            	  ret = '<span class="label label-info"> 事    假 </span>';
	            	  break;
	            	case 3:
	            	  ret = '<span class="label label-info"> 其    他 </span>';
	            	  break;
	            	default:
	            	  ret = '<span class="label label-warning"> 未    知 </span>'; 
	            	}
	            	return ret;
	            }}, 
	            {field: 'numberOfDays',title: '请 假 天 数 [天]',align:'right',sortable:false,width:'50px',formatter:function(value,row,index){
	            	return '<strong>' + value+ "</strong>";
	            }},
	            {field: 'startDate',title: '开 始 日 期',align:'center',sortable:false,width:'100px'},
	            {field: 'endDate',title: '结 束 日 期',align:'center',sortable:false,width:'100px'},
	            {field: 'motivation',title: '原 因',align:'left',sortable:false,width:'300px'},
	            {field: 'createTime',title: '创 建 时 间',align:'center',sortable:false,width:'150px'},
	            {field: 'auditStatus',title: '审 核 状 态',align:'right',sortable:false,width:'150px',formatter:function(value,row,index){
	            	var ret;
	            	switch(value)
	            	{
	            	case 0:
	            	  ret = '<span class="label label-default"> 未 提 交 </span>';
	            	  break;
	            	case 3:
	            	  ret = '<span class="label label-primary"> 处 理 中 </span>';
	            	  break;
	            	case 4:
	            	  ret = '<span class="label label-success">  结  束[通过]  </span>';
	            	  break;
	            	case 6:
	            	  ret = '<span class="label label-danger">  结  束[不通过]  </span>';
	            	  break;
	            	case 5:
	            	  ret = '<span class="label label-warning">  结  束[取消]  </span>';
	            	  break;
	            	case 8:
		          ret = '<span class="label label-default">  退  回  [流程未删除]</span>';
		          break;
	            	case 9:
	            	  ret = '<span class="label label-default"> 撤 销 [流程被删除]</span>';
	            	  break;
	            	default:
	            	  ret = '<span class="label label-default">  未  知［数据异常］</span>'; 
	            	}
	            	return ret;
	            }},
	            {field: 'processId',title: '流 程 ID',visible:false}
           ],
           searchParams:function(){
    	    var map = {};
    		//map["vocationType"] = jQuery('#cx_vocationType').val();
           	return $.search.getSearchMap();
           }
		};
		$('#tabGrid').loadGrid(options);
	
	/*====================================================绑定按钮事件====================================================*/
	
	$("[name='search_button']").bind("click",function(){
	    $('#tabGrid').refreshGrid();
	});	
		
	jQuery("#btn_apply").click(function () {
		$.showDialog("sq.zf",'请假申请',$.extend({},addConfig,{"width":800}));
	});
	
	jQuery("#btn_trace").click(function () {
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		
		var rowData = $('#tabGrid').getRow(ids[0]);
		
		if(rowData['auditStatus'] == 0 ){
			$.alert('所选申请无流程信息！');
			return;
		}
		
		var serverData = {'processId': rowData['processId']};
		var url = _path + "/processInstance/" + rowData['processId'] + "/simpleTrace.zf";
		$.showDialog(url,'流程跟踪',$.extend({},viewConfig,{"width":($(window).width()*0.9),data:{}}));

	});
	
	
	jQuery("#btn_submit").click(function () {
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		
		var rowData = $('#tabGrid').getRow(ids[0]);
		
		if(rowData['auditStatus'] != 0 &&  rowData['auditStatus'] != 8 && rowData['auditStatus'] != 9){
			$.alert('所选申请已提交！');
			return;
		}
		var serverData = {'id': ids[0]};
		var url = "submitProcess.zf";
		
		if(rowData['auditStatus'] == 0 || rowData['auditStatus'] == 9){
			$.confirm('您确定提交申请？',function(result) {
				if(result){
					jQuery.ajaxSetup( {
						async : false
					});
					jQuery.post(url, serverData, function(responseText) {
						if(responseText["status"] == "success"){
							$.success(responseText["message"],function() {
								$('#tabGrid').refreshGrid();
							});
						}else if(responseText["status"] == "fail"){
							$.error(responseText["message"]);
						}else{
							$.alert(responseText["message"]);
						}
					}, 'json');
					jQuery.ajaxSetup( {
						async : true
					});
				}
			});
		}else if(rowData['auditStatus'] == 8){
		    serverData = {'id': ids[0], 'proposer':rowData['proposer'] ,'p_proc_inst_id':rowData['p_proc_inst_id']};
		    url = 'reSubmitProcess.zf';
		    $.confirm('您确定重新提交申请？',function(result) {
			if(result){
				jQuery.ajaxSetup( {
					async : false
				});
				jQuery.post(url, serverData, function(responseText) {
					if(responseText["status"] == "success"){
						$.success(responseText["message"],function() {
							$('#tabGrid').refreshGrid();
						});
					}else if(responseText["status"] == "fail"){
						$.error(responseText["message"]);
					}else{
						$.alert(responseText["message"]);
					}
				}, 'json');
				jQuery.ajaxSetup( {
					async : true
				});
			}
		});
		    
		}
		
		
	});

	jQuery("#btn_dc").click(function(){
	    $.customExport("dc_vocation_apply", "export.zf", function(exportForm){
		exportForm.find("input").each(function(i,n){
		    $(n).attr('name', 'exportModel.' + $(n).attr('name'));
		});
		exportForm.append($.search.getSearchHtml());
	    }, {});
	});
	
	jQuery("#btn_cancel").click(function () {
		var ids = $('#tabGrid').getKeys();
		if(ids.length != 1){
			$.alert('请选定一条记录!');
			return;
		}
		var row = jQuery("#tabGrid").getRow(ids[0]);
		
		if(row['auditStatus'] == 0){
			$.alert('当前记录没有提交审核流程，不能提交撤销操作！');
			return;
		}
		
		var serverData = {'id': ids[0]};
		var url = "cancelProcess.zf";
		$.confirm('您确定撤销申请？',function(result) {
			if(result){
				jQuery.ajaxSetup( {
					async : false
				});
				jQuery.post(url, serverData, function(responseText) {
					if(responseText["status"] == "success"){
						$.success(responseText["message"],function() {
							$('#tabGrid').refreshGrid();
						});
					}else if(responseText["status"] == "fail"){
						$.error(responseText["message"]);
					}else{
						$.alert(responseText["message"]);
					}
				}, 'json');
				jQuery.ajaxSetup( {
					async : true
				});
			}
		});
		
	});
	
});



//查询
function searchResult(){
	$('#tabGrid').refreshGrid();
}