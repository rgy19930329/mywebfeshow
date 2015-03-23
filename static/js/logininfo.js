var isAdminLogin = false;
var logininfo = null;
<% 	if(!"loginsuccess".equals(session.getAttribute("LoginFlag"))){ %>
		logininfo = "<p id='logininfo'>未登录</p>";
		isAdminLogin = false;
<%	}else{ %>
		logininfo = "<p id='logininfo'>已登录</p>";
		isAdminLogin = true;
<%	}	%>

$(".neck").append(logininfo);
$("#logininfo").css({
	"width": "50px",
	"position": "absolute",
	"right": "30px",
	"top": "35px",
	"font-weight": "bold",
});