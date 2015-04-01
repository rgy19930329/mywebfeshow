
var k = 0;

$(".picsBoxB-foot li").click(function(){
	$(".picsBoxB-foot li").removeClass();
	$(this).attr("class","circleSelected");
	var index = $(this).index();
	k = index + 1;
	$(".picsBoxB-main li").hide().eq(index).fadeIn();
});

function picSwitch() {
	$(".picsBoxB-foot li").removeClass();
	$(".picsBoxB-foot li").eq(k).attr("class", "circleSelected");
	$(".picsBoxB-main li").hide().eq(k).fadeIn();
	k++;
	if (k == 5) {
		k = 0;
	}

	setTimeout("picSwitch()", 7000);
}

picSwitch();

///////////////////////////////////

$(function() {
	$("#tabsA").tabs();
});

$("#tabsA li .item").click(function(){
	$(".tabA_selected").children("label").hide();
	$("#tabsA li .item").removeClass("tabA_selected");
	$(this).attr("class","tabA_selected item");
	$(this).children("label").show();
});


///////////////////////////////////

$(function() {
	$("#tabsB").tabs();
});

$("#tabsB li a").click(function(){
	$("#tabsB li a").removeClass("tabB_selected");
	$(this).attr("class","tabB_selected");
});

///////////////////////////////////

$(".main_left_div6_body > ul > li").mouseenter(function(){
	$(".main_left_div6_body > ul > li").removeClass("songSelected");
	$(this).attr("class","songSelected");
	var obj = $(this).children(".item_middle").children(".little_panel2");
	obj.children("dt").show();
});

$(".main_left_div6_body > ul > li").mouseleave(function(){
	var obj = $(this).children(".item_middle").children(".little_panel2");
	obj.children("dt").hide();
});


///////////////////////////////////

$(".hasmask").mouseenter(function(){
	$(this).children("a").children(".mask").show();
	$(this).children("a").children(".toplay2").show();
	$(this).children("dl").children("dt").show();
});

$(".hasmask").mouseleave(function(){
	$(this).children("a").children(".mask").hide();
	$(this).children("a").children(".toplay2").hide();
	$(this).children("dl").children("dt").hide();
});

$(".little_panel dt").mouseenter(function(){
	$(this).siblings("dd").show();
	$(this).hide();
});

$(".little_panel dd").mouseleave(function(){
	$(this).hide();
	$(this).siblings("dt").show();
});

////

$(".little_panel2 dt").mouseenter(function(){
	$(this).siblings("dd").show();
	$(this).hide();
});

$(".little_panel2 dd").mouseleave(function(){
	$(this).siblings("dt").show();
	$(this).hide();
});

///////////////////////////////////

$(window).scroll(function() {
	if ($(window).scrollTop() > 100) {
		$(".backtop").fadeIn(1000);
	} else {
		$(".backtop").fadeOut(1000);
	}
});

$(".backtop").click(function(){
	$("body").animate({scrollTop:"0"},200);
});





