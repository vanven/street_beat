// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Clone input boxes for education block
	$('.link_block_add').click(function() {
		var html = $('.link_block').first().clone();
		html.css('display', 'none');
		html.find('input').val('');
		$(this).before(html);

	// $('.help_block').before(html);
		html.slideDown(600);
		return false;
	});