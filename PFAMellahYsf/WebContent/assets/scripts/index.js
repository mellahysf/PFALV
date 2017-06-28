$(document).ready(function(){
	var h = $(window).height();
	$(".slideShow").height(h+"px");
	
	$(".slide").hide();
	$(".slide:first").show();
	setInterval(nextSlide,2000);
	

	
})
function nextSlide(){

	var slideVisible = $(".slide:visible");
	var slide = slideVisible.next();

	if(slide.length==0){
		slideVisible.fadeOut("slow");
		$(".slide:first").fadeIn("slow");

	}
	else{
		slideVisible.fadeOut("slow");
		slide.fadeIn("slow");
	}
}

