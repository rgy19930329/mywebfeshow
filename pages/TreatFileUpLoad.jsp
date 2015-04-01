<%@ page language="java"
   import="java.util.*"
   import="com.jspsmart.upload.*"
   pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>
<html>
<head>
   	<meta content-type="text/html" charset="utf-8">
   	<title>处理上传</title>
</head>
<body>
	<%
		SmartUpload smart = new SmartUpload();
		smart.initialize(pageContext);
		smart.upload();
		smart.save("data");//存入名为data的文件夹中
		out.print("上传成功！");
		String path = request.getContextPath();
	%>
	<a href="<%=path%>/pages/break_record.jsp">返回break主页</a>

</body>
</html>