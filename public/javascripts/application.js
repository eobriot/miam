// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
	$('tr.parent')
	    .click(function(){
		    $(this).siblings('.child-'+this.id).fadeToggle("fast");
		});
	//	$('tr[@class^=child-]').slideToggle("slow").children('td');
	//	$('tr[@class^=child-]').slideToggle("slow");
	$('tr.parent').each( function(){
		    $(this).siblings('.child-'+this.id).fadeToggle("fast");
	    });
    });