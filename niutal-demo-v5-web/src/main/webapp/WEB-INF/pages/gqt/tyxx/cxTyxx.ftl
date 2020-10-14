<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		<!--查询条件  开始 -->
		<form class="form-horizontal sl_all_form simple-search-form">
			<div id="searchBox">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label for="" class="control-label">学号</label>
							<div class="inline width-70">
								<input class="form-control" id="xh" name="xh" maxlength="20"/>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label for="" class="control-label">
								姓名
							</label>
							<div class="inline width-70">
								<input class="form-control" id="xm" name="xm" maxlength="20"/>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-4">
						<div class="search-btn">
							<button type="button" class="btn btn-primary btn-sm" id="search_go" onclick="searchResult();return false;"> 查 询 </button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!--查询条件  结束  -->
		<!--JQGrid 开始 -->
		<div class="formbox">
			<table id="tabGrid"></table>
			<div id="pager"></div>
		</div>
		<!--JQGrid 结束  -->
	</body>
</html>
