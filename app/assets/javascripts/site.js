// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('a.reveal-link').on('click', function(){
    var href = $(this).attr('href');
    $.ajax({
         url : href
    });
});
