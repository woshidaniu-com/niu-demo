[#assign q=JspTaglibs["/niutal-search-tags"] /]
<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		<!--查询条件  开始 -->
		[@q.panel theme="default"] 
		     [@q.input list="#(proposer:学号,xm:姓名)"/]
		     [@q.multi name="type" text="请假类型" list="vocationTypeList" listKey="dm" listValue="mc"/]
		[/@q.panel]
		<!--查询条件  结束  -->
		<!--JQGrid 开始 -->
		<div class="formbox">
			<table id="tabGrid"></table>
		</div>
		<!--JQGrid 结束  -->
		[#include "/globalweb/head/niutal-ui-bsTable.ftl" /]
		[#include "/globalweb/head/niutal-core-dc.ftl" /]
		<script type="text/javascript" src="${base}/js/vocation/sqList.js?ver=${messageUtil("niutal.jsVersion")}"></script>
	</body>
</html>
