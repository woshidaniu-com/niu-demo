<!DOCTYPE html>
<html>
	<head>
		[#include "/globalweb/head/wdate.ftl" /]
	</head>
	<body>
		<form id="ajaxForm" method="post" data-toggle="validation" action="doResubmitTask.zf" theme="simple" class="form-horizontal sl_all_form" >
			<input type="hidden" name="proposer" value="${model.proposer}"/>
			<input type="hidden" name="id" value="${model.id}"/>
			<input type="hidden" name="processId" value="${model.p_proc_inst_id}"/>
			<input type="hidden" name="p_task_id" value="${model.p_task_id}"/>
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">申请人</label>
			          <div class="col-sm-9">
			            	<strong class="text-danger">${model.proposerName}[${model.proposer}]</strong>
			          </div>
			        </div>
			      </div>
			      <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>请假天数</label>
			          <div class="col-sm-9">
			            	<input type="text" id="numberOfDays" value="${model.numberOfDays}" name="numberOfDays" maxlength="100" class="form-control" validate="{required:true,integer:true}" />
			          </div>
			        </div>
			      </div>
			</div>
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>开始日期</label>
			          <div class="col-sm-9">
			              	<input type="text"  id="startDate" value="${model.startDate?date}" name="startDate" readonly="true" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"
			              validate="{required:true}" class="form-control"/>
			          </div>
			        </div>
			      </div>
			      
			       <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>截止日期</label>
			          <div class="col-sm-9">
			              	<input type="text"  id="endDate" value="${model.endDate?date}" name="endDate" readonly="true" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"
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
							<option value="1" ${(model.vocationType==1)?string('selected','')}>病假</option>
							<option value="2" ${(model.vocationType==2)?string('selected','')}>事假</option>
							<option value="3" ${(model.vocationType==3)?string('selected','')}>其他</option>
						</select>
						<SCRIPT type="text/javascript">
					    		jQuery('#vocationType').trigger("chosen");
		 			    	</SCRIPT>
			          </div>
			        </div>
			      </div>
			</div>
			<div class="row">
				 <div class="col-md-12 col-sm-12">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">请假原因</label>
			          <div class="col-sm-9">
			            	<input type="text" id="motivation" name="motivation" value="${model.motivation}" maxlength="200" class="form-control" />
			          </div>
			        </div>
			      </div>
			</div>
			
			
			<div class="row">
				 <div class="col-md-12 col-sm-12">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">是否重新提交</label>
			          <div class="col-sm-9">
			            	<select class="form-control input-sm span3 chosen-select" name="isResubmit" id="isResubmit">
								<option value="true">是</option>
								<option value="false">否</option>
							</select>
							<SCRIPT type="text/javascript">
					    		jQuery('#isResubmit').trigger("chosen");
		 			    	</SCRIPT>
			          </div>
			        </div>
			      </div>
			</div>
			
		</form>
	</body>
</html>
