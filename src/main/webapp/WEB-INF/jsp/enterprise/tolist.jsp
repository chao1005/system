<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden;">
<head>
<%@ include file="/WEB-INF/includepc/header.jsp"%>
<link href="${ctxStatic}/css/jquery.datetimepicker.css" rel="stylesheet" type="text/css">
</head>
<body style="overflow: hidden; background-color: #fff;">
			<input type="hidden" id="expert_id" name="expert_id" value="${expert_id}">	
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	        <div class="panel panel-default">
			 <div class="panel-heading liw-heading">
					<span class="panel-title liw-panel-title">企业预约信息</span> <span
						class="panel-left-one"></span>
				</div>
			  	<div class="panel-body"> 	
			  		<a class="btn btn-primary" href="${ctx}/enterprise/list/?page=${page}&enterprise.name=${enterprise.name}">返回</a>
			  		<table  class="table table-striped table-bordered table-hover">
			  			<tr>
			  				<td>专家姓名</td>
			  				<td>专家类别</td>
			  				<td>预约过的次数</td>
			  			</tr>
			  			<c:if test="${empty experts }">
		  					<tr>
				  				<td colspan="3" style="text-align: center;">暂无预约过的专家</td>
				  			</tr>
			  			</c:if>
			  			<c:forEach items="${experts }" var="i">
			  				<tr>
				  				<td>${i.name }</td>
				  				<td>
				  					<c:forEach items="${expertType }" var="a">
				  						<c:if test="${a.sort eq i.category }">${a.name }</c:if>
				  					</c:forEach>
				  				</td>
				  				<td>${i.times }</td>
				  			</tr>
			  			</c:forEach>
			  		</table>
		         </div>
			  </div>
			</div>
	<!-- /.row -->
	<!--  页面 footer  的信息   -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<!--  本页面专用 -->
<script type="text/javascript" src="${ctxStatic}/lib/jquery/jquery.datetimepicker.full.js"></script>
</body>
</html>