<%@ page language="java"
	import="java.util.*"
	import="javax.naming.*"
	import="java.sql.*"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>
	
<% 	if(!"checksuccess".equals(session.getAttribute("CheckFlag"))){
		out.print("对不起，识别码错误或者会话已过期，请重新登录！");
		out.print("<a href='login.jsp'>返回登录页面</a>");
	}else{
%>


<!DOCTYPE HTML>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>好好说句悄悄话 baby and me</title>
<script src="../static/js/jquery-1.8.2.min.js"></script>

<style type="text/css">
@import url("../static/css/base.css");
@import url("../static/css/break_private.css");
</style>

<!--

<link href="" rel="stylesheet" type="text/css" />

-->


<style type="text/css">
/*=============================================*/
.f_style {
	width: 490px;height: 500px;
	border: 1px solid #aaa;
	margin-top: 30px;
}



/*=============================================*/
</style>

</head>
<body>
	<div class="neck">
		<div class="middle">
			<a href="../index.html"><img src="../static/img/logo.png" class="neck_logo" /></a>
			<p class="neck_p1">
				<a href="break_record.jsp">走过的路</a>
				<a href="break_novel.html">看过的小说</a>	
				<a href="" class="neck_selected">悄悄话</a>	
			</p>

			<p class="neck_p2">
				<input type="text" class="neck_search" />
				<img src="../static/img/search.png" class="img_search" />
				<a href="login_admin.html" class="ml20">admin登录</a>
				<a href="register.html">注册</a>
			</p>
			<div class="cb"></div>
		</div>
	</div>

	<div class="main">
		<div class="middle">
			<iframe src="break_private_left.html" class="f_style"></iframe>
			<iframe src="break_private_right.jsp" name="right_win" class="f_style"></iframe>
		</div>
	</div>

	<div class="foot">
		<div class="middle">
			<p>Copyright © 2015   <a href="work.jsp">Kylin</a></p>
		</div>
	</div>


<script src="../static/js/shadow_expand.js"></script>

<script type="text/javascript">
/*======================================================*/



/*======================================================*/

</script>


</body>
</html>

<% } %>