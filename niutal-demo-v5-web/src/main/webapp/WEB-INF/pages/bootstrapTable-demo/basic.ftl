[#assign q=JspTaglibs["/niutal-search-tags"] /]
<!DOCTYPE html>
<html>
	<head>
		<link href="${base}/css/doc.min.css" rel="stylesheet" type="text/css">
		
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		
		
		<div class="bs-example bs-example-bg-classes">
		
		<div class="bs-callout bs-callout-info">
		    <h4>基础表格</h4>
		    <p>
		    	包含功能：分页，排序，多选，cardView切换，列选择
		    </p>
		  </div>
		
		<div class="zero-clipboard"><span class="btn-clipboard">代码</span></div>
        <div class="highlight">
                       <pre>
                       <code class="js">
$(function(){
	var options = {
	 url: 'getXsxxList.zf', //数据查询url
	 uniqueId: "xh", //数据组件ID
	 columns: [	//列定义
	    	{checkbox: true }, 
	    	{field: 'xh', title: '学号',sortable:true}, 
	    	{field: 'xm', title: '姓名',sortable:true}, 
	    	{field: 'xbmc',title: '性别',sortable:true}, 
	        {field: 'bmmc',title: '学院',sortable:true},
	        {field: 'zymc',title: '专业',sortable:true},
	        {field: 'bjmc',title: '班级',sortable:true},
	        {field: 'sfzh',title: '身份证号',sortable:true},
	        {field: 'csrq',title: '出生日期',sortable:true},
	        {field: 'mzmc',title: '民族',sortable:true},
	        {field: 'zzmmmc',title: '政治面貌',sortable:true	}
         ]
	};
	
	$('#dataTable').loadGrid(ops);//初始化表格
});
                       </code></pre>
            </div>
            
		<div class="formbox">
            <table id = "dataTable"></table>
		</div>
		</div>
		
		
		
		
		
		
		
		[#include "/globalweb/head/niutal-ui-bsTable.ftl" /]
		<script type="text/javascript" src="${base}/js/twxt/gqt/tyxx_gjcx.js?ver=${messageUtil("niutal.jsVersion")}"></script>
		<script>
			$(function(){
				var ops = {
					 url: 'getXsxxList.zf',         //请求后台的URL（*）\
					 uniqueId: "xh",                     //每一行的唯一标识，一般为主键列
					 columns: [
			            {checkbox: true }, 
			            {field: 'xh', title: '学号',sortable:true}, 
			            {field: 'xm', title: '姓名',sortable:true}, 
			            {field: 'xbmc',title: '性别',sortable:true}, 
			            {field: 'bmmc',title: '学院',sortable:true},
			            {field: 'zymc',title: '专业',sortable:true},
			            {field: 'bjmc',title: '班级',sortable:true},
			            {field: 'sfzh',title: '身份证号',sortable:true},
			            {field: 'csrq',title: '出生日期',sortable:true},
			            {field: 'mzmc',title: '民族',sortable:true},
			            {field: 'zzmmmc',title: '政治面貌',sortable:true	}
		             ]
				};
				
				$('#dataTable').loadGrid(ops);
			});
			
		</script>
	</body>
</html>
