$(function() {

  $('#time_slots').change(function(){  
    //$('#time_slots').children('.nested_fields', function(){
      $(this).children('*').each(function( index ) {

        console.log( index + ": " + $(this).html() );
      });
  });

  $('#time_slots').on('click', function(){
    //console.log('clicked');
  });


	$('#concert_location').autocomplete({
	minLength: 3,
  source: function(request, response){
           $.ajax({
               type: "GET",
               url: "../locations",
               contentType: "application/json; charset=utf-8",
               dataType: "json",
               data: {term: $('#concert_location').val()},
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
      $('#concert_location').val(ui.item.name);
      return false;
  },
  select: function(event, ui) {
    $('#concert_location').val(ui.item.name);
    $('#concert_location_id').val(ui.item.id);
            return false;
        }
	});
  var obj = $('#concert_location').data( "ui-autocomplete" );
  obj && (obj._renderItem = function( ul, item ) {
      return $( "<li></li>" ).data( "ui-autocomplete-item", item ).
      append( "<a>" + item.name + "</a>" ).appendTo( ul );
  });



}); /*end anonymous function */


function initAutoComplete(element){
	element.autocomplete({
  	minLength: 3,
    source: function(request, response){
             $.ajax({
                 type: "GET",
                 url: "../performers",
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 data: {term: element.val()},
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
        element.val(ui.item.name);
        return false;
    },
    select: function(event, ui) {
      element.val(ui.item.name);
      $('#performer_id').val(ui.item.id);
      return false;
    }
	});
  var obj = element.data( "ui-autocomplete" );
  obj && (obj._renderItem = function( ul, item ) {
	    return $( "<li></li>" ).data( "ui-autocomplete-item", item ).
	    append( "<a>" + item.name + "</a>" ).appendTo( ul );
	});
} /* end function initAutoComplete */