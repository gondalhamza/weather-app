// JS for loader during ajax call
$( document ).ready(function() {
	$( "select#get-city-weather-update" ).change(function() {
	  $('.site-contents').fadeOut();
	  $('#ajaxBusy').show();
	});
});