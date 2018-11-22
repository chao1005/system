<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden;">
<head>
<%@ include file="/WEB-INF/includepc/header.jsp"%>
<meta name="content-type" content="text/html; charset=UTF-8">

</head>
<body style="overflow: hidden; background-color: #fff;">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	        <div class="panel panel-default">
			 <div class="panel-heading liw-heading">
					<span class="panel-title liw-panel-title">用户管理&nbsp;>&nbsp;用户信息</span> <span
						class="panel-left-one"></span>
				</div>
			  
			  <div class="panel-body"> 	
			     <form:form id="form" action="${ctx }" method="post" modelAttribute="user" cssClass="form-inline">
			     	<form:hidden path="pkId"/> 
			     	<div class="form-group  col-md-5">
			     	<div style="width: 75px;float: left;font-weight: bold;padding-left: 15px;"> 头像:</div>
		                <input id="img" name="img" hidden="" value="${user.img }">
						<img id="turnimg" alt="" src="${user.img }" style="width: 100px;height: 100px;"/> 
						<div id="uploader" class="wu-example" style="display: table-cell;vertical-align: middle;float: left;">
							<!--用来存放文件信息-->
							<div id="thelist" class="uploader-list" style="display: table-cell;vertical-align: middle;"></div>
							<div class="btns" style="display: table-cell;vertical-align: middle;">
								<div id="picker">选择文件</div>
							</div>
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<div class="form-group  col-md-12">
					<div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="loginName"><span class="span-required">*</span>账号:</form:label>
		                <form:input   path="loginName"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label style="width: 75px;" path="password" ><span class="span-required">*</span>密码:</form:label>
		                <input id="password" type="password" value="${user.password }" class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;">
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="userName"  ><span class="span-required">*</span>姓名:</form:label>
		                <form:input  path="userName"   cssClass="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="jobNum"  >工号:</form:label>
		                <form:input  path="jobNum"   cssClass="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
		            </div>
		              <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="sex"  >性别:</form:label>
		                <form:radiobuttons path="sex" items="${sex }" itemValue="sort" itemLabel="name"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="category"  ><span class="span-required">*</span>用户分类:</form:label>
		                <form:select  cssClass="form-control" path="category" onchange="chooseCategory(this);">
		               		 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${userType }" itemValue="sort" itemLabel="name" />
		                </form:select>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label  style="width: 75px;" path="reference"  >推荐人:</form:label>
		                <form:input  path="reference"   cssClass="form-control" maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label  style="width: 75px;" path="mobile"  >手机号:</form:label>
		                <form:input  path="mobile"   cssClass="form-control"  maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label  style="width: 75px;" path="email"  >邮箱:</form:label>
		                <form:input  path="email"   cssClass="form-control"  maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="phone"  >电话:</form:label>
		                <form:input  path="phone"   cssClass="form-control"  maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="identityType"  >证件类型:</form:label>
		                <form:select  cssClass="form-control" path="identityType">
		                	 <form:option value="">---请选择---</form:option>
		                	<form:options  items="${identityType }" itemValue="sort" itemLabel="name"/>
		                </form:select>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="identityNum"  >证件号码:</form:label>
		                <form:input  path="identityNum"   cssClass="form-control"  maxlength="50" style="width: 65%;"/>
		            </div>
		             <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="address"  >地址:</form:label>
		                <form:input  path="address"   cssClass="form-control"  maxlength="50" style="width: 65%;"/>
		            </div>
		            <div class="form-group  col-md-5">
		                <form:label style="width: 75px;"  path="status"  >用户状态:</form:label>
		                <form:radiobuttons  path="status" items="${userStatus }" itemValue="sort" itemLabel="name"/>
		            </div>
		             <div class="form-group  col-md-12">
		                <form:label style="width: 75px;"  path="checkStatus"  >审核状态:</form:label>
		                <form:radiobuttons  path="checkStatus" items="${checkStatus }" itemValue="sort" itemLabel="name"/>
		            </div>
		            </div>
		            <div id="enterprise"  class="form-group  col-md-12" style="border-top: 1px solid #e7e7e7;padding-top: 30px;<c:if test="${empty enterprise }">display: none;</c:if>">
		            	<input id="enterpriseId" type="hidden" value="${enterprise.pkId }">
						<div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>企业名称:</label>
			                <input   id="enterpriseName" value="${enterprise.name }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label  ><span class="span-required">*</span>注册资本:</label>
							<input   id="enterpriseRegisteredCapital" value="${enterprise.registeredCapital }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>			            </div>
			             <div class="form-group  col-md-5">
			                <label ><span class="span-required">*</span>法人:</label>
			                <input  id="enterpriseCorporation" value="${enterprise.corporation }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>企业地址:</label>
			                <input  id="enterpriseAddress" value="${enterprise.address }"  class="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
			            </div>
			             <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>企业权限:</label>
			                <select style="width: 65%;" class="form-control" id="enterprisePermission">
			               		 <option value="">---请选择---</option>
			               		 <c:forEach items="${enterprisePermission }" var="i">
			               		 	<c:if test="${i.sort eq enterprise.permission}">
				               		 	<option value="${i.sort }" selected="selected">${i.name }</option>
			               		 	</c:if>
			               		 	<c:if test="${i.sort ne enterprise.permission}">
				               		 	<option value="${i.sort }">${i.name }</option>
			               		 	</c:if>
			               		 </c:forEach>
			                </select>
			            </div>
			            <div class="form-group  col-md-5">
			                <label>专家介绍:</label>
			                <input  id="enterpriseIntroduction" value="${enterprise.introduction }"  class="form-control" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label>企业级别:</label>
			                <select style="width: 65%;" id="enterpriseLevel" class="form-control">
			               		 <option value="">---请选择---</option>
			               		  <c:forEach items="${enterpriseLevel }" var="i">
			               		 	<c:if test="${i.sort eq enterprise.level}">
				               		 	<option value="${i.sort }" selected="selected">${i.name }</option>
			               		 	</c:if>
			               		 	<c:if test="${i.sort ne enterprise.level}">
				               		 	<option value="${i.sort }">${i.name }</option>
			               		 	</c:if>
			               		 </c:forEach>
			                </select>
			            </div>
			            <div class="form-group  col-md-12" >
			                <label><span class="span-required">*</span>简介:</label>
			                <textarea  id="enterpriseBrief"   class="form-control" maxlength="500" style="width:70%;">${enterprise.brief }</textarea>
			            </div>
			            <div class="form-group  col-md-12" >
			                <label><span class="span-required">*</span>企业咨询侧重点:</label>
			                <textarea  id="advices"   class="form-control" maxlength="500" style="width:70%;">${enterprise.advices }</textarea>
			            </div>
			          <!--   <div class="form-group  col-md-12">
							<a class="btn btn-primary" href="javascript:void(0);" onclick="addAdvice()">添加</a>
						</div> -->
						<%-- <div id="advice">
							<c:if test="${adviceCount eq 0 }">
					            <div class="form-group  col-md-5">
					                <label  style="width: 100px;">咨询侧重点1:</label>
					                <input  id="adviceType1"   class="form-control" maxlength="50" style="width: 100%;"/>
					            </div>
							</c:if>
							<c:if test="${adviceCount  ne 0 }">
								<c:forEach items="${advices  }" var="i" varStatus="a">
									<div class="form-group  col-md-5">
					                <label  >咨询侧重点${a.count }:</label>
					                <input value="${i.type }"  id="adviceType${a.count }"   class="form-control" maxlength="50" style="width: 100%;"/>
					            	</div>
								</c:forEach>
							</c:if>
						</div> --%>
		            </div>
		            <div id="expert" class="form-group  col-md-12" style="border-top: 1px solid #e7e7e7;padding-top: 30px;<c:if test="${empty expert }">display: none;</c:if>">
		           		<input id="expertId" type="hidden" value="${expert.pkId }">
						<div class="form-group  col-md-5">
			                <label style="width: 75px;"><span class="span-required">*</span>工作单位:</label>
			                <input   id="expertCompany" value="${expert.company }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label style="width: 75px;"><span class="span-required">*</span>职务:</label>
							<input   id="expertJob" value="${expert.job }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>			            </div>
			             <div class="form-group  col-md-5">
			                <label style="width: 75px;"><span class="span-required">*</span>个人特长:</label>
			                <input  id="expertSpecial" value="${expert.special }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label style="width: 75px;"><span class="span-required">*</span>资历:</label>
			                <input  id="expertQualification"  value="${expert.qualification }" class="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
			            </div>
			             <div class="form-group  col-md-5">
			                <label style="width: 75px;"><span class="span-required">*</span>专家分类:</label>
			                <select class="form-control" id="expertCategory"  style="width: 65%;">
			               		 <option value="">---请选择---</option>
			               		 <c:forEach items="${expertType }" var="i">
			               		 	<c:if test="${i.sort eq expert.category}">
				               		 	<option value="${i.sort }" selected="selected">${i.name }</option>
			               		 	</c:if>
			               		 	<c:if test="${i.sort ne expert.category}">
				               		 	<option value="${i.sort }">${i.name }</option>
			               		 	</c:if>
			               		 </c:forEach>
			                </select>
			            </div>
			            <div class="form-group  col-md-12">
			                <label  style="width: 75px;"><span class="span-required">*</span>专家级别:</label>
			                <select class="form-control" id="expertLevel"  style="width: 26%;">
			               		 <option value="">---请选择---</option>
			               		  <c:forEach items="${expertLevel }" var="i">
			               		 	<c:if test="${i.sort eq expert.level}">
				               		 	<option value="${i.sort }" selected="selected">${i.name }</option>
			               		 	</c:if>
			               		 	<c:if test="${i.sort ne expert.level}">
				               		 	<option value="${i.sort }">${i.name }</option>
			               		 	</c:if>
			               		 </c:forEach>
			                </select>
			            </div>
			            <div class="form-group  col-md-12">
			                <label style="width: 75px;">专家介绍:</label>
			                <textarea  id="expertIntroduction"  class="form-control" maxlength="50" style="width: 70%;">${expert.introduction }</textarea>
			            </div>
		            </div>
		            <div id="inivestor" class="form-group  col-md-12" style="border-top: 1px solid #e7e7e7;padding-top: 30px;<c:if test="${empty inivestor }">display: none;</c:if>">
			            <input type="hidden" value="${inivestor.pkId }" id="inivestorId">
			            <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>工作单位:</label>
			                <input id="inivestorCompany" value="${inivestor.company }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>职务:</label>
							<input  id="inivestorJob"  value="${inivestor.job }" class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>			            </div>
			             <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>特长:</label>
			                <input  id="inivestorSpecial" value="${inivestor.special }"  class="form-control" placeholder="必填，50位以内" maxlength="50" style="width: 65%;"/>
			            </div>
			            <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>资历:</label>
			                <input  id="inivestorQualification" value="${inivestor.qualification }"  class="form-control" placeholder="" maxlength="50" style="width: 65%;"/>
			            </div>
			             <div class="form-group  col-md-5">
			                <label><span class="span-required">*</span>权限:</label>
			                <select style="width: 65%;"  class="form-control" id="inivestorPermission">
			               		 <option value="">---请选择---</option>
			               		 <c:forEach items="${inivestorPermission }" var="i">
			               		 	<c:if test="${i.sort eq inivestor.permission}">
				               		 	<option value="${i.sort }" selected="selected">${i.name }</option>
			               		 	</c:if>
			               		 	<c:if test="${i.sort ne inivestor.permission}">
				               		 	<option value="${i.sort }">${i.name }</option>
			               		 	</c:if>
			               		 </c:forEach>
			                </select>
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
			  </div></div>
	<!-- /.row -->
	<!--  页面 footer  的信息   -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<!--  本页面专用 -->
 <script type="text/javascript">
 //var count = '${adviceCount}';
 var categoryName = '';
 var name1 ='${users.userName}';
 var category1 ='${users.category}';
 var checkStatu1 ='${checkStatu}';
 var page ='${page}';
 $(function (){
	 var category = $('#category').val();
	 if(category == '3'){
		 categoryName = 'enterprise';
	 }else if(category == '4'){
		 categoryName = 'inivestor';
	 }else if(category == '5'){
		 categoryName = 'expert';
	 }
 });
 function chooseCategory(obj){
	 var category = $(obj).val();
	 if(categoryName != ''){
		 $('#'+categoryName+' input').val('');
		 $('#'+categoryName+' textarea').val('');
		 $('#'+categoryName+' select').val('');
	 }
	 if(category == '3'){
		 $('#expert').hide();
		 $('#inivestor').hide();
		 $('#enterprise').show();
		 categoryName = 'enterprise';
	 }else if(category == '4'){
		 $('#expert').hide();
		 $('#enterprise').hide();
		 $('#inivestor').show();
		 categoryName = 'inivestor';
	 }else if(category == '5'){
		 $('#inivestor').hide();
		 $('#enterprise').hide();
		 $('#expert').show();
		 categoryName = 'expert';
	 }else{
		 $('#inivestor').hide();
		 $('#enterprise').hide();
		 $('#expert').hide();
		 categoryName = '';
	 }
	 
 }
 </script>
 <script src="${ctxStatic}/js/user/form.js" type="text/javascript"></script>
</body>
</html>