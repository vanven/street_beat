
$(function() {

	performerAutoComplete();



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
    $('#location_id').val(ui.item.id);
            return false;
        }
	}).data( "ui-autocomplete" )._renderItem = function( ul, item ) {
	    return $( "<li></li>" ).data( "item.autocomplete", item ).
	    append( "<a>" + item.name + "</a>" ).appendTo( ul );
	};


	$('.time_slot_add').click(function() {
		var html = $('.time_slot_block').first().clone();
		html.css('display', 'none');
		html.find('input').val('');
		$(this).before(html);

	// $('.help_block').before(html);
		html.slideDown(600);
		performerAutoComplete();
		return false;
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
	}).data( "ui-autocomplete" )._renderItem = function( ul, item ) {
	    return $( "<li></li>" ).data( "item.autocomplete", item ).
	    append( "<a>" + item.name + "</a>" ).appendTo( ul );
	};
} /* end function performerAutoComplete */