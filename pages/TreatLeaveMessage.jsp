<%@ page language="java"
	import="java.util.*"
	import="com.rgy.bean.VisitorBean"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setCharacterEncoding("utf-8");%>

<% 
	ServletContext sc = this.getServletContext();
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");
    String date = new Date().toLocaleString();

    ////////////////////////////////////////////////////////////////
    VisitorBean visitor = new VisitorBean();
    visitor.setName(name);
    visitor.setEmail(email);
    visitor.setMessage(message);
    visitor.setDate(date);
    //
    VisitorDao visitorDao = new VisitorDao();
    boolean isInsert = visitorDao.isVisitorInsertSuccess(visitor);
    String path = request.getContextPath();
    if(isInsert==true){ %>
        <jsp:forward page="leaveMessageSuccess.jsp" />
<%  }else{ %>
        <jsp:forward page="leaveMessageFail.jsp" />
<%  } %>