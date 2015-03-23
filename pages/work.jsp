<%@ page language="java"
	import="java.util.*"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setCharacterEncoding("utf-8");%>

<!DOCTYPE HTML>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Kylin work</title>

<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="work_ie.css" media="screen">
<![endif]-->
<style type="text/css">
/*=============================================*/
@import url("../static/css/work_page.css");
@import url("../static/css/work_style.css");

.pl5 {
	padding-left: 5px;
}

.bg_manager {
	padding: 20px;
	border: 1px solid #880000;
}

.bg_manager div {
	width: 200px;
	margin: 0 auto;
}

.key_input {
	width: 200px;line-height: 30px;height: 30px;
	font-size: 20px;
	font-family: "微软雅黑";
	text-align: center;
}

.manager {
    background-color: #C63300;
	width: 200px;line-height: 30px;height: 35px;
	font-size: 16px;
	cursor: pointer;
	font-family: "微软雅黑";
	color: #fff;
	transition:all 200ms ease-in; 
}

.manager:hover {
	background-color: #A42D00;
}

</style>

<script type="text/javascript" src="../static/js/cufon-yui.js"></script>
<script type="text/javascript" src="../static/js/Desyrel_400.font.js"></script>

<script type="text/javascript" src="../static/js/jquery-1.8.2.min.js"></script>


</head>

<body>
<div id="pagewrap">
	<div id="header">
		<ul id="navigation">
			<li><a class="about" href="#about"><img src="../static/img/icon-about.png" alt="About"></a></li>
			<li><a class="work" href="#work"></a></li>
			<li><a class="contact" href="#contact"><img src="../static/img/icon-contact.png" alt="Contact"></a></li>
		</ul>
	</div>
	
	<div id="content">
		<div id="about" class="page">
			<div class="left">
				<img src="../static/img/author-photo.png" alt="photo">
			</div>
			<div class="right">
				<h2>Hello! Welcome to my site...</h2>
				
				<p>姓名：<span>rgy1993</span></p>
				<p>昵称：<span>Kylin</span></p>
				<p class="w380">籍贯：重庆
				<span class="fr hanzi">民族：汉</span></p>
				<p>学校：<a target="_blank" href="http://www.csuft.edu.cn/">中南林业科技大学</a>  软件工程</p>
			</div>
		</div>

		<div id="work" class="page">
			<div class="left">
				<img src="../static/img/image-feature.png" alt="rgy1993">
			</div>
			<div class="right">
				<h3>Kylin</h3>
				<div class="work_content">
					<div class="waveWinA">
						<ul>
							<li class="p10"></li>
							<li><a target="_blank" href="webfe_clone.html"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;Web Front End</a></li>
							<li><a target="_blank" href="javaee_mynote.html"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;JavaEE</a></li>
							<li><a target="_blank" href="android_original.html"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;Android</a></li>
							<li><a target="_blank" href="http://blog.csdn.net/u011700203/article/details/38793873"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;Linux shell</a></li>
							<li><a target="_blank" href="http://blog.csdn.net/u011700203/article/details/25116471"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;C语言</a></li>
							<li><a target="_blank" href="http://blog.csdn.net/u011700203/article/details/38473251"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;C++</a></li>
							<li><a target="_blank" href="http://blog.csdn.net/u011700203/article/details/26398443"><span>--></span>&nbsp;&nbsp;&nbsp;&nbsp;Java</a></li>
							<li class="p10"></li>
						</ul>	
					</div>
				</div>
				<h3>blog: <a target="_blank" href="http://blog.csdn.net/u011700203?viewmode=list">http://blog.csdn.net/u011700203?viewmode=list</a></h3>
			</div>
		</div>

		<div id="contact" class="page">
			<div class="left">
			<h3>Drop me a note</h3>
				<% String path = request.getContextPath();%>
				<form method="post" action="TreatLeaveMessage.jsp" onsubmit="return check();">
					<ul>
						<li class="msgname">
							<label for="Name">尊姓大名: </label>
							<input type="text" name="name" id="name" class="pl5">
						</li>
						<li>
							<label for="Email">电子邮箱: </label>
							<input type="text" name="email" id="email" class="pl5">
						</li>
						<li>
							<label for="Message">对我说点什么（请少于200字）: </label>
							<textarea name="message" id="message" rows=2 cols=2></textarea>
						</li>
						<li>
							<input class="send" type="submit" value="发送">
						</li>
					</ul>
				</form>
			</div>
			<div class="right">
				<div id="contactinfo">
					<p>Chong Qing - Yu Bei</p>
					<p>phone: 15574988521</p>
					<p><a href="http://www.baidu.com/s?wd=%E9%82%AE%E7%AE%B1%E7%99%BB%E9%99%86&ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&rsv_pq=e55217bf00219fed&rsv_t=ddd5GYaIZ9ej%2BazZz8eUL%2F%2B%2FFiIv7Y889UWQ7B8Cc8fZWWygl5LpypJdTGU&bs=css3%20%E6%96%87%E5%AD%97%E7%89%B9%E6%95%88">email: 593289488@qq.com</a></p>
					<div class="bg_manager">
						<form action="TreatAdminLoginLM.jsp" method="post">
							<div>
								<input type="text" name="admin_key" class="key_input" placeholder="管理员密钥" />
							</div>
							<div>
								<input type="submit" value="后台管理登录" class="manager" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="index">
			<a href="../index.html"><img src="../static/img/paper2.png" class="paper paper1" /></a>
		</div>
		
		<div class="break">
			<a href="break_record.jsp"><img src="../static/img/paper1.png" class="paper paper2" /></a>
		</div>
	</div>

	<div id="footer">
		<p>Copyright © 2015&nbsp;&nbsp;&nbsp;<a target="_blank" href="#">Kylin</a></p>
	</div>
</div>

<script type="text/javascript">
function check(){
	
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var message = document.getElementById("message").value;

	if(name == ""){
	    alert("姓名不能为空!");
	    return false;
	}

	if(email == ""){
	    alert("邮箱不能为空!");
	    return false;
	}

	if(message == ""){
	    alert("留言信息不能为空!");
	    return false;
	}

	var length = message.length;
	if(length>200){
		alert("留言信息不能超过200个字符!");
	    return false;
	}

	return true;
}

</script>

<script type="text/javascript">
/*======================================================*/
$(".index").mouseenter(function(){
	$(".paper1").fadeIn();
});

$(".index").mouseleave(function(){
	$(".paper1").fadeOut();
});

$(".break").mouseenter(function(){
	$(".paper2").fadeIn();
});

$(".break").mouseleave(function(){
	$(".paper2").fadeOut();
});

</script>



<script type="text/javascript">
	$(document).ready(function(){
		Cufon.replace('#about .right ul li');
		Cufon.replace('h2', { textShadow: '0 2px rgba(0, 0, 0, 0.15)' });
		Cufon.replace('#social .right a', {hover:true});
		Cufon.replace('#work .left h3', {hover:true});
		Cufon.replace('h3', { textShadow: '0 2px rgba(0, 0, 0, 0.15)' });
		Cufon.replace('#contactinfo'), {hover:true};
	});
</script>

<!-- Navigation and Content effects -->
<script type="text/javascript">
	$(document).ready(function(){
		$('.page').hide();
		$('#navigation li:first').addClass('active').show();
		$('.page:first').show();
		
		$('#navigation li').click(function(){
			$('#navigation li').removeClass('active');
			$(this).addClass('active');
			
			$('.page').hide();
			var activeTab = $(this).find('a').attr('href');
			$(activeTab).fadeIn('slow');
			return false;
		});
	});
</script>

</body>
</html>
