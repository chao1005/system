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
					<span class="panel-title liw-panel-title">用户管理&nbsp;>&nbsp;路演项目信息</span> <span
						class="panel-left-one"></span>
				</div>
			  
			  <div class="panel-body"> 	
			     <form:form id="form" action="${ctx }" method="post" modelAttribute="roadshow" cssClass="form-inline">
			     	<form:hidden path="pkId"/> 
			     	<form:hidden path="chatroomid"/> 
					<div class="form-group  col-md-5">
		                <form:label path="name"  ><span class="span-required">*</span>项目名称:</form:label>
		                <form:input   path="name"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="body"  ><span class="span-required">*</span>企业主体:</form:label>
		                <input  id="bodyName" value="${name }"  readonly="readonly" onclick="choose()" class="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		                <form:hidden  path="body"  readonly="true" cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-12">
		                <form:label path="brief"  ><span class="span-required">*</span>简介:</form:label>
						<form:textarea   path="brief"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 70%;"/></div>
		             <div class="form-group  col-md-12">
		                <form:label path="content"  ><span class="span-required">*</span>项目描述:</form:label>
		                <form:textarea  path="content"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 70%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="validateCode"  ><span class="span-required">*</span>项目验证码:</form:label>
		               <form:input  path="validateCode"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label path="startTime"  ><span class="span-required">*</span>开始时间:</form:label>
		                <form:input  path="startTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"   cssClass="form-control" maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-12">
		                <form:label path="endTime"  ><span class="span-required">*</span>结束时间:</form:label>
		                <form:input  path="endTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"   cssClass="form-control" maxlength="50" style="width: 26%;"/>
		            </div>
		            <div class="form-group  col-md-12">
		                <form:label path="aduitorStatus"  ><span class="span-required">*</span>审核状态:</form:label>
		                <form:select  cssClass="form-control"  style="width: 26%;" path="aduitorStatus">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${aduitorStatus }" itemValue="sort" itemLabel="name"/> 
		                </form:select>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="video"  ><span class="span-required">*</span>路演视频:</form:label>
		               	<form:hidden  path="video"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            	<input hidden="" id="videoName" value="${attachment.name }" >
		            	<input hidden="" id="videourl" value="${attachment.url }">
		            	<input hidden="" id="videoType" value="${attachment.type }">
		            	<div id="uploader1" class="wu-example">
						    <!--用来存放文件信息-->
						    <div id="thelist1" class="uploader-list">
						    <div name="videoFile">
							    <a href="javascript:void(0);" onclick="openVideo();" id="${attachment.url }">${attachment.name }</a>
							    <a href="javascript:void(0);" id="${attachment.url }" onclick="del(this)">
							    <c:if test="${!empty attachment }">删除</c:if></a>
							    <input id="type" value="${attachment.type }" hidden="">
						    </div>
						    </div>
						    <div class="btns">
						        <div id="picker1">选择文件</div>
						    </div>
						    <div id="zl"></div>
						</div>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label path="video"  ><span class="span-required">*</span>路演资料:</form:label>
		               	<div id="uploader" class="wu-example">
						    <!--用来存放文件信息-->
						    <div id="thelist" class="uploader-list">
						    	<c:forEach items="${attachments }" var="i">
						    		<div name="upfile">
									    <a href="javascript:void(0);" onclick="downloadFile(this)" id="${i.url }">${i.name }</a>
									    <a href="javascript:void(0);" id="${i.url }" onclick="del(this)">删除</a>
									    <input id="type" value="${i.type }" hidden="">
								    </div>
						    	</c:forEach>
						    </div>
						    <div class="btns">
						        <div id="picker">选择文件</div>
						    </div>
						    <div id="zl"></div>
						</div>
		            </div>
		            
		           	<!-- 服务项目规划结束 -->
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
	var videoSrc = '${attachment.url}';
	var sname = '${sname.name}';
	var page = '${page}';
	ctx = window.location.protocol+'//'+window.location.host;
	function openVideo(){
		 layer.open({
		      type: 2,
		      title:"aaa",
		      area: ['400px', '450px'],
		      fixed: false, //不固定
		      maxmin: true,
		      content: ctx+'/roadshow/open'
		    });
	}
	</script>
	<script src="${ctxStatic}/js/roadshow/form.js" type="text/javascript"></script>

</body>
</html>