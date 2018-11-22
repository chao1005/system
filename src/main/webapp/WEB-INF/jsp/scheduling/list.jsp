<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/includepc/jqgridheader.jsp"%>



</head>
<body style="overflow: hidden; background-color: #fff;">
		<input type="hidden" id="expert_id" name="expert_id" value="${expert_id}">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div class="panel panel-default">
				<!-- /.panel-heading -->
				<div class="panel-heading liw-heading">
					<span class="panel-title liw-panel-title">专家排班列表</span> <span
						class="panel-left-one"></span>
				</div>
				<div class="panel-body">
					<div class="row">
						<form:form id="editForm" action="${ctx }/expert/findAll"
							method="post" modelAttribute="expertVo" cssClass="form-inline">
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
								<%-- <a class="btn btn-primary" href="${ctx}/scheduling/toAdd/${expert_id}">添加</a> --%>
								<a class="btn btn-primary" href="${ctx}/expert/list?page=${expertVo.page}&expert.name=${expertVo.expert.name}" >返回</a>
							</div>
						</form:form>
					</div>
					<div id="dataTable_wrapper" class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables">
						</table>
						<div id="jqGridPager"></div>
					</div>
					<!-- /.table-responsive -->

				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->



	<!--  页面 footer  的信息   -->
	<%@ include file="/WEB-INF/includepc/jqgridfooter.jsp"%>
	<script type="text/javascript">
	Orders = '${schedulingdsate}';
	var expert_id = '${expert_id}';
	var pages = '${expertVo.page}';
	var pagess = '${page}';
	var name = '${expertVo.expert.name}';
	  </script>
	<!--  本页面专用 -->
<script src="${ctxStatic}/js/scheduling/list.js" type="text/javascript"></script>
</body>
</html>