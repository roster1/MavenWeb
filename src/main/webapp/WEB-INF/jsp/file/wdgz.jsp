<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>新疆移动绩效考核系统</title>
<link href="css/css.css" rel="stylesheet" type="text/css">

</head>

<body>
	<table align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td><img src="images/top-pic.jpg" width="993" height="133"></td>
		</tr>
		<tr>
			<td height="30" background="images/table/top-menu-bg.jpg"><table
					width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td width="118" height="30"
							background="images/button/top-menu-on.jpg"><div
								align="center">
								<a href="file/wdgz.jsp" class="txt-blue"><strong>我的工作</strong></a>
							</div></td>
						<c:if
							test="${sessionScope.account.getRights().contains('tjcx.jsp') }">
							<td width="110" height="30"
								background="images/button/top-menu-off.jpg"><div
									align="center">
									<a href="file/tjcx.jsp" class="txt-gray">统计查询</a>
								</div></td>
						</c:if>
						<c:if
							test="${sessionScope.account.getRights().contains('xtgl.jsp') }">
							<td width="110" height="30"
								background="images/button/top-menu-off.jpg"><div
									align="center">
									<a href="file/xtgl.jsp" class="txt-gray">系统管理</a>
								</div></td>
						</c:if>
						<td valign="middle"><div align="right">
								<span class="txt-gray">&nbsp;</span>
							</div></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td><table cellspacing="0" cellpadding="0">
					<tr>
						<td valign="top" background="images/table/left-menu-bg.jpg"><table
								cellspacing="0" cellpadding="0">
								<tr>
									<td><img src="images/table/left-menu-top.jpg" width="186"
										height="50"></td>
								</tr>
								<tr>
									<td width="186" height="33"
										background="images/button/left-menu-an-bg.jpg"><div
											align="center">
											<img src="images/ico/left-menu-ico.gif" width="9" height="9"
												hspace="6" align="absmiddle"><a
												href="dbgz_dbList.action" target="Middle" class="txt-blue">待办</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div></td>
								</tr>
								<tr>
									<td height="33" background="images/button/left-menu-an-bg.jpg"><div
											align="center">
											<img src="images/ico/left-menu-ico.gif" width="9" height="9"
												hspace="6" align="absmiddle"><a
												href="file/wdgz_yb.jsp" target="Middle" class="txt-blue">已办</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div></td>
								</tr>
								<tr>
									<td height="33" background="images/button/left-menu-an-bg.jpg"><div
											align="center">
											<img src="images/ico/left-menu-ico.gif" width="9" height="9"
												hspace="6" align="absmiddle"><a
												href="file/wogz_gz.jsp" target="Middle" class="txt-blue">跟踪</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div></td>
								</tr>

								<c:if
									test="${sessionScope.account.getRights().contains('qckh_khList.action') }">
									<tr>
										<td height="33" background="images/button/left-menu-an-bg.jpg"><div
												align="center">
												<img src="images/ico/left-menu-ico.gif" width="9" height="9"
													hspace="6" align="absmiddle"><a
													href="qckh_khList.action" target="Middle" class="txt-blue">起草考核</a>&nbsp;&nbsp;
											</div></td>
									</tr>
								</c:if>

								<tr>
									<td><img src="images/table/left-menu-bottom.jpg"
										width="186" height="19"></td>
								</tr>
							</table></td>
						<td width="808" valign="top"><table width="100%"
								align="right" cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<div align="right">
											<iframe src="dbgz_dbList.action" width="100%" marginwidth="0"
												marginheight="0" frameborder="0" scrolling="yes"
												align="middle" name="Middle" id="Middle" height="450"></iframe>
										</div>
									</td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="21"><img src="images/table/bottom-pic.jpg"
				width="993" height="37"></td>
		</tr>
		<tr>
			<td height="40"><p align="right" class="txt-gray">中国移动通信集团新疆有限公司版权所有
					（ Copyright (C) 2004-2005 ）</p></td>
		</tr>
	</table>
</body>
</html>
