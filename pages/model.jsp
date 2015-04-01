<%@ page language="java"
	import="java.util.*"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setCharacterEncoding("utf-8");%>


<jsp:include page="top.jsp" />

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>zhuceSuccess.jsp</title>

</head>
<body>
	<% String path = request.getContextPath();%>
	用户注册成功！<br>
	<a href="<%=path%>/zhuce.jsp">重新注册</a>
	<a href="<%=path%>/index.jsp">返回主页</a>
</body>
</html>

<jsp:include page="bottom.jsp" />