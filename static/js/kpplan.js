jQuery(function(){
var flag=0
for(i=0; i<$(".nav li").size(); i++){
	if($(".nav li").eq(i).attr("class")=="nav_cut"){
		  flag=i;
	}
}
$(".nav").addClass("nav"+flag);

//导航效果
$(".nav li:not('.nav_cut')").hover(function(){$(".nav").removeClass("nav0 nav1 nav2 nav3 nav4 nav5 nav6"); $(".nav").addClass("nav"+$(this).index());$(this).addClass("nav_hover");$(".nav_cut .nav_a").css("color","#ffffff");},function(){$(".nav").removeClass("nav0 nav1 nav2 nav3 nav4 nav5 nav6"); $(this).removeClass("nav_hover");$(".nav").addClass("nav"+flag);$(".nav_cut .nav_a").css("color","#2d2d2d");});

})
