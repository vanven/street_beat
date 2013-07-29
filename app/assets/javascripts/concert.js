
$(function() {

	performerAutoComplete();


	$('#concert_loc').autocomplete({
	minLength: 3,
  source: function(request, response){
           $.ajax({
               type: "GET",
               url: "../locations",
               contentType: "application/json; charset=utf-8",
               dataType: "json",
               data: {term: $('#concert_loc').val()},
               success: function (msg) {
                   console.log(msg);
                   response(msg);
               },
               error: function (msg) {
                   alert(msg.status + ' ' + msg.statusText);
               }
           })
       },
  focus: function(event, ui) {
      $('#concert_loc').val(ui.item.name);
      return false;
  },
  select: function(event, ui) {
    $('#concert_loc').val(ui.item.name);
    $('#concert_location').val(ui.item.id);
            return false;
        }
	});
  var obj = $('#concert_loc').data( "ui-autocomplete" );
  obj && (obj._renderItem = function( ul, item ) {
      return $( "<li></li>" ).data( "ui-autocomplete-item", item ).
      append( "<a>" + item.name + "</a>" ).appendTo( ul );
  });



}); /*end anonymous function */

function performerAutoComplete(){
	$('.concert_performers').autocomplete({
	minLength: 3,
  source: function(request, response){
           $.ajax({
               type: "GET",
               url: "../performers",
               contentType: "application/json; charset=utf-8",
               dataType: "json",
               data: {term: $('.concert_performers').val()},
               success: function (msg) {
                   console.log(msg);
                   response(msg);
               },
               error: function (msg) {
                   alert(msg.status + ' ' + msg.statusText);
               }
           })
       },
  focus: function(event, ui) {
      $('.concert_performers').val(ui.item.name);
      return false;
  },
  select: function(event, ui) {
    $('.concert_performers').val(ui.item.name);
    $('#performer_id').val(ui.item.id);
            return false;
        }
	});
  var obj = $('.concert_performers').data( "ui-autocomplete" );
  obj && (obj._renderItem = function( ul, item ) {
	    return $( "<li></li>" ).data( "ui-autocomplete-item", item ).
	    append( "<a>" + item.name + "</a>" ).appendTo( ul );
	});
} /* end function performerAutoComplete */