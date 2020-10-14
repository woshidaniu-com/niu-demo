[#assign q=JspTaglibs["/niutal-search-tags"] /]
<!DOCTYPE html>
<html>
	<head>
		<link href="${base}/css/doc.min.css" rel="stylesheet" type="text/css">
		[#include "/globalweb/head/niutal-ui-laydate.ftl" /]
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		
		
		<div class="bs-example bs-example-bg-classes">
		
		<div class="bs-callout bs-callout-info">
		    <h4>结合高级查询条件表格</h4>
		    <p>
		    	包含功能：分页，排序，多选，cardView切换，列选择，高级查询数据检索
		    </p>
		  </div>
		
		<div class="zero-clipboard"><span class="btn-clipboard">代码</span></div>
        <div class="highlight">
                       <pre>
                       <code class="js">
$(function(){
	var ops = {
		 url: 'getXsxxList2.zf',         
		 uniqueId: "xh",         
		 searchParams:function(){
         		return $.search.getSearchMap();
         	},		//==>>>查询函数
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

function searchResult(){
		$('#dataTable').reloadGrid();
	}
                       </code></pre>
            </div>
        
        
        
        
        <!--查询条件  开始 -->
		[@q.panel theme="zfstyle5"] 
		     [@q.input list="#(xh:学号,xm:姓名,sfzh:身份证号)"/] 
		     [@q.radio name="xbdm" text="性别" list="xbList" listKey="dm" listValue="mc" /]
		     
		     [@q.multi name="bmdm_id" text="学院" list="xydmList" listKey="bmdm_id" listValue="bmmc" pinyin=true/]
		     
		     [@q.multi name="zydm_id" text="专业" list="zydmList" listKey="zydm_id" 
		     				 listValue="zymc" pinyin=true relation="[{bmdm_id_lsbm:'bmdm_id'}]"/]
		     				 
		     [@q.multi name="bjdm_id" text="班级" list="bjdmList" listKey="bjdm_id" listValue="bjmc" 
		     				 pinyin=true relation="[{bmdm_id:'bmdm_id'},{zydm_id:'zydm_id'}]"/]
		     
		     [@q.multi name="mzdm" text="民族" list="mzList" listKey="dm" listValue="mc" pinyin=true /]
		     [@q.multi name="zzmmdm" text="政治面貌" list="zzmmList" listKey="dm" listValue="mc" pinyin=true/]
		     [@q.date name="csrq" text="出生日期" format="YYYY-MM-DD"/]
		[/@q.panel]
		<!--查询条件  结束  -->
		    
		<div class="formbox">
            <table id = "dataTable"></table>
		</div>
		</div>
		
		[#include "/globalweb/head/niutal-ui-bsTable.ftl" /]
		<script type="text/javascript" src="${base}/js/twxt/gqt/tyxx_gjcx.js?ver=${messageUtil("niutal.jsVersion")}"></script>
		<script>
			$(function(){
				var ops = {
					 url: 'getXsxxList2.zf',      
					 uniqueId: "xh",                     
					 searchParams:function(){
		             	return $.search.getSearchMap();
		             },
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
			
			function searchResult(){
				$('#dataTable').reloadGrid();
			}
			
		</script>
	</body>
</html>
