<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/includepc/header.jsp"%>
</head>
<body style="overflow: hidden; background-color: #fff;">
	<br/>
	<div style="margin: 0 15px">
	<div class="row">
		<div class="form-group  col-md-12">
			<label>企业名称:</label>
			<input id="name" class="form-control"
				placeholder="请输入企业名称"  value="${name }" style="width: 50%"/>
			<a id="querybtn" href="javascript:void(0);" onclick="searchByName()" class="btn btn-primary btn-select">
			查询</a>
		</div>
		<div style="text-align: center;position: relative;overflow-x: hidden;overflow-y: scroll;width: 100%;height: 400px;">
  	  <c:forEach items="${enterprises }" var="i">
  	  	<div class="form-group  col-md-12">
  	  		<a href="javascript:void(0);" id="${i.pkId }" onclick="chooseEnterprises(this)" >${i.name }</a>
        </div>
  	  </c:forEach>
  	  </div>
     </div>	
	</div>
	<!--  页面 footer  的信息   -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<!--  本页面专用 -->
	<script type="text/javascript">
	//注意：parent 是 JS 自带的全局对象，可用于操作父页面
	var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	var parentId=parent.$("#body").val();
	$(document).ready(function (){
		$("#"+parentId).css("color","red");
	});
	function chooseEnterprises(obj){
		var enterprises = $(obj).text(); 
		var enterpriseId = $(obj).attr("id"); 
		parent.$('#bodyName').val(enterprises);
		parent.$('#body').val(enterpriseId);
		parent.layer.close(index);
	}
	function searchByName(){
		var name = $("#name").val();
		if(name != null && name != ""){
			window.location.href =ctx+"/enterprise/selectAll/"+name;
		}else{
			window.location.href =ctx+"/enterprise/selectAll";
		}
		
	}
	</script>

</body>
</html>