<%@page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<title>仓库管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- //favicon.ico小图标名称 --%>
<link rel="icon" href="favicon.ico"/>
<link rel="shortcut icon" href="favicon.ico"/>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="仓库管理">
<meta http-equiv="description" content="仓库管理">
<%-- jquery --%>
<script type="text/javascript" src="static/jquery/jquery-1.8.2.min.js"></script>

<link href="static/styles/login.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function login() {
		form1.action = "login.htm";
		form1.submit();
		// submit_js("login_login.action", "loginform");
	}
	
	<%-- jQuery 当键盘敲击【ENTER】键时，系统登录 --%>
	$(document).ready(function() {
		$(".main").keydown(function(event) {
			if (event.which == 13) {
				login();
			}
		});
	});
</script>
</head>

<body>
	<form id="form1" method="post">
		<div class="main">
			<div class="top"></div>
			<div class="middle">
				<div class="left"></div>
				<div class="center">
					<p class="t" align="center">欢迎访问仓库管理</p>
					<ul>
						<li><span class="label_txt">用户名：</span><input tabindex="1"
							class="input_txt" name="username" maxLength="20"
							autofocus="autofocus" placeholder="请输入用户名" />
						</li>
						<li><span class="label_txt">密&emsp;码：</span><input tabindex="2"
							type="password" class="input_txt" name="password"
							maxLength="20" placeholder="请输入密码" />
						</li>
						<li><span class="label_txt"></span><span
							style="font-size: 12px; color: red">${requestScope.msg}</span></li>
						<li class="btnLi"><span class="label_txt"></span><a href="javascript:void(0)" onclick="login();" tabindex="4"
							class="btn" onmouseover="this.className='btn_over';"
							onmouseout="this.className='btn';">登录</a>
						</li>
					</ul>
				</div>
				<div class="right"></div>
			</div>
			<div class="bottom"></div>
		</div>
		<!--<div class="logo">欢迎访问仓库管理</div>-->
		<!-- 
		<div class="gis"></div>
		 -->
		<!--<div class="earth"></div>-->
	</form>
</body>
</html>

