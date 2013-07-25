// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('a.boxdata').on('click', function(){
    var href = $(this).attr('href');
    console.log(href);
    $.ajax({
         url : href,
         success: function(html) {
         	$('#modal-content').html(html);
         }
    });
});
