<!DOCTYPE html>
<html>
	<head>
		[#include "/globalweb/head/niutal-ui-wdate.ftl" /]
	</head>
	<body>
		<div class="alert alert-success alert-dismissible" role="alert">
		  <strong>提示：带 <code>	*	</code> 的为必填项！</strong>
		</div>
		<form id="ajaxForm" method="post" data-toggle="validation" action="sqBc.zf" theme="simple" class="form-horizontal sl_all_form" >
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>申请人</label>
			          <div class="col-sm-9">
			            	<input type="text" id="proposer" name="proposer" maxlength="100"
			           		class="form-control" validate="{required:true}" />
			          </div>
			        </div>
			      </div>
			      <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>请假天数</label>
			          <div class="col-sm-9">
			            	<input type="text" id="numberOfDays" name="numberOfDays" maxlength="100" class="form-control" validate="{required:true,integer:true}" />
			          </div>
			        </div>
			      </div>
			</div>
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>开始日期</label>
			          <div class="col-sm-9">
			              	<input type="text"  id="startDate" name="startDate" readonly="true" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"
			              validate="{required:true}" class="form-control"/>
			          </div>
			        </div>
			      </div>
			      
			       <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>截止日期</label>
			          <div class="col-sm-9">
			              	<input type="text"  id="endDate" name="endDate" readonly="true" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"
			              	validate="{required:true}" class="form-control"/>
			          </div>
			        </div>
			      </div>
			</div>
			
			<div class="row">
				 <div class="col-md-12 col-sm-12">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>请假类型</label>
			          <div class="col-sm-9">
						 <select class="form-control input-sm span3 chosen-select" name="vocationType" id="vocationType">
							<option value="1">病假</option>
							<option value="2">事假</option>
							<option value="3">其他</option>
						</select>
						<script>
							$('#vocationType').trigger('chosen');
						</script>
			          </div>
			        </div>
			      </div>
			</div>
			<div class="row">
				 <div class="col-md-12 col-sm-12">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">请假原因</label>
			          <div class="col-sm-9">
			            	<textarea type="text" id="motivation" name="motivation" maxlength="200" class="form-control" />
			          </div>
			        </div>
			      </div>
			</div>
		</form>
	</body>
</html>
