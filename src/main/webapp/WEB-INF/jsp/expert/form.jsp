<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden;">
<head>
<%@ include file="/WEB-INF/includepc/header.jsp"%>



</head>
<body style="overflow: hidden; background-color: #fff;">
	
        	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	        <div class="panel panel-default">
			 <div class="panel-heading liw-heading">
					<span class="panel-title liw-panel-title">专家排班信息</span> <span
						class="panel-left-one"></span>
				</div>
			  
			  <div class="panel-body"> 	
			     <form:form id="form" action="${ctx }" method="post" modelAttribute="expert" cssClass="form-inline">
			     	<form:hidden path="pkId"/> 
					<div class="form-group  col-md-5">
		                <form:label path="userId"  style="width: 75px;" ><span class="span-required">*</span>账号:</form:label>
		                <input  id="userName" value="${name }"  readonly="readonly" onclick="choose()" class="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		                <form:hidden  path="userId"  readonly="true" cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
					<div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="company"  ><span class="span-required">*</span>工作单位:</form:label>
		                <form:input   path="company"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="job"  ><span class="span-required">*</span>职务:</form:label>
						<form:input   path="job"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>			            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="special"  ><span class="span-required">*</span>个人特长:</form:label>
		                <form:input  path="special"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="qualification"  ><span class="span-required">*</span>资历:</form:label>
		                <form:input  path="qualification"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="category"  >专家分类:</form:label>
		                <form:select cssClass="form-control" path="category"  style="width: 65%;">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${expertType }" itemValue="sort" itemLabel="name" />
		                </form:select>
		            </div>
		            <div class="form-group  col-md-12">
		                <form:label  style="width: 75px;" path="level"  >专家级别:</form:label>
		                <form:select cssClass="form-control" path="level"  style="width: 26%;">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${expertLevel }" itemValue="sort" itemLabel="name" />
		                </form:select>
		            </div>
		             <div class="form-group  col-md-12">
		                <form:label style="width: 75px;" path="introduction"  >专家介绍:</form:label>
		                <form:textarea  path="introduction"   cssClass="form-control" maxlength="50" style="width: 70%;"/>
		            </div>
		           	<!-- 服务项目规划结束 -->
		           	<div class="row">
			            <div class="col-md-10 liw-row-btn" style="text-align: center;">
				      		<button type="button" class="btn btn-primary" onclick="save()">保存</button>
				    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                <button type="button" class="btn btn-primary btn-select"  onclick="back()">返回</button>
			           	</div> 	
		            </div>	
		            </form:form>		
		            </div>
			  </div>
			  </div>
	<!-- /.row -->
	<!--  页面 footer  的信息   -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<!--  本页面专用 -->
<script src="${ctxStatic}/js/expert/form.js" type="text/javascript"></script>

</body>
</html>