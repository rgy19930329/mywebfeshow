<%@ page language="java"
	import="java.util.*"
	import="javax.naming.*"
	import="java.sql.*"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>
	
<% 	if(!"loginsuccess".equals(session.getAttribute("LoginFlag"))){
		out.print("对不起，你没有管理员权限！");
	}else{
%>

<!DOCTYPE>	
<html>
<head>
<meta content="text/html; charset=utf-8" />
<title>访客留言板</title>

<style type="text/css">

*{margin: 0;padding: 0}

body {
	background:linear-gradient(to left, #eee 0, #777 100%),#ddd;
}

.cb {
	clear: both;
}

/*================*/

.middle {
	width: 1000px;
	margin: 0 auto;
}

.h_title {
	text-align: center;
	font-size: 50px;
	font-family: "微软雅黑";
	line-height: 120px;
}

li{
	list-style-type: none;
	width: 450px;height: 200px;
	border: 1px solid #aaa;
	float: left;
	margin-left: 20px;margin-right: 20px;margin-bottom: 40px;
	border-radius: 10px;
}

.title {
	background:linear-gradient(to left, #00BBFF 0, #99ffaa 100%),#33CCFF;
	height: 35px;line-height: 35px;
	border-radius: 10px 10px 0 0 ;
}

.title span {
	font-size: 20px;
	font-family: "微软雅黑";
}

.name {
	float: left;
	padding-left: 10px;
}

.email {
	float: right;
	padding-right: 10px;
}

.date {
	float: right;
	padding-right: 10px;
}

.panel {
	height: 40px;
	background-color: #ddd;
	border-radius: 0 0 10px 10px;
}

.panel p {
	line-height: 40px;
}

.panel span {
	font-family: "微软雅黑";
	font-size: 13px;
}

.del {
	padding-left: 10px;
	font-family: "微软雅黑";
	color: orange;
}

.del:hover {
	font-size: 20px;
}

.content {
	height: 125px;
	overflow-y: auto;
}

.content p {
	font-family: "华文行楷";
	font-size: 20px;
}

.content_inner {
	padding: 5px;
}

</style>

</head>
<body>
<% String path = request.getContextPath();%>

<div class="head">
	<div class="middle">
		<p class="h_title">访客留言板</p>
	</div>
</div>

	<%
		VisitorDao visitorDao = new VisitorDao();
		/*设置所需变量*/
		Connection conn=visitorDao.getConn();//建立连接
		PreparedStatement pmt=null;
		ResultSet rs=null;
	%>

<div class="main">
	<div class="middle">
		<ul>
			<%	pmt=conn.prepareStatement("SELECT * FROM visitor_tb");
				rs=pmt.executeQuery();%>
			

		<%  while(rs.next()){
				String id=rs.getString(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String message=rs.getString(4);
				String date=rs.getString(5);
				%>

			<li>
				<p class="title">
					<span class="name"><%=name%></span>
					<span class="email"><%=email%></span>
					<div class="cb"></div>
				</p>
				<div class="content">
					<div class="content_inner">
						<p><%=message%></p>
					</div>
				</div>
				<div class="panel">
					<p>
						<a class="del" href="<%=path%>/pages/DeleteMessage.jsp?del_id=<%=id%>" >删除</a>
						<span class="date"><%=date%></span>
					</p>
				</div>
			</li>

		<% } %>

		<% 	/*关闭各种资源*/
			rs.close();
		 	pmt.close();
			conn.close();
		%>

			<div class="cb"></div>
		</ul>
	</div>
</div>

</body>
</html>

<% } %>