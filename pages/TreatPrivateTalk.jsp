<%@ page language="java"
	import="java.util.*"
	import="com.rgy.bean.VisitorBean"
    import="com.rgy.bean.PrivateTalkBean"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setCharacterEncoding("utf-8");%>

<% 
	ServletContext sc = this.getServletContext();
    String role = (String)session.getAttribute("role");
    String message = request.getParameter("message");
    String date = new Date().toLocaleString();

    ////////////////////////////////////////////////////////////////
    PrivateTalkBean privateTalk = new PrivateTalkBean();
    privateTalk.setRole(role);
    privateTalk.setMessage(message);
    privateTalk.setDate(date);
    //
    VisitorDao visitorDao = new VisitorDao();
    boolean isInsert = visitorDao.isPrivateTalkInsertSuccess(privateTalk);
    
    if(isInsert==true){ 
        String path = request.getContextPath();
        response.sendRedirect(path+"/pages/break_private_left.html");
    }else{
        out.print("悄悄话发送失败！");
        out.print(role+","+message+","+date);
    }
%>