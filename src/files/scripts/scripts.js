/* 高亮关于我们页面的导航 */
$(function() {
	$menu = $('.a_navcot li a');

	$menu.each(function(index, elem) {
		if (window.location.href.indexOf($(elem).attr('href')) > -1)
			$(elem).addClass('on');
	})
})