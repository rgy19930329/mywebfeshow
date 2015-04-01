<%@ page language="java"
	import="java.util.*"
	import="javax.naming.*"
	import="java.sql.*"
	import="com.rgy.dao.VisitorDao"
	pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>

<!DOCTYPE HTML>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TIME AND STEP “岁月之门”</title>
<script src="../static/js/jquery-1.8.2.min.js"></script>

<style type="text/css">
@import url("../static/css/base.css");
@import url("../static/css/break_record.css");
</style>

<!--

<link href="" rel="stylesheet" type="text/css" />

-->


<style type="text/css">
/*=============================================*/

.temp p {
	text-align: center;
	line-height: 500px;
	font-size: 80px;
}

#upload {
	position: fixed;
	right: 50px;top: 150px;
	width: 100px;height: 40px;
	font-size: 20px;
	font-family: "微软雅黑";
	display: none;
}


.wrap p {
	font-family: "微软雅黑";
	padding: 10px;
}

.wrap {
	position: absolute;
	width: 500px;min-height: 100px;
	background-color: #eee;
	padding: 10px;
	top: -100px;left: 50%;
	margin-top: -100px;margin-left: -250px;
	z-index: 10;
}

.title {
	font-size: 22px;
}

#data {
	width: 100%;height: 50px;
	border: 1px solid #aaa;
	cursor: pointer;
}

.btn {
	width: 120px;height: 50px;
	font-family: "微软雅黑";
	font-size: 20px;
}

#mask {
	position: fixed;
	background-color: #000;
	opacity: 0.5;
	z-index: 5;
	top: 0;left: 0;right: 0;bottom: 0;
	display: none;
}

/*=============================================*/
</style>

</head>
<body>

	<input type="button" value="上传" id="upload">

	<div id="mask"></div>
	<div class="wrap" id="wrap">
		<form action="TreatFileUpLoad.jsp" method="post" enctype="multipart/form-data">
			<p class="title">请选择要您要上传的文件:</p>
			<p><input type="file" name="data" id="data"></p>
			<p><input type="submit" value="上传" class="btn fl">
				<input type="button" value="取消" class="btn fr" id="cancel">
				<span class="cb"></span>
			</p>
		</form>
	</div>

	<div class="neck">
		<div class="middle">
			<a href="../index.html"><img src="../static/img/logo.png" class="neck_logo" /></a>
			<p class="neck_p1">
				<a href="#" class="neck_selected">走过的路</a>
				<a href="break_novel.html" >看过的小说</a>	
				<a href="login.html">悄悄话</a>	
			</p>

			<p class="neck_p2">
				<input type="text" class="neck_search" />
				<img src="../static/img/search.png" class="img_search" />
				<a href="login_admin.html" class="ml20">admin登录</a>
				<a href="register.html">注册</a>
			</p>
			<div class="cb"></div>
		</div>
	</div>

	<div class="main">
		<div class="middle">
			<p class="item_title">TIME AND STEP “岁月之门”</p>
			<div class="middle_content">
				<ul id="record_info">
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">休息了几天，又该干活儿了，哇卡卡</p>
									<p class="p_info">网站完善中……后台也需要搞起洒</p>
									<p class="p_info">把网站的文件重新部署中……我戳，文件放得太乱了，要不得哇</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">2015-2-1</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_time">
								<p class="time_style">2015-1-20</p>
							</div>
						</div>
						<div class="list_right">
							<div class="right_info">
								<div class="right_info_inner">
									<p class="p_info">这么多天的努力总算有点成果了，整个网站前端的框架基本上已经搭建好了，23号version_1.2应该能出来了吧。</p>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">在小超哥的帮助下，今天成功的将我人生中的第一个样本网站上传到了服务器上，心情还是有点小激动的<a href="../index.html">mywebfeshow.sinaapp.com</a>。^_^</p>
									<p class="p_info">从这个名字可以看出来，我只是想把web前端的一些作品展示出来，免得以后多了不好管理。至于到底能做成什么样子呢？？我怎么知道……</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">2015-1-16</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_time">
								<p class="time_style">2015-1-7</p>
							</div>
						</div>
						<div class="list_right">
							<div class="right_info">
								<div class="right_info_inner">
									<p class="p_info">事情做完了的感觉，真好！我的<a href="android_original.html">EPlayer</a>，总算能把你扔进硬盘里了……</p>
									<p class="p_info">话说音乐播放的精细控制时Service与Activity之间发广播真的是绕得我头都晕了#￥@%…@￥*，搞了大半天</p>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">暗无天日中……“代码就是我的灵魂”，咔咔，让我放肆一下吧，真的受不了啦。。。视力估计已经勇登400，向500冲刺了吧</p>
									<p class="p_info">程序员的世界里没有晴天，也没有下雨；没有圣诞，更没有元旦……想着宾馆老板咧开的嘴角，我如是感叹道。</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">2015-1-1</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_time">
								<p class="time_style">2014-12-20</p>
							</div>
						</div>
						<div class="list_right">
							<div class="right_info">
								<div class="right_info_inner">
									<p class="p_info">今天真是个让人纠结的日子，哎，苗哥，起床，说好的一起去考六级呢？？你咋放我鸽子捏</p>
									<p class="p_info">明知不可为而为之，我真的觉得我有种“视死如归”的气魄，不由得被自己小小的感动了一把。</p>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">今天真是个稀里糊涂的日子，科目三就这样稀里糊涂的挂了，挂了……</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">2014-11-19</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_time">
								<p class="time_style">2014-9-10</p>
							</div>
						</div>
						<div class="list_right">
							<div class="right_info">
								<div class="right_info_inner">
									<p class="p_info">嗯，从今天起，我要开始研究<a href="http://baike.baidu.com/link?url=6PeuHT7G2twfyUR3JlZjKLA55ybfEeaqy8vtSoeQk6GAMRzmglio7B6WRvxcwcGUzPahMbc6teCFy4NXvAE-5a">web前端</a>。不能三心二意，时间不多了，总要有一项拿得出手的技能洒，还好，编程还比较适合我的口味</p>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">代班生涯总算是结束了，累得跟狗一样……功课落下了不少，特别是<a href="http://baike.baidu.com/link?url=mfJ9pmGXfg0c_qTQQlwKLagd2AWVvRVItbLpmB4O8Xe99ZLhr1Ri-bBizvXKeaxssZWihbQhswbKM4l3ev6Q9pKc1poh0oG_iPTmal9HVcm#4">《数据结构》</a>，我得好好补回来</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">2013-10-10</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_time">
								<p class="time_style">2013-9-5</p>
							</div>
						</div>
						<div class="list_right">
							<div class="right_info">
								<div class="right_info_inner">
									<p class="p_info">满怀期待的开学了，手头有一批U盘，我该怎么卖，怎么卖……</p>
									<p class="p_info">我光荣的申请成为了13级软件2班的代班，感谢党感谢政府感谢人民给了我重新做……哦不，给了我这个机会，我激动万分，又能为人民服务了。</p>
									<p class="p_info">我会认识许多学弟学妹们，不知道他们会不会照顾我的生意呢?^_^，yy中……</p>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">今天真不是一个平凡的日子，我，第一次走进了<a href="http://www.csuft.edu.cn/">中南林业科技大学</a>的大门，不知道我这只小蝴蝶煽动的这一下翅膀将会对历史的轨迹产生什么影响呢？</p>
									<p class="p_info">哇咔咔，不要拦着我，今天有点激动。</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">2012-9-5</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_time">
								<p class="time_style">2010-?-?</p>
							</div>
						</div>
						<div class="list_right">
							<div class="right_info">
								<div class="right_info_inner">
									<p class="p_info">高中某日</p>
									<p class="p_info">最近<a href="">黑客小说</a>看得有点多，感觉代码之间的战争简直酷毙了……</p>
									<p class="p_info">一颗种子埋在了心底，等待发芽的那一天……不过对于我来说并没有什么特别的地方，一切都是那么平静。</p>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</li>
					<li>
						<div class="list_left">
							<div class="left_info">
								<div class="left_info_inner">
									<p class="p_info">Hello World!</p>
									<p class="p_info">这是我阳历的生日，阴历是后3月的最后一天。</p>
									<p class="p_info">这个世界，我来了！！！</p>
								</div>
							</div>
						</div>
						<div class="list_right">
							<div class="right_time">
								<p class="time_style">1993-5-20</p>
							</div>
						</div>
						<div class="cb"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="foot">
		<div class="middle">
			<p>Copyright © 2015   <a href="work.jsp">Kylin</a></p>
		</div>
	</div>


	<video  style="display:none;"  controls=""  autoplay="autoplay"  loop="loop"  name="media">
		<source src="../static/music/tkzc.mp3"  type="audio/mpeg">
	</video>


<script src="../static/js/shadow_expand.js"></script>


<script type="text/javascript">	
	$.getJSON("../data/break_record.json", function(data) {
		$("#record_info").empty();
        $.each(data.root, function(i, item) {
           	//console.log(item.date+",\n"+item.comment);
           	if(i%2==0){
           		$("#record_info").append(
	           		'<li>'+
						'<div class="list_left">'+
							'<div class="left_info">'+
								'<div class="left_info_inner">'
									+ item.comment +
								'</div>'+
							'</div>'+
						'</div>'+
						'<div class="list_right">'+
							'<div class="right_time">'+
								'<p class="time_style">' + item.date + '</p>'+
							'</div>'+
						'</div>'+
						'<div class="cb"></div>'+
					'</li>'
           		);
           	}else{
           		$("#record_info").append(
	           		'<li>'+
						'<div class="list_left">'+
							'<div class="left_time">'+
								'<p class="time_style">' + item.date + '</p>'+
							'</div>'+
						'</div>'+
						'<div class="list_right">'+
							'<div class="right_info">'+
								'<div class="right_info_inner">'
									+ item.comment +
								'</div>'+
							'</div>'+
						'</div>'+
						'<div class="cb"></div>'+
					'</li>'
           		);
           	}
        });
    });


</script>

<script type="text/javascript">
/*======================================================*/
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
</script>



<script type="text/javascript">
/*======================================================*/
if(isAdminLogin==true){
	$("#upload").show();
}

$("#upload").click(function(){
	$("#mask").show();
	var mydiv = $("#wrap");
	mydiv.animate({"top": "350px"},1000);
	mydiv.animate({"top": "300px"},300);
});

$("#cancel").click(function(){
	$("#data").val("");
	var mydiv = $("#wrap");
	mydiv.animate({"top": "350px"},300);
	mydiv.animate({"top": "-100px"},1000);
	setTimeout('$("#mask").hide()',1300);
});

</script>


</body>
</html>