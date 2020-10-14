<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		<!--查询条件  开始 -->
		<form class="form-horizontal sl_all_form">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label for="" class="col-sm-4 control-label">
								请假类型
							</label>
							<div class="col-sm-8">
								<select class="form-control input-sm span3 chosen-select" name="vocationType" id="cx_vocationType">
									<option value="">全部 </option>
									<option value="1">病假</option>
									<option value="2">事假</option>
									<option value="3">其他</option>
								</select>
								<SCRIPT type="text/javascript">
						    		jQuery('#cx_vocationType').trigger("chosen");
			 			    	</SCRIPT>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- btn-start  -->
			<div class="row sl_aff_btn" id="searchResult">
				<div class="col-sm-12">
					<button type="button" class="btn btn-primary btn-sm" id="search_go"
						onclick="searchResult();return false;">
						查 询
					</button>
				</div>
			</div>
			<!-- btn-end  -->
		<!--查询条件  结束  -->
		<!--JQGrid 开始 -->
		<div class="formbox">
			<table id="tabGrid"></table>
		</div>
		<!--JQGrid 结束  -->
		[#include "/globalweb/head/niutal-ui-bsTable.ftl" /]
		<script type="text/javascript" src="${base}/js/vocation/dbList.js?ver=${messageUtil("niutal.jsVersion")}"></script>
		<script type="text/javascript" src="${base}/js/plugins/bpm/process.js?ver=${messageUtil("niutal.jsVersion")}"></script>
	</body>
</html>
