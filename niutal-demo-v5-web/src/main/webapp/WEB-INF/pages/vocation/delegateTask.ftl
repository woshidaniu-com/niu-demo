<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<form id="ajaxForm" method="post" data-toggle="validation" action="delegatTaskSubmit.zf" theme="simple" class="form-horizontal sl_all_form" >
			<input type="hidden" name="p_task_id" value="${model.p_task_id}"/>
			<div class="row">
				 <div class="col-md-12 col-sm-12">
			        <div class="form-group">
			          <label for="" class="col-sm-3 control-label"><span style="color:red;">*</span>委托人账号</label>
			          <div class="col-sm-9">
			            	<input type="text" id="p_assignee" name="p_assignee" maxlength="100"
			           		class="form-control" validate="{required:true}" />
			          </div>
			        </div>
			      </div>
			</div>

		</form>
	</body>
</html>
