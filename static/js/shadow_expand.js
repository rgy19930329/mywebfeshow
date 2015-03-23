/*======================================================*/
(function(){
	var isSelected = false;

	$(".neck_search").click(function() {
		if(isSelected==false){
			setTimeout('$(".neck_search").css({"box-shadow": "0px 0px 2px 1px rgba(0,0,0,0.5)"})',0);
			setTimeout('$(".neck_search").css({"box-shadow": "0px 0px 4px 2px rgba(0,0,0,0.5)"})',80);
			setTimeout('$(".neck_search").css({"box-shadow": "0px 0px 6px 3px rgba(0,0,0,0.5)"})',160);
		}

		isSelected = true;
	});

	$(".neck_search").blur(function() {
		setTimeout('$(".neck_search").css({"box-shadow": "0px 0px 6px 3px rgba(0,0,0,0.5)"})',0);
		setTimeout('$(".neck_search").css({"box-shadow": "0px 0px 4px 2px rgba(0,0,0,0.5)"})',80);
		setTimeout('$(".neck_search").css({"box-shadow": "0px 0px 2px 1px rgba(0,0,0,0.5)"})',140);
		setTimeout('$(".neck_search").css({"box-shadow": "none"})',200);

		isSelected = false;
	});
})();