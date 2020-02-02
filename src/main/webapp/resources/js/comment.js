$(function(){
	$('#ReplyAction').submit(function() {
		return false;
	});
}); // ready end

function reply(cono) {
	$('.post-comt-box textarea').css('background', 'skyblue');
	alert(cono);
	$('input[name=commentNum]').val(cono);
};	// reply end