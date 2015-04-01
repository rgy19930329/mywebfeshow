<%@ page language="java"
	import="java.util.*"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setCharacterEncoding("utf-8");%>

<% 
    String key = request.getParameter("key");
    ////////////////////////////////////////////////////////////////
    String path = request.getContextPath();
    if(key.equals("19940509")){
        session.setAttribute("role", "baby");
        session.setAttribute("CheckFlag", "checksuccess");
        response.sendRedirect(path+"/pages/break_private.jsp");
    }
    
    if(key.equals("19930329")){
        session.setAttribute("role", "me");
        session.setAttribute("CheckFlag", "checksuccess");
        response.sendRedirect(path+"/pages/break_private.jsp");
    }

    out.print("对不起，您输入的识别码不正确！");
%>