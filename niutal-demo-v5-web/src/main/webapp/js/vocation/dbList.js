
jQuery(function($){
	
	var options = {
			 url: 'dbList.zf?type=query',
			 uniqueId: "id",
			 toolbar:  '#but_ancd',
			 classes:'table table-condensed',
			 columns: [
	            {checkbox: true }, 
	            {field: 'id', title: '主 键',visible:false}, 
	            {field: 'proposer', title: '申 请 人(学号)',visible:false,align:'center'}, 
	            {field: 'proposerName', title: '申 请 人',sortable:false,width:'150px',align:'center'}, 
	            {field: 'vocationType',title: '请 假 类 型',sortable:false,align:'center',width:'80px',formatter:function(value,row,index){
	            	var ret;
	            	switch(value)
	            	{
	            	case 1:
	            	  ret = '<span class="label label-primary"> 病    假 </span>';
	            	  break;
	            	case 2:
	            	  ret = '<span class="label label-primary"> 事    假 </span>';
	            	  break;
	            	case 3:
	            	  ret = '<span class="label label-primary"> 其    他 </span>';
	            	  break;
	            	default:
	            	  ret = '<span class="label label-primary"> 未    知 </span>'; 
	            	}
	            	return ret;
	            }}, 
	            {field: 'numberOfDays',title: '请 假 天 数',sortable:false,width:'50px',align:'center'},
	            {field: 'startDate',title: '开 始 日 期',sortable:false,width:'100px',align:'center'},
	            {field: 'endDate',title: '结 束 日 期',sortable:false,width:'100px',align:'center'},
	            {field: 'motivation',title: '原 因',sortable:false,width:'300px',align:'center'},
	            {field: 'createTime',title: '创 建 时 间',sortable:false,width:'150px',align:'center'},
	            {field: 'auditStatus',title: '签 收 状 态',sortable:false,width:'150px',align:'center',formatter:function(value,row,index){
//	            	if(row['p_delegation'] == 'PENDING'){
//	            		return '<span class="label label-success"> 委 托 </span>';
//	            	}
////	            	
//	            	if(row['p_delegation'] == 'RESOLVED'){
//	            		return '<span class="label label-success"> 委 托（已 办） </span>';
//	            	}
	            	if(row['p_assignee'] == null||row['p_assignee'] == ''){
	            		return '<span class="label label-default"> 未 签 收 </span>';
	            	}
	            	return '<span class="label label-primary"> 已 签 收 </span>';
	            }},
	            {field: 'p_act_name',title: '当 前 节 点',sortable:false,align:'center',width:'150px',formatter:function(value,row,index){
	            	return '<a href="#" class="label label-primary alert-link text-danger" onclick="traceProcess(\'' + row['p_proc_inst_id'] + '\');return false;">' + value + '</a>'
	            }},
	            {field: 'p_task_id',title: 'Task ID',visible:false},
	            {field: 'p_act_id',title: '当前活动节点ID',visible:false},
	            {field: 'p_proc_inst_id',title: '流 程 ID',visible:false}
           ],
           searchParams:function(){
    	    var map = {};
    		map["vocationType"] = jQuery('#cx_vocationType').val();
           	return map;
           }
		};
		$('#tabGrid').loadGrid(options);
	
	/*====================================================绑定按钮事件====================================================*/

		
		
	
	jQuery("#btn_sh").click(function(){
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		var rowData = $('#tabGrid').getRow(ids[0]);
		var url = "process2.zf";
		var serverData = {'p_act_id':rowData['p_act_id'], 'p_task_id': rowData['p_task_id'],'id': rowData['id']};
		if(rowData['p_assignee'] == null || rowData['p_assignee'] == ''){
			jQuery.post('claimTask.zf', serverData, function(responseText) {
				if(responseText["status"] == "success"){
					//$.showDialog(url,'审核',$.extend({},modifyConfig,{"width":800,data:serverData}));
				    	$.bpmDialog(url, '审核', {
				    	    data:serverData,
				    	    processData: {"processInstanceId": rowData['p_proc_inst_id'],"taskInstanceId": rowData['p_task_id']}
				    	});
				}else if(responseText["status"] == "fail"){
					$.error(responseText["message"]);
				}else{
					$.alert(responseText["message"]);
				}
			}, 'json');
			return;
		}else{
		    $.bpmDialog(url, '审核', {
			 	data:serverData,
			 	processData: {"processInstanceId": rowData['p_proc_inst_id'],"taskInstanceId": rowData['p_task_id']}
		    	});
			//$.showDialog(url,'审核',$.extend({},modifyConfig,{"width":800,data:serverData}));
		}
	});	
	
	jQuery("#btn_back_apply").click(function(){
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		var rowData = $('#tabGrid').getRow(ids[0]);
		var url = "auditorProcessCancellation.zf";
		var serverData = {'processInstanceId':rowData['p_proc_inst_id'], 'taskId':rowData['p_task_id']};
		$.prompt(function(result){
			serverData['reason'] = result;
			$.post(url, serverData, function(responseText) {
				if(responseText["status"] == "success"){
					$('#tabGrid').refreshGrid();
					$.closeModal(this.name);
				}else if(responseText["status"] == "fail"){
					$.error(responseText["message"]);
				}else{
					$.alert(responseText["message"]);
				}
			}, 'json');
			return;
			
		},{'title':'退回原因'});
	});	

	
	jQuery("#btn_trace").click(function () {
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		var rowData = $('#tabGrid').getRow(ids[0]);
		var serverData = {'processId': rowData['processId']};
		var url = _path + "/processInstance/" + rowData['processId'] + "/simpleTrace.zf?colorValue=";
		$.showDialog(url,'流程跟踪',$.extend({},viewConfig,{"width":($(window).width()*0.9),data:{}}));

	});

});

//查询
function searchResult(){
	$('#tabGrid').refreshGrid();
}

//绑定删除事件
function traceProcess(processId){
	var serverData = {'processId': processId};
	var url = "traceProcess.zf";
	$.showDialog(url,'流程跟踪',$.extend({},addConfig,{"width":800,data:serverData}));

}

