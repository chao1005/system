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
					<span class="panel-title liw-panel-title">用户管理&nbsp;>&nbsp;专家排班信息</span> <span
						class="panel-left-one"></span>
				</div>
			  
			  <div class="panel-body"> 	
			     <form:form id="form" action="${ctx}" method="post" modelAttribute="scheduling" cssClass="form-inline">
			     	<form:hidden path="pkId"/> 
					<div class="form-group  col-md-5">
		                <form:label path="adviceDate"  ><span class="span-required">*</span>咨询日期:</form:label>
		                <form:input   path="adviceDate"   cssClass="form-control" placeholder="必填" maxlength="50" style="width: 65%;" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="startTime"  ><span class="span-required">*</span>开始时间:</form:label>
						<form:input   path="startTime"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;" />			            
					</div>
		             <div class="form-group  col-md-5">
		                <form:label path="endTime"  ><span class="span-required">*</span>结束时间:</form:label>
		                <form:input  path="endTime"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;" />
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="capacity"  ><span class="span-required">*</span>预约人数:</form:label>
		                <form:input  path="capacity"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;" />
		            </div>
		           	<!-- 服务项目规划结束 -->
		           	<div class="row">
			            <div class="col-md-10 liw-row-btn">
				      		<button type="button" class="btn btn-primary" onclick="save()">保存</button>
				    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                <button type="button" class="btn btn-primary btn-select"  onclick="back()">返回</button>
			           	</div> 	
		            </div>	
		            </form:form>		
		            </div>
			  </div></div>
	<!-- /.row -->
	<!--  页面 footer  的信息   -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<!--  本页面专用 -->
<script src="${ctxStatic}/js/scheduling/form.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctxStatic}/lib/jquery/jquery.datetimepicker.full.js"></script>
<script type="text/javascript">
	$.datetimepicker.setLocale('ch');
	$('#startTime').datetimepicker({
		datepicker:false,
		format:'H:i',
		step:5
	});
	$('#endTime').datetimepicker({
		datepicker:false,
		format:'H:i',
		step:5
	});
</script>
</body>
</html>