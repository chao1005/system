<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/taglib.jsp"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="header-up" style="overflow: hidden;background-color:#1C83DB;">
		<div class="navbar-header liw-navbar-header" style="margin-top: 5px;">
			<div style="float: left;margin-top: 5px;padding-left: 20px;"><img src="${ctxStatic}/images/logo.png" style="width: 200px"/></div>
			<div class="liw-title" style="color: white;font-size: 16px;float: left;margin-left: 30px;border-left: 1px solid white;margin-top: 10px;margin-bottom: 10px;padding-left: 20px;">
				<p>内蒙古股权交易中心后台管理系统</p>
			</div>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right" style="color: white;height: 50px;line-height: 50px;">
			<!-- /.dropdown -->
			<li class="dropdown"><img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/hy.png"/>欢迎您管理员</li>
			<li class="dropdown"><a style="color: #fff;" href="${ctx}/logout" ><img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/zx.png"/>注销 </a></li>
			<!-- /.dropdown -->
		</ul>
	</div>
	<!-- /.navbar-top-links -->
	<!-- liw add img start -->
	<!-- /.navbar-static-side -->
</nav>
<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li>
					<ul class="nav nav-second-level  collapse in" >
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/user/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>用户管理</a>
						</li>
						<%-- <li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/expert/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>专家管理</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/enterprise/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>企业管理</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/inivestor/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>投资者管理</a>
						</li> --%>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/roadshow/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>路演项目管理</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/expert/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>专家排班信息</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/enterprise/list');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>企业预约信息</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/expert/listTj');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>专家评价统计</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/valuation/statistics');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>企业估值统计</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/statistics/chatStatistics');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>教练陪跑对接成功统计</a>
						</li>
						<li>
							<a class="menuResource" herf="#" style="border-bottom: 1px solid #e7e7e7;"
							onclick="changeIFrame(this,'${ctx }/statistics/roadshowStatistics');">
							<img style="width: 18px;margin-bottom: 2px;" src="${ctxStatic}/images/yh.png"/>路演对接成功统计</a>
						</li>
					</ul>
				</li>
				<%-- <c:forEach var="resource" items="${resources}">
					<c:if test="${resource.level eq 1 }">
						<li><a href="javascript:void((0)"><i
								class="${resource.icon}"></i>${resource.name }<span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<c:forEach var="child" items="${resources}">
									<c:if
										test="${ child.level eq 2 && child.parent.id eq resource.id }">
										<li>
											<!--  --> <a class="menuResource" herf="#"
											onclick="changeIFrame(this,'${ctx }${child.url }');">
											<i class="glyphicon glyphicon-play"></i>${child.name }</a>

										</li>

									</c:if>
								</c:forEach>
							</ul></li>
					</c:if>
				</c:forEach> --%>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>

