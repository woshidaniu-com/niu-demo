<!DOCTYPE html>
<html>
	<head>
		[#include "/globalweb/head/wdate.ftl" /]
		<script>
			$(function(){
				var taskFormObject = ${taskFormObject};
				$("#taskFormEl").alpaca(taskFormObject);
			});
		</script>
	</head>
	<body>
		<form id="ajaxForm" method="post" data-toggle="validation" action="doProcess.zf" theme="simple" class="form-horizontal sl_all_form" >
			<input type="hidden" name="p_proc_inst_id" value="${model.p_proc_inst_id}"/>
			<input type="hidden" name="p_task_id" value="${model.p_task_id}"/>
			<input type="hidden" name="proposer" value="${model.proposer}"/>
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">申请人</label>
			          <div class="col-sm-9">
			          <input type="text" value="${model.proposerName}"
			           		class="form-control" readonly/>
			          </div>
			        </div>
			      </div>
			      <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">请假天数</label>
			          <div class="col-sm-9">
			            	<input type="text" value="${model.numberOfDays}[天]"
			           		class="form-control" readonly/>
			          </div>
			        </div>
			      </div>
			</div>
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">开始日期</label>
			          <div class="col-sm-9">
			          <input type="text" value="${model.startDate?date}"
			           		class="form-control" readonly/>
			          </div>
			        </div>
			      </div>
			      
			       <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">截止日期</label>
			          <div class="col-sm-9">
			          <input type="text" value="${model.endDate?date}"
			           		class="form-control" readonly/>
			          </div>
			        </div>
			      </div>
			</div>
			
			
			<div class="row">
				 <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">请假类型</label>
			          <div class="col-sm-9">
			             [#switch model.vocationType]
						  [#case 1]
						     <input type="text" value="病假" class="form-control" readonly/>
						     [#break]
						  [#case 2]
						     <input type="text" value="事假" class="form-control" readonly/>
						     [#break]
						  [#case 3]
						  <input type="text" value="其他" class="form-control" readonly/>
						     [#break]
						  [#default]
						   <input type="text" value="未知" class="form-control" readonly/>
						[/#switch]
			          </div>
			        </div>
			      </div>
			      
			       <div class="col-md-6 col-sm-6">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label">请假原因</label>
			          <div class="col-sm-9">
			           		<textarea type="text" readonly class="form-control">
			           			${model.motivation}
			           		</textarea>
			          </div>
			        </div>
			      </div>
			</div>
			
		<div class="panel panel-default">
		  <div class="panel-heading">审批处理</div>
		  <div class="panel-body">
		   	<div class="row" id="taskFormEl">
				
		  	</div>
		  </div>
		</div>
		</form>
	</body>
</html>
