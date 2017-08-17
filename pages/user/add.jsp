<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/static/include/head.jsp"%>
	
	<script type="text/javascript">
		function oper_save() {
			form1.submit();
			return true;
		}
	</script>

</head>
<body>

	<form name="form1" action="user/save.htm" method="post" class="form-horizontal" >
		<input type="hidden" name="userid" value="0" />
		<table class="table">
			<% // 列表头部 %>
			<tr>
				<td>登陆名</td>
				<td>
				<input class="form-control" type="text" name="username" value="" required='required' />
				</td>
			</tr>
			<tr>
				<td>真实姓名</td>
				<td>
				<input class="form-control" type="text" name="realname" value=""  />
				</td>
			</tr>
			<tr>
				<td>角色</td>
				<td>
					<%-- 只有系统管理员可以改变别人权限 --%>
					<c:choose>
					<c:when test="${sessionScope.session_user.state!=3}">
							<select name="state"  class="form-control">
								<option value="1" ${model.state==1?"selected":"" }>系统管理员</option>
								<option value="2" ${model.state==2?"selected":"" }>出库管理员</option>
								<option value="3" ${model.state==3?"selected":"" }>入库管理员</option>
							</select>
					</c:when>
					<c:otherwise>
						<input type="hidden" name="state" value="${model.state}" >
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
					</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>
				<input class="form-control" type="text" name="email" value="${model.email }"  />
				</td>
			</tr>
			<tr>
				<td>手机号</td>
				<td>
				<input class="form-control" type="text" name="tel" value="${model.tel }"  />
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
				<button class="btn btn-default" onclick="return oper_save();">保 存</button>
				<button class="btn btn-default" onclick="closeIframe();">关 闭</button>
				</td>
			</tr>
		</table>
	</form>

</body>
