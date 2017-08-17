<%@ page language="java" pageEncoding="UTF-8"%>
<style>
body { 
	min-width: 980px;
	padding-top: 60px; 
	}
ul.navReset{
	width: 9%;
	position: relative;
	top: -20px;
}
ul.navReset li{
	width: 100%;
	display: inline !important;
}
ul.navReset li a{
	font-weight: bold;
	background-color: #E9E9E9;
	margin: 2px 0;
	color: #387CB7;
	text-align: center;
}

ul.navReset li.active a{
	background-color: #387CB7;
	color: #fff;
}
ul.navReset li#page_goods a{
	margin-top: 4px;
}
</style>
<script type="text/javascript">
	function showMenu(id){
		$("#"+id).addClass('active');
	}

</script>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" style="font-weight: bold; font-size: 22px;color: #387CB7;" href="#" onclick="return false;">仓储管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right" style="margin-right: 2%">
        <li><p class="navbar-text">${sessionScope.session_user.realname }，您好</p></li>
        <li><button type="button" onclick="window.location.href='logout.htm'" class="btn btn-default navbar-btn" style="background-color:#387CB7;color: #fff;box-shadow: none;background-image: none;border-color:#387CB7;">退出</button></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<ul class="nav navbar-nav navReset">
      	<c:choose>
			<c:when test="${sessionScope.session_user.state==3}">
			<li id="page_goodsdetail_in"><a href="goodsdetail/list.htm?attr['type']=1">入库管理</a></li>
			<li id="page_goods_check"><a href="goods/check.htm">盘存管理</a></li>
			</c:when>
			<c:when test="${sessionScope.session_user.state==2}">
			<li id="page_goodsdetail_out"><a href="goodsdetail/list.htm?attr['type']=2">出库管理</a></li>
			<li id="page_goods_check"><a href="goods/check.htm">盘存管理</a></li>
			</c:when>
			<c:otherwise>
			<li id="page_goods"><a href="goods/list.htm">物资管理</a></li>
			<li id="page_goodsdetail_in"><a href="goodsdetail/list.htm?attr['type']=1">入库管理</a></li>
			<li id="page_goodsdetail_out"><a href="goodsdetail/list.htm?attr['type']=2">出库管理</a></li>
			<li id="page_goods_check"><a href="goods/check.htm">盘存管理</a></li>
			<li id="page_dict"><a href="dict/list.htm">系统管理</a></li>
			<li id="page_user"><a href="user/list.htm">用户管理</a></li>
			</c:otherwise>
		</c:choose>
      	
     </ul>
    