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
					<span class="panel-title liw-panel-title">用户管理&nbsp;>&nbsp;投资者信息</span> <span
						class="panel-left-one"></span>
				</div>
			  <div class="panel-body"> 	
			     <form:form id="form" action="${ctx }" method="post" modelAttribute="inivestor" cssClass="form-inline">
			     	<form:hidden path="pkId"/> 
					<div class="form-group  col-md-5">
		                <form:label path="company"  ><span class="span-required">*</span>工作单位:</form:label>
		                <form:input   path="company"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="job"  ><span class="span-required">*</span>职务:</form:label>
						<form:input   path="job"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>			            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="special"  ><span class="span-required">*</span>特长:</form:label>
		                <form:input  path="special"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="qualification"  ><span class="span-required">*</span>资历:</form:label>
		                <form:input  path="qualification"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="permission"  ><span class="span-required">*</span>权限:</form:label>
		                <form:select style="width: 65%;"  cssClass="form-control" path="permission">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${inivestorPermission }" itemValue="sort" itemLabel="name" />
		                </form:select>
		            </div>
		           <div class="form-group  col-md-5">
		                <label  ><span class="span-required">*</span>投资意向:</label>
		                <c:choose>
			                <c:when test="${ !empty intentions  }">
			                	<c:forEach items="${intention}" var="i">
			                		<c:if test="${i.status eq 2 }">
			                			<input type="checkbox" value="${i.sort }" name="intentionType" checked="checked">${i.name }
			                		</c:if>
			                		<c:if test="${i.status ne 2 }">
			                			<input type="checkbox" value="${i.sort }" name="intentionType" >${i.name }
			                		</c:if>
			                	</c:forEach>
			                </c:when>
			                <c:otherwise>
				                <c:forEach items="${intention }" var="i">
		                			<input type="checkbox" value="${i.sort }" name="intentionType">${i.name }
			                	</c:forEach>
			                </c:otherwise>
			                </c:choose>
		            </div>
		            </form:form>		
		            <div class="row">
			            <div class="col-md-10 liw-row-btn" style="text-align: center;">
				      		<button type="button" class="btn btn-primary" onclick="save()">保存</button>
				    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                <button type="button" class="btn btn-primary btn-select"  onclick="back()">返回</button>
			           	</div> 	
		            </div>	
		            </div>
			  </div>
			  </div>
	<!-- /.row -->
	<!--  页面 footer  的信息   -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<!--  本页面专用 -->
	<script type="text/javascript">
	</script>
	<script src="${ctxStatic}/js/inivestor/form.js" type="text/javascript"></script>
	
</body>
</html>