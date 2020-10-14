[#assign q=JspTaglibs["/niutal-search-tags"] /]
<!DOCTYPE html>
<html>
	<head>
	<style>
		.advanced-query-fixed .panel-heading{height:auto !important; }
	</style>
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		<!--查询条件  开始 -->
		[@q.panel theme="default" ]
		  [@q.input list="#(xh:学号)"/]
	      [@q.group name="xyzybj" text="学院专业班级"]
            [@q.multi name="bmdm_id" text="学院" provider="xydmTagDataProviderService" listKey="bmdm_id" listValue="bmmc" pinyin=true/]
            [@q.multi name="zydm_id" text="专业" provider="zydmTagDataProviderService" listKey="zydm_id" listValue="zymc" pinyin=true relation="[{bmdm_id_lsbm:'bmdm_id'}]"/]
            [@q.multi name="bjdm_id" text="班级" provider="bjdmTagDataProviderService" listKey="bjdm_id" listValue="bjmc" pinyin=true relation="[{bmdm_id:'bmdm_id'},{zydm_id:'zydm_id'}]"/]
	       [/@q.group]
		[/@q.panel]
		<!--查询条件  结束  -->
		
		<!--JQGrid 开始 -->
		<div class="formbox">
			<table id="tabGrid"></table>
			<!--<div id="pager"></div>-->
		</div>
		<!--JQGrid 结束  -->
		[#include "/globalweb/head/niutal-ui-bsTable.ftl" /]
		[#include "/globalweb/head/niutal-ui-strength.ftl" /]
		[#include "/globalweb/head/niutal-core-dc.ftl" /]
		<script type="text/javascript" src="${base}/js/globalweb/comp/xs/xsgl/xsxx.js?ver=${messageUtil("niutal.jsVersion")}"></script>
	</body>
</html>
