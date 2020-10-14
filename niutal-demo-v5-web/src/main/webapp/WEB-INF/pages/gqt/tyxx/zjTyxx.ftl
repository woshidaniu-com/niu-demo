[#assign zf=JspTaglibs["/woshidaniu-tags"] /]
[#assign q=JspTaglibs["/niutal-search-tags"] /]
<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
	
	
	[@q.panel theme="default" id="search_2"] 
		     [@q.input list="#(xh:学号,xm:姓名,sfzh:身份证号)"/] 
		     [@q.radio name="xbdm" text="性别" provider="sjbzService" providerData="{tableName:'dm_gb_b_rdxbdm'}" listKey="dm" listValue="mc" defaultValue="1"/]
		     [@q.multi name="mzdm" text="民族" provider="sjbzService" providerData="{tableName:'DM_GB_B_ZGGMZMCDLMZMPXFHDM'}" listKey="dm" listValue="mc" hasBlank=true/]
		     [@q.multi name="xxxx" text="provider" provider="jcsjService" providerData="{lxdm:'bmlx'}" listKey="dm" listValue="mc" hasBlank=true/]
		     [@q.multi name="zzmmdm" text="政治面貌" provider="sjbzService" providerData="{tableName:'dm_gb_b_zzmmdm'}" listKey="dm" listValue="mc" hasBlank=true pinyin=true /]
		     [@q.date name="csrq" text="出生日期" format="YYYY-MM-DD"/]
		     [@q.number name="ssss" text="数字区间" format=""/]
		     [@q.group name="xyzybj" text="年级学院专业班级"]
			     [@q.multi name="njdm_id" text="年级" list="njdmList" listKey="njdm_id" listValue="njmc"  /]
			     [@q.multi name="bmdm_id" text="学院" list="xydmList" listKey="bmdm_id" listValue="bmmc" pinyin=true /]
			     [@q.multi name="zydm_id" text="专业" list="zydmList" listKey="zydm_id" listValue="zymc" pinyin=true relation="[{bmdm_id_lsbm:'bmdm_id'}]"/]
			     [@q.multi name="bjdm_id" text="班级" list="bjdmList" listKey="bjdm_id" listValue="bjmc" pinyin=true 
			     				 relation="[{njdm_id:'njdm_id'},{bmdm_id:'bmdm_id'},{zydm_id:'zydm_id'}]"/]
	     	[/@q.group]
		[/@q.panel]
	
	<form action="zjBcTyxx.zf" data-toggle="validation"   role="form" class="form-horizontal sl_all_form"  id="ajaxForm" method="post" >
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="form-group form-group-sm">
					<label for="" class="col-sm-3 control-label">
						<span class="red">*</span>学号
					</label>
					<div class="col-sm-8">
						<input type="text" maxlength="20" name="xh" id="xh"  value="" class="form-control input-sm span2"  data-rules='{"required":true}'/>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group form-group-sm">
					<label for="" class="col-sm-3 control-label">
						<span class="red">*</span>姓名
					</label>
					<div class="col-sm-8">
						<input type="text" maxlength="20" name="xm" id="xm" class="form-control  input-sm span3" data-rules='{"required":true,"stringMaxLength":20}'/>
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
								<input type="radio" name="xbdm" validate="{required:true}"  value="${item.dm}"/>${item.mc}
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
						<input type="text" name="sfzh" id="sfzh" data-rules='{"required":true,"idCard":true}'  class="form-control input-sm span5"/>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group">
					<label for="" class="col-sm-3 control-label" >
						<span class="red">*</span>民族
					</label>
					<div class="col-sm-8">
						[@zf.select id="mzdm"  name="mzdm" cssClass="form-control  input-sm chosen-select" 
						dataRules="{'required':true}" list="mzList" listKey="dm" listValue="mc"/]
					</div>
	 			</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="form-group">
					<label for="" class="col-sm-3 control-label" >
						<span class="red">*</span>政治面貌
					</label>
					<div class="col-sm-8">
						[@zf.select id="zzmmdm"  name="zzmmdm" cssClass="form-control  input-sm chosen-select"  
						defaultValue="02" dataRules="{'required':true}" provider="sjbzService" 
						providerData="{tableName:'dm_gb_b_zzmmdm'}" listKey="dm" listValue="mc"/]
					</div>
	 			</div>
			</div>
			
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
						家庭地址
					</label>
					<div class="col-sm-10">
						<input type="text"  name="jtdz" id="jtdz" class="form-control  input-sm span3" data-rules='{"stringMaxLength":200}'/>
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="form-group">
					<label for="" class="col-sm-2 control-label" >
					</label>
					<div class="col-sm-10">
					</div>
	 			</div>
			</div>
			
		</div>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</body>
	
</html>