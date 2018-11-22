<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
<style> 
.weui_input.my{
	font-size:16px;
	color:rgb(209,209.209);
	padding-left: 1em;
}
.weui_cell:before{
		width: 100%
}
.error_info{
	text-decoration:none;
	color:red;
	margin: 0;
	font-size: 1em;
	padding-left: 40px;
	font-family: 黑体;
	}
.weui_cell:before {
	width: 80% !important;
}
.weui_btn_primary{
	background-color: #418cfa;
}
.weui_cell{
	height:30px;
	width: 90%;
}
</style> 
<%@ include file="/WEB-INF/include/header.jsp"%>
 </head>
<body style="font-family:黑体；">
		<div class="box" style="padding: 10px;">
			<form role="form" action="${ctx}/login"  method="POST">
			<div class="" style="width:100%;padding: 8px;border: none;">
				<div class="weui_cell" style="">
					<img src="${ctxStatic}/images/login/user_head.png" alt="无" class="regiser_img" style="width: 30px;height: 30px;">
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input my" type="text" id="username" name="username" value="" onfocus="resetEmpty()" placeholder="请输入用户名或手机号" />
					</div>
				</div>
				<div class="weui_cell" style="">
					<img src="${ctxStatic}/images/login/pwd.png" alt="无" class="regiser_img" style="width: 30px;height: 30px;">
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input my" type="password"  id="password" name="password" value="" onfocus="resetEmpty()" placeholder="请输入密码" />
					</div>
				</div>
				<div class="weui_cell" style="">
				</div>
			</div>
			<div id="errorInfo"  class="" >
					<c:choose>  
  
					   <c:when test="${not empty error}">
					   		<p class="error_info">${error }</p>  
					   </c:when>  
					     
					   <c:otherwise>  
					   		<p class="error_info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					   </c:otherwise>  
					   
					</c:choose>  
				
			</div>
			<!--<div class="weui_cells_tips">底部说明文字底部说明文字</div>-->
			<div class="weui_btn_area" style="margin-top: 5%;">
				<input class="weui_btn weui_btn_primary " type="submit" value="登录" readonly="readonly"  onclick="return notnull()" id="showTooltips" onclick="" 
				style="width:90%;background-color:#418cfa;cursor: pointer;"></input>
			</div>
			<div class="login_foot" style="margin: 0 auto;margin-top: 20%;">
				<a href = "${ctx }/front/reg/toAddUser"  style="font-size:20px;text-decoration:none;color:#777373;font-family: 黑体;">没有账号？马上注册</a>
			</div>
			<div class="login_foot" style="margin: 0 auto;margin-top: 4%;">
				<a href = "${ctx }/front/reg/findPw" style="font-size:16px;text-decoration:none;color:#cfcfcf;font-family: 黑体;">忘记密码</a>
			</div>
			</form>
		</div>
	</body>
<%@ include file="/WEB-INF/include/footer.jsp"%>
<script>
			function notnull() {
				var username = $("#username").val();
				var password = $("#password").val();
				if (username == "" || password == "") {
					var _html = '<p class="error_info";">用户名或密码不能为空</p>'
					$("#errorInfo").html(_html);
					return false;
				}
				
			}
			function resetEmpty(){
				var _html = '<p class="error_info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>'
					$("#errorInfo").html(_html);
			}
	</script>
</html>