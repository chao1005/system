<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/includepc/header.jsp"%>
	<!-- jqgrid表格信息 -->
<%@ include file="/WEB-INF/include/jbox-css.jsp"%>
<style type="text/css">
::-webkit-scrollbar-track-piece { 
background-color:#f8f8f8;
}
::-webkit-scrollbar {
width:9px;
height:9px;
}
::-webkit-scrollbar-thumb {
background-color:#dddddd;
background-clip:padding-box;
min-height:28px;
}
::-webkit-scrollbar-thumb:hover {
background-color:#bbb;
}
</style>
</head>
<body>
	<div id="wrapper" style="background: #EDEDED;">
		<!--  导航页面  -->
       <%@ include file="/WEB-INF/includepc/nav.jsp"%> 
		 <div id="page-wrapper">
				<div class="col-lg-12 ">
					<div id="liw-content" class="liw-content">
					 <iframe id="iFrameBody"  name ="iFrameBody"  width="100%" height="100%" frameborder="0"  src="" scrolling="auto"></iframe> 
					</div>
				</div>
			</div>
		</div> 
	<!--  页面 footer  的信息   -->
	<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	
	

	<!--  本页面专用 --> 
	<script src="${ctxStatic}/js/common/index.js"></script>
 
</body>
</html>