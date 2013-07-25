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