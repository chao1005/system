<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ include file="/WEB-INF/include/taglib.jsp"%> --%>
 
<!-- 页面footer 部分   ，一些js信息-->
<!-- JavaScript -->
<script type="text/javascript">
//项目root路径
 var  ctx ="${ctx}";
 //static文件夹的路径
 var  ctxStatic ="${ctxStatic}";
 //third文件夹的路径 
 var  ctxThird ="${ctxThird}";
</script>


    <!-- jQuery -->
    <script src="${ctxThird}/jquery/jquery-1.12.0.js"></script>
    <%--  <script src="${ctxThird}/jquery/jquery-migrate-1.2.1.js"></script> --%>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="${ctxThird}/bootstrap-3.3.5/js/bootstrap.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${ctxThird}/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${ctxThird}/sbadmin/js/sb-admin-2.js"></script>
    
    <script src="${ctxThird}/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="${ctxThird}/webupload/webuploader.min.js"></script>
	
	
    <!-- layer -->
    <%@ include file="/WEB-INF/includepc/layer-js.jsp"%>
        
    <!--  公用js-->
	<script src="${ctxStatic}/js/common/hyetec.js?ver=${uap:getVersion()}"></script>

	
  
 
     