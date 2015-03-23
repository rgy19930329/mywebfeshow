/*======================================================*/
$(".picsBoxA-foot li").click(function(){
	$(".picsBoxA-foot li").removeClass();
	$(this).attr("class","circleSelected");
	var index = $(this).index();
	$(".picsBoxA-main li").hide().eq(index).fadeIn();
});



var k = 0;

function picSwitch() {
	$(".picsBoxA-foot li").removeClass();
	$(".picsBoxA-foot li").eq(k).attr("class","circleSelected");
	$(".picsBoxA-main li").hide().eq(k).fadeIn();
	k++;
	if(k==5){
		k=0;
	}
	
	setTimeout("picSwitch()", 7000);
}

picSwitch();

/*=======================*/

$(function() {
	$("#tabs").tabs();
});

/*======================================================*/

$(".neck li").mouseenter(function(){
	 $(this).children("span").html("¡ø");
	 $(this).children("div").show();
});

$(".neck li").mouseleave(function(){
	$(this).children("span").html("¨‹");
	$(this).children("div").hide();
});




























/*======================================================*/