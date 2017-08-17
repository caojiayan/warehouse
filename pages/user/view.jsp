<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/static/include/head.jsp"%>
</head>
<body>
	<form name="form1" action="" method="post" class="form-horizontal" role="form">
		<!-- 数据列表 -->
		<table class="table">
			<%  // 列表头部 %>
				<tr>
		<td>登陆名</td>
		<td>${model.username}</td>
	</tr>
	<tr>
		<td>真实姓名</td>
		<td>${model.realname}</td>
	</tr>
	<tr>
		<td>角色</td>
		<td>
		<c:choose>
			<c:when test="${model.state==1}">
					系统管理员
			</c:when>
			<c:when test="${model.state==2}">
					出库管理员
			</c:when>
			<c:otherwise>
					入库管理员
			</c:otherwise>
		</c:choose>
		</td>
	</tr>
	<tr>
		<td>密码</td>
		<td>${model.password}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${model.email}</td>
	</tr>
	<tr>
		<td>手机号</td>
		<td>${model.tel}</td>
	</tr>

			
			<tr>
				<td colspan="2" align="center">
				<button class="btn btn-default" onclick="closeIframe();">关 闭</button>
				</td>
			</tr>
		</table>
	</form>

</body>
