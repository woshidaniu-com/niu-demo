jQuery(function($){
	
	var TempGrid = $.extend(true,{},BaseJqGrid,{  
//	$("#tabGrid").jqGridWrap({
		resizeHandle:"#searchBox",
		paper:"#pager",
		//remoteParams:{"zd_fzdm":"yhgl2"},
		//shrinkToFit: true,
	    url: 'getTyxxList.zf', //这是Action的请求地址  
	    colModel:[
			{label:'学号',name:'xh', index: 'xh',key:true,align:'left',width:"120px"},
			{label:'姓名',name:'xm', index: 'xm',align:'left',width:"120px"},
			{label:'性别',name:'xbmc', index: 'xbmc',align:'left',width:"120px"},
			{label:'学院',name:'bmmc', index: 'bmmc',align:'left',width:"200px"},
			{label:'专业',name:'zymc', index: 'zymc',align:'left',width:"200px"},
			{label:'班级',name:'bjmc', index: 'bjmc',align:'left',width:"200px"},
			{label:'身份证号',name:'sfzh', index: 'sfzh',align:'center',width:"200px"},
		],
		sortName: 'xh', //首次加载要进行排序的字段 
	 	sortOrder: "desc"
	});
	
	$("#tabGrid").loadJqGrid(TempGrid);
	 
	/*====================================================绑定按钮事件====================================================*/
	
	//绑定增加点击事件
	jQuery("#btn_zj").click(function () {
		$.showDialog('zjTyxx.zf','增加团员信息',$.extend({},addConfig,{"width":"700px"}));
	});
	
	//绑定删除事件
	jQuery("#btn_sc").click(function () {
		plcz('scTyxx.zf','删除');
	});
	
	//绑定修改事件
	jQuery("#btn_xg").click(function () {
		var ids = $('#tabGrid').getKeys();
		if(ids.length != 1){
			$.alert('请选定一条记录!');
			return;
		}
		var row =$('#tabGrid').getRow(ids[0]);
		$.showDialog("xgTyxx.zf?xh="+row.xh,'修改团员信息',$.extend({},modifyConfig,{"width":"700px"}));
	});
	
	//查看
	jQuery("#btn_ck").click(function () {
		var ids = $('#tabGrid').getKeys();
		if(ids.length != 1){
			$.alert('请选定一条记录!');
			return;
		}
		var row = $('#tabGrid').getRow(ids[0]);
		$.showDialog("ckTyxx.zf?xh="+row.xh,'查看团员信息',$.extend({},viewConfig,{"width":"700px"}));
	});
});

//查询
function searchResult(){
	var map = {};
	map["xh"] = jQuery('#xh').val();
	map["xm"] = jQuery('#xm').val();
//	map["sfqy"] = jQuery('#sfqy').val();
	map["jgdm"] = jQuery('#jgdm').val();
	search('tabGrid',map);
}


//回车键查询
$('#searchBox input[name="xh"],#searchBox input[name="xm"]').bind("keydown", "return", function (ev) {
	searchResult()   
})
