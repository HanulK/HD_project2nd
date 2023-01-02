console.log("Review Module...............");

$('.prod__info').click(function(){
	$('.infoTabs .infoTab.active').removeClass('active');
	$(this).addClass('active');
	
	$('.item__review').css('display','none');
	$('.item__info').css('display','block');
})
$('.prod__review').click(function(){
	$('.infoTabs .infoTab.active').removeClass('active');
	$(this).addClass('active');
	
	$('.item__info').css('display','none');
	$('.item__review').css('display','block');
})