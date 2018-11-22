<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/includepc/jqgridheader.jsp"%>



</head>
<body style="overflow: hidden; background-color: #fff;">
	
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div class="panel panel-default">
				<!-- /.panel-heading -->
				<div class="panel-heading liw-heading">
					<span class="panel-title liw-panel-title">路演项目管理&nbsp;>&nbsp;路演项目列表</span> <span
						class="panel-left-one"></span>
				</div>
				<div class="panel-body">

					<div class="row">
						<form:form id="editForm" action="${ctx }/roadshow/findAll"
							method="post" modelAttribute="roadshowVo" cssClass="form-inline">
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
								<a class="btn btn-primary" href="${ctx}/roadshow/toAdd">添加</a>
							</div>
							<div class="form-group  col-xs-10 col-sm-10 col-md-10 liw-col-jq">
								<form:label path="roadshow.name">姓名:</form:label>
								<form:input path="roadshow.name" cssClass="form-control"
									placeholder="请输入项目名称" />
								<a id="querybtn" class="btn btn-primary btn-select"><i
									class="${icon}"></i>查询</a>
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
	Orders = '${aduitorStatus}';
	var pages = '${roadshowVo.page}';
	if(pages == null || pages == ''){
		pages =1;
	}
	  </script>
	<!--  本页面专用 -->
<script src="${ctxStatic}/js/roadshow/list.js" type="text/javascript"></script>
</body>
</html>