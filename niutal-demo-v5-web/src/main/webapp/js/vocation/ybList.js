
jQuery(function($){
	
	var options = {
			 url: 'ybList.zf?type=query',
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
	            {field: 'createTime',title: '申 请 时 间',sortable:false,width:'150px',align:'center'},
	            {field: 'p_task_name',title: '审 核 节 点',sortable:false,align:'center',width:'150px',formatter:function(value,row,index){
	            	return '<a href="#" class="label label-primary alert-link text-danger">' + value + '</a>'
	            }},
	            {field: 'p_task_message',title: '审 核 信 息',sortable:false,width:'150px',align:'center'},
	            
	            {field: 'p_end_time',title: '审 核 时 间',sortable:false,width:'150px',align:'center'},
	            {field: 'p_task_id',title: 'His Task ID',visible:false},
	            {field: 'p_proc_inst_id',title: 'Process Instance ID',visible:false},
	            {field: 'p_execution_id',title: 'Execution ID',visible:false}
           ],
           searchParams:function(){
    	    var map = {};
    		map["vocationType"] = jQuery('#cx_vocationType').val();
           	return map;
           }
		};
		$('#tabGrid').loadGrid(options);
	
	/*====================================================绑定按钮事件====================================================*/

		
		
	

	jQuery("#btn_cancel").click(function(){
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		
		var rowData = $('#tabGrid').getRow(ids[0]);
		var url = "auditorRevocation.zf";
		var serverData = {'taskId': rowData['p_task_id'], 'processInstanceId': rowData['p_proc_inst_id'],'executionId': rowData['p_execution_id']};
		$.confirm('您确定撤销？',function(result) {
			if(result){
				jQuery.ajaxSetup( {
					async : false
				});
				jQuery.post(url, serverData, function(responseText) {
					if(responseText["status"] == "SUCCESS"){
						$.success(responseText["message"],function() {
							window.location.reload();
						});
					}else if(responseText["status"] == "FAIL"){
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
	
	jQuery("#btn_trace").click(function () {
		var ids = $('#tabGrid').getKeys();
		if (ids.length != 1 ) {
			$.alert('请选定一条记录!');
			return;
		}
		var rowData = $('#tabGrid').getRow(ids[0]);
		var serverData = {'processId': rowData['processId']};
		var url = _path + "/processInstance/" + rowData['processId'] + "/simpleTrace.zf";
		$.showDialog(url,'流程跟踪',$.extend({},viewConfig,{"width":($(window).width()*0.9),data:{}}));

	});	

	
	
});

//查询
function searchResult(){
	$('#tabGrid').refreshGrid();
}

