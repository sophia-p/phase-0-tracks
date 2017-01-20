$(document).ready(function(){
	// $('button.talk').html('Arf');
	$('#talk').click(function(){
		$('h1').animate({left: '250px'});
	});
	$('#hide').click(function(){
		$('p').hide('slow', function(){
			alert("That paragraph is now hidden");
		});
	});


});

// $('button.talk').html('Arf');