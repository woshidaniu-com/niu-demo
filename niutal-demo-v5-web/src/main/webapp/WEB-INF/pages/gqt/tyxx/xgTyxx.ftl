<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
	<form action="xgBcTyxx.zf" data-toggle="validation"   role="form" class="form-horizontal sl_all_form"  id="ajaxForm" method="post" >
		<input type="hidden" name="xh" value="${tyxxModel.xh}"/>
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="form-group ">
					<label for="" class="col-sm-3 control-label">
						学号
					</label>
					<div class="col-sm-8">
						<p class="form-control-static">${tyxxModel.xh}</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group form-group-sm">
					<label for="" class="col-sm-3 control-label">
						姓名
					</label>
					<div class="col-sm-8">
						<p class="form-control-static">${tyxxModel.xm}</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group form-group-sm">
					<label for="" class="col-sm-3 control-label" >
						<span class="red">*</span>性别
					</label>
					<div class="col-sm-8">
						 [#list xbList as item]
		                 	<label class="radio-inline">
								<input type="radio" name="xbdm" validate="{required:true}" [#if item.dm==tyxxModel.xbdm]checked="true"[/#if]  value="${item.dm}"/>${item.mc}
							</label>
			          	 [/#list]
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group form-group-sm">
					<label for="" class="col-sm-3 control-label"  >
						<span class="red">*</span>身份证号	
					</label>
					<div class="col-sm-8">
						<input type="text" name="sfzh" id="sfzh" data-rules='{"required":true,"idCard":true}' value="${tyxxModel.sfzh}" class="form-control input-sm span5"/>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group">
					<label for="" class="col-sm-3 control-label" >
						<span class="red">*</span>民族
					</label>
					<div class="col-sm-8">
						 <select id="mzdm"  name="mzdm" class="form-control  input-sm chosen-select" data-rules='{"required":true}'>
						 	<option value="">---请选择---</option>
						 	[#list mzList as item]
						 		<option value="${item.dm}" [#if item.dm==tyxxModel.mzdm]selected="true"[/#if]>${item.mc}</option>
						 	[/#list]
						 </select>
						 <SCRIPT type="text/javascript">
				    		jQuery('#mzdm').trigger("chosen");
	 			    	</SCRIPT> 
					</div>
	 			</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group">
					<label for="" class="col-sm-3 control-label" >
						<span class="red">*</span>政治面貌
					</label>
					<div class="col-sm-8">
						 <select id="zzmmdm"  name="zzmmdm" class="form-control  input-sm chosen-select" data-rules='{"required":true}'>
						 	<option value="">---请选择---</option>
						 	[#list zzmmList as item]
						 		<option value="${item.dm}" [#if item.dm==tyxxModel.zzmmdm]selected="true"[/#if]>${item.mc}</option>
						 	[/#list]
						 </select>
						 <SCRIPT type="text/javascript">
				    		jQuery('#zzmmdm').trigger("chosen");
	 			    	</SCRIPT> 
					</div>
	 			</div>
			</div>
			
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
						家庭地址
					</label>
					<div class="col-sm-10">
						<input type="text"  name="jtdz" id="jtdz" value="${tyxxModel.jtdz}" class="form-control  input-sm span3" data-rules='{"stringMaxLength":200}'/>
					</div>
	 			</div>
			</div>
		</div>
	</form>
	</body>
</html>