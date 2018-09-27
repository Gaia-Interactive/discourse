$(document).ready(function ($) {
	//tooltip
	$('[data-toggle="tooltip"]').tooltip();

	// for menu bar
	$(".menu-button").click(function () {
		$('.header_bottom_right nav').css("transform", "translateX(0%)");
		$('.header_bottom_right nav ul').css("opacity", "1");
		$(this).addClass('active');
		$('.header_bottom_right nav ul').addClass('flexnav-show');
	});
	$(".close_button").click(function () {
		$('.header_bottom_right nav').css("transform", "translateX(-165%)");
	});

	// scroll bar 

	$('.message_scroll').slimScroll({
		alwaysVisible: false
	});

	$('.tab_scroll').slimScroll({
		alwaysVisible: false,
		height: '410px'
	});

	$('.news_scroll').slimScroll({
		alwaysVisible: false,
		height: '400px'
	});
});

$(window).on('load', function () {
	$("#flexiselDemo3").flexisel({
		visibleItems: 5,
		itemsToScroll: 1,
		animationSpeed: 200,
		infinite: true,
		navigationTargetSelector: null,
		autoPlay: {
			enable: false,
			interval: 5000,
			pauseOnHover: true
		},
		responsiveBreakpoints: {
			portrait: {
				changePoint: 480,
				visibleItems: 1,
				itemsToScroll: 1
			},
			landscape: {
				changePoint: 640,
				visibleItems: 2,
				itemsToScroll: 2
			},
			tablet: {
				changePoint: 768,
				visibleItems: 3,
				itemsToScroll: 1
			}
		},
	});
});