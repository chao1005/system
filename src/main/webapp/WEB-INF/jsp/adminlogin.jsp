<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style> 
</style> 
<%@ include file="/WEB-INF/includepc/header.jsp"%>
 <link href="${ctxStatic}/css/login.css" rel="stylesheet">
 <style type="text/css">

 
</style>

 </head>
<body style="background-color: white;" >
	<!--头部-->
<nav class="nav" style="margin-top: 60px;"> 
	<div class="container">
		<div class="row">
			<div class="col-md-12 logo">
				<img src="${ctxStatic}/images/logo.png"/>
				<span>欢迎使用</span>
			</div>
		</div>
	</div>
</nav>

<section class="section">
	<div class="cover-paddingTop">
   	 	<img src="${ctxStatic}/images/login.png" class="bg-jiajubang"/>
	    <div class="login">
			<div class="header">
		        <div class="switch" id="switch">
		        	<a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">登录</a>
		        </div>
		    </div>    
		        <div class="web_qr_login-1"></div>
		    <div class="web_qr_login" id="web_qr_login">    
		        <!--登录-->
		        <div class="web_login" id="web_login">
		           <div class="login-box">
						<div class="login_form">
							<form class="form-horizontal"    method="POST" action="${ctx}/login" role="form">
								<div class="row userdiv">
									<div class="col-md-12">
										<input type="text" style="width: 80%" class="form-control" id="username" name="username" placeholder="请输入账号/手机号">
									</div>
								</div>
								
								<div class="row passdiv">
									<div class="col-md-12">
										<input type="password" style="width: 80%" class="form-control" id="password" name="password" placeholder="请输入密码">
									</div>
								</div>
								<div class="row passdiv">
									<div class="col-md-12">
										 <p  id="error" class="liw-p3"  style="color:red;">${error}</p>
									</div>
								</div>
								
								<div class="row logindiv">
									<div class="col-md-12">
										<button type="submit" class="btn btn-info btn-block" style="width: 80%;border-radius: 0;">登录</button>
									</div>
								</div>
							</form>
			           </div>
		        	</div>
		        </div>
	        <!--登录end-->
		  </div>
		
		</div>
 	</div>
	
</section>
</body>
<%@ include file="/WEB-INF/includepc/footer.jsp"%>

</html>