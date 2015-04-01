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
		out.print("对不起，识别码错误！");
	}else{
%>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>历史记录</title>

<link rel="stylesheet" type="text/css" href="../static/css/base.css">

<style type="text/css">

.title {
	font-size: 30px;
	font-family: "微软雅黑";
	padding: 10px;padding-bottom: 20px;
}

li {
	list-style: none;
	padding: 10px;
}

li img {
	width: 50px;height: 50px;
}

li p {
	font-size: 15px;
	font-family: "微软雅黑";
	color: #222;
}

.content_left {
	width: 340px;min-height: 56px;
	background: url("../static/img/private_right_content_left.png") top no-repeat;
	margin-top: 20px;margin-left: 10px;
}

.content_right {
	width: 340px;min-height: 56px;
	background: url("../static/img/private_right_content_right.png") top no-repeat;
	margin-right: 10px;margin-top: 20px;
}

.left_inner {
	margin-top: 15px;margin-left: 40px;
	padding: 5px;
	background-color: #405ac6;
}

.right_inner {
	margin-top: 25px;margin-right: 50px;
	background-color: #405ac6;
	padding: 5px;
}

.left_inner p,.right_inner p {
	white-space: pre-wrap;
}

.date {
	text-align: center;
}

</style>
</head>
<body>

	<%
		VisitorDao visitorDao = new VisitorDao();
		/*设置所需变量*/
		Connection conn=visitorDao.getConn();//建立连接
		PreparedStatement pmt=null;
		ResultSet rs=null;
	%>

	<p class="title">历史记录：</p>
	<div>
		<ul>
			<%	pmt=conn.prepareStatement("SELECT * FROM private_tb");
				rs=pmt.executeQuery();%>


			<%  while(rs.next()){
				String role=rs.getString(2);
				String message=rs.getString(3);
				String date=rs.getString(4); %>

			<%	if(role.equals("me")){ %>
				<li>
					<p class="date"><%=date%></p>
					<div class="fl"><img src="../static/img/me.jpg"></div>
					<div class="content_left fl">
						<div class="left_inner">
							<p><%=message%></p>
						</div>
					</div>
					<div class="cb"></div>
				</li>
			<%	} %>

			<%	if(role.equals("baby")){ %>
				<li>
				<p class="date"><%=date%></p>
				<div class="fr"><img src="../static/img/baby.jpg"></div>
				<div class="content_right fr">
					<div class="right_inner">
						<p><%=message%></p>
					</div>
				</div>
				<div class="cb"></div>
			</li>
			<%	} %>
			


			<% } %>

			
		</ul>
		
	</div>

<script type="text/javascript">

document.body.scrollTop = document.body.offsetHeight-document.body.clientHeight;

</script>

</body>
</html>

<% } %>