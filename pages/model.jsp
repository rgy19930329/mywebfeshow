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
	�û�ע��ɹ���<br>
	<a href="<%=path%>/zhuce.jsp">����ע��</a>
	<a href="<%=path%>/index.jsp">������ҳ</a>
</body>
</html>

<jsp:include page="bottom.jsp" />