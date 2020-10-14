jQuery(function($){

	var options = {
			 url: 'statisticsData.zf?type=query',
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
	            {field: 'numberOfDays',title: '请 假 天 数',align:'right',sortable:false,width:'50px',formatter:function(value,row,index){
	            	return '<strong>' + value+ "</strong>" + ' [天]'
	            }},
	            {field: 'startDate',title: '开 始 日 期',align:'center',sortable:false,width:'100px'},
	            {field: 'endDate',title: '结 束 日 期',align:'center',sortable:false,width:'100px'},
	            {field: 'motivation',title: '原 因',align:'left',sortable:false,width:'300px'},
	            {field: 'createTime',title: '创 建 时 间',align:'center',sortable:false,width:'150px'},
	            {field: 'auditStatus',title: '审 核 结 果',align:'center',sortable:false,width:'150px',formatter:function(value,row,index){
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
	            	  ret = '<span class="label label-success">  结  束[不通过]  </span>';
	            	  break;
	            	case 5:
	            	  ret = '<span class="label label-warning">  结  束[取消]  </span>';
	            	  break;
	            	case 9:
	            	  ret = '<span class="label label-danger">  退  回  </span>';
	            	  break;
	            	default:
	            	  ret = '<span class="label label-info">  未  知  </span>'; 
	            	}
	            	return ret;
	            }},
	            {field: 'processId',title: '流 程 ID',visible:false}
           ],
           searchParams:function(){
    	    var map = {};
    		map["vocationType"] = jQuery('#cx_vocationType').val();
    		map["auditStatus"] = jQuery('#cx_auditStatus').val();
           	return map;
           }
		};
		$('#tabGrid').loadGrid(options);
		
		
		
		
		
});	
	/*====================================================绑定按钮事件====================================================*/

//查询
function searchResult(){
	$('#tabGrid').refreshGrid();
}