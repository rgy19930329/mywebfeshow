<%@ page language="java"
	import="java.util.*"
	import="com.rgy.bean.VisitorBean"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setCharacterEncoding("utf-8");%>

<% 
    String admin_key = request.getParameter("admin_key");
    ////////////////////////////////////////////////////////////////
    if(admin_key.equals("......yy67210573")){
        session.setAttribute("LoginFlag", "loginsuccess");
        String path = request.getContextPath();
        response.sendRedirect(path+"/pages/break_record.jsp");
    }else{
        out.print("Login Fail! The key is not correct!");
    }
%>