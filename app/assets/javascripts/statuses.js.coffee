# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# here was test code using jQuery instead of fucking coffee and it works! need to wait for document to load!
# $(document).ready(function(){
#   $(".status").hover(function(){
#      $(this).addClass("hover");
#    }, function() {
#      $(this).removeClass("hover");
#   });
# });


$ -> 
	$('.status').hover (event) ->
		$(this).toggleClass("hover")
