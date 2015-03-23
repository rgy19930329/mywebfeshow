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
    int id_num = Integer.parseInt(request.getParameter("del_id"));

    ////////////////////////////////////////////////////////////////
    VisitorDao visitorDao = new VisitorDao();
    //删除留言
    boolean isDel = visitorDao.delVisitorInfo(id_num);
    if(isDel==true){//如果删除成功
        String path = request.getContextPath();
        response.sendRedirect(path+"/pages/messageHandler.jsp");
    }else{
        out.print("fail!");
    }
%>