

var browser_height = $(window).height();
var browser_width = $(window).width();
$(".pageSize").css({
	"height": browser_height,
	"width": browser_width
}); 


$(window).resize(function() { 
	var browser_height = $(window).height();
	var browser_width = $(window).width();
	$(".pageSize").css({
		"height": browser_height,
		"width": browser_width
	}); 
}); 

/*===============*/

$(".featureItem").mouseenter(function(){
	var obj = $(this).children(".mask");
	obj.show().animate({top: "50px"},500).animate({top:"41px"},500);
});

$(".featureItem").mouseleave(function(){
	var obj = $(this).children(".mask");
	obj.animate({top: "-25px"},0);
	obj.hide();
});


/*===============*/

$.scrollify({
	section: '.pageSize',
	scrollSpeed: 700
});

/*===============*/

























