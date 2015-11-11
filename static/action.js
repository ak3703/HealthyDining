$(document).ready(function() {
	$(".btn-primary").click(function(){
        //$(".Dominos").collapse('toggle');
        var elements = $(this).parent().parent().next();
        while(elements.attr('class') === 'review'){
        trigger(elements);
        elements = elements.next();
        }
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
    	var cuisine = getInnerHTML("cuisine");
    	var zipcode = getInnerHTML("zipcode");
    	var rating = getInnerHTML("rating");
      window.location.href = 'https://healthydining.herokuapp.com/' + "?cuisine="+cuisine+"&zipcode="+zipcode+"&rating="+rating;
    });
});

function getInnerHTML(input){
	var value = document.getElementById(input);
	return value[value.selectedIndex].innerHTML;
}
