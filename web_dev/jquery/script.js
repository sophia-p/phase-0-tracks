$(document).ready(function(){
	$("#horse_1").animate({left: '150px'}, "slow");
	$("#horse_2").animate({left: '150px'}, "fast");
	$("#secret").click(function(){
		$("#secret").hide();
	});
	$("button").click(function(){
		$("button").html("And watch.");
		$("#grow").animate({
			left: '250px',
			opacity: '0.25',
			height: '250px',
			width: '150px'
		})
		.animate({
			left: '350px',
			opacity: '0.75',
			height: '150px',
			width: '250px'
		})
		.animate({
			left: '450px',
			opacity: '0.25',
			height: '250px',
			width: '150px'
		})
		.animate({
			left: '550px',
			opacity: '0.75',
			height: '150px',
			width: '250px'
		})
		.animate({
			left: '650px',
			opacity: '0.25',
			height: '250px',
			width: '150px'
		})
		.animate({
			left: '750px',
			opacity: '0.75',
			height: '150px',
			width: '250px'
		});
	});
	$("#list > p").click(function(){
		$("#list > ul").slideToggle("slow");
	});

});

// $('button.talk').html('Arf');