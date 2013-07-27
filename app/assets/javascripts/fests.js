$(function() {

	$('.time_slot_add').click(function() {
		var html = $('.time_slot_block').first().clone();
		html.css('display', 'none');
		html.find('input').val('');
		$(this).before(html);

		html.slideDown(600);
		performerAutoComplete();
		return false;
	});

});