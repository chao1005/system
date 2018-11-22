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
					<span class="panel-title liw-panel-title">专家排班信息</span> <span
						class="panel-left-one"></span>
				</div>
			  	<div class="panel-body"> 	
			  		<a class="btn btn-primary" href="${ctx}/scheduling/list/${expertVo.expert.id}/${page }?page=${expertVo.page}&expert.name=${expertVo.expert.name}">返回</a>
			  		<table  class="table table-striped table-bordered table-hover">
			  			<tr>
			  				<td>排号</td>
			  				<td>企业名称</td>
			  				<td>是否咨询</td>
			  			</tr>
			  			<c:if test="${empty orders }">
		  					<tr>
				  				<td colspan="3" style="text-align: center;">暂无预约</td>
				  			</tr>
			  			</c:if>
			  			<c:forEach items="${orders }" var="i">
			  				<tr>
				  				<td>${i.sortNum }</td>
				  				<td>${i.enterpriseName }</td>
				  				<td>
				  					<c:if test="${i.type eq 1} ">已咨询</c:if>
				  					<c:if test="${i.type ne 1} ">未咨询</c:if>
				  				</td>
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