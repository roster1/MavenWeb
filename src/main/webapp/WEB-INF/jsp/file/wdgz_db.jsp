<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title></title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="41" background="images/table/right-top-bg.jpg"><img
				src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
				align="middle"><span class="txt-blue">我的工作&gt;&gt;待办</span></td>
		</tr>
	</table>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td><table width="100%" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray">&nbsp;</td>
					</tr>
					<tr>
						<td><table width="100%" border="1" align="center"
								cellpadding="2" cellspacing="0" bordercolorlight="#D4D4D4"
								bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
								style="word-break :break-all;">
								<tr bgcolor="#FBE9B7">
									<td width="8%" class="table-right-bottom-gray"><div
											align="center">
											<span class="txt-blue">选择</span>
										</div></td>
									<td width="53%" class="table-right-bottom-gray"><div
											align="center">
											<span class="txt-blue">考核标题</span>
										</div></td>
									<td width="20%" class="table-right-bottom-gray"><div
											align="center">
											<span class="txt-blue">起始时间</span>
										</div></td>
									<td width="19%" class="table-bottom-gray"><div
											align="center">
											<span class="txt-blue">结束时间</span>
										</div></td>
								</tr>

								<c:forEach items="${list }" var="map">
									<tr>
										<td class="table-right-bottom-gray"><div align="center">
												<input type="checkbox" name="docid"
													value="${map.get('DOCID') }">
											</div></td>
										<td class="table-right-bottom-gray" align="center"><a
											href="dbgz_khAccountList?docid=${map.get('DOCID') }"
											target="_top" class="txt-gray">${map.get('DOCNAME') }</a></td>
										<td class="table-right-bottom-gray" align="center"><span
											class="txt-gray">[<fmt:formatDate
													value="${map.get('CHECKTIME') }" pattern="yyyy-MM-dd"></fmt:formatDate>]
										</span></td>
										<td class="table-bottom-gray" align="center"><span
											class="txt-gray">[<fmt:formatDate
													value="${map.get('STOPTIME') }" pattern="yyyy-MM-dd"></fmt:formatDate>]
										</span></td>
									</tr>
								</c:forEach>

								<tr bgcolor="#F9F9F9">
									<td colspan="4" class="table-right-bottom-gray"><div
											align="center"></div>
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<%-- 
												<td width="8%"><div align="center"><input type="checkbox" name="checkbox16"
													value="checkbox"></div></td>
												--%>
												<td width="80%"><span class="txt-blue">&nbsp;选择全部</span></td>
												<td width="12%"><table align="right" cellpadding="0"
														cellspacing="0">
														<tr>
															<td><img src="images/button/an-left.jpg" width="18"
																height="21"></td>
															<td width="60" background="images/button/an-bg.jpg"
																class="txt-blue"><div align="center">全部删除</div></td>
															<td><img src="images/button/an-right.jpg" width="4"
																height="21"></td>
														</tr>
													</table></td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
