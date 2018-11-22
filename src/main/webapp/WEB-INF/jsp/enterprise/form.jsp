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
					<span class="panel-title liw-panel-title">用户管理&nbsp;>&nbsp;企业信息</span> <span
						class="panel-left-one"></span>
				</div>
			  <div class="panel-body"> 	
			     <form:form id="form" action="${ctx }" method="post" modelAttribute="enterprise" cssClass="form-inline">
			     	<form:hidden path="pkId"/> 
					<div class="form-group  col-md-5">
		                <form:label path="name"  ><span class="span-required">*</span>企业名称:</form:label>
		                <form:input   path="name"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="registeredCapital"  ><span class="span-required">*</span>注册资本:</form:label>
						<form:input   path="registeredCapital"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>			            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="corporation"  ><span class="span-required">*</span>法人:</form:label>
		                <form:input  path="corporation"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="address"  ><span class="span-required">*</span>企业地址:</form:label>
		                <form:input  path="address"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="permission"  ><span class="span-required">*</span>企业权限:</form:label>
		                <form:select style="width: 65%;" cssClass="form-control" path="permission">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${enterprisePermission }" itemValue="sort" itemLabel="name" />
		                </form:select>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="introduction"  >专家介绍:</form:label>
		                <form:input  path="introduction"   cssClass="form-control" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="level"  >企业级别:</form:label>
		                <form:select style="width: 65%;" path="level" cssClass="form-control">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${enterpriseLevel }" itemValue="sort" itemLabel="name" />
		                </form:select>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="status"  >状态:</form:label>
		                <form:radiobuttons path="status" items="${userStatus }" itemValue="sort" itemLabel="name"/>
		            </div>
		            <div class="form-group  col-md-12">
		                <form:label path="brief"  ><span class="span-required">*</span>简介:</form:label>
		                <form:textarea  path="brief"   cssClass="form-control" maxlength="500" style="width:70%;"/>
		            </div>
		            <div class="form-group  col-md-12">
						<a class="btn btn-primary" href="javascript:void(0);" onclick="addAdvice()">添加</a>
					</div>
					<div id="advice">
						<c:if test="${adviceCount eq 0 }">
				            <div class="form-group  col-md-5">
				                <label  style="width: 100px;">咨询侧重点1:</label>
				                <input  id="adviceType1"   class="form-control" maxlength="50" style="width: 100%;"/>
				            </div>
						</c:if>
						<c:if test="${adviceCount  ne 0 }">
							<c:forEach items="${advices  }" var="i" varStatus="a">
								<div class="form-group  col-md-5">
				                <label  >咨询侧重点${a.count }:</label>
				                <input value="${i.type }"  id="adviceType${a.count }"   class="form-control" maxlength="50" style="width: 100%;"/>
				            	</div>
							</c:forEach>
						</c:if>
					</div>
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
	<script type="text/javascript">
	var count = '${adviceCount}';
	</script>
	<script src="${ctxStatic}/js/enterprise/form.js" type="text/javascript"></script>
	
</body>
</html>