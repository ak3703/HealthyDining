$(document).ready(function() {
	$(".btn-primary").click(function(){
        //$(".Dominos").collapse('toggle');
        var elements = $(this).parent().parent().next();
        trigger(elements);
    });

// switch the status of display
function trigger(element) {
    if (element.css('display') !== 'none') {
      element.hide();
    } else {
      element.show();
    }
  }


    $("#submit").click(function(){
    	var restaurant = getInnerHTML("restaurant");
    	var cuisine = getInnerHTML("cuisine");
    	var zipcode = getInnerHTML("zipcode");
    	var rating = getInnerHTML("rating");
      window.location.href = 'http://localhost:5000/' + "?restaurant="+restaurant+"&cuisine="+cuisine+"&zipcode="+zipcode+"&rating="+rating;
    });
});

function getInnerHTML(input){
	var value = document.getElementById(input);
	return value[value.selectedIndex].innerHTML;
}
