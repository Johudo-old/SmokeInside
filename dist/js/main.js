(function () {
	'use strict';

	var navigation = document.querySelector('.navigation');
	var items = navigation.querySelectorAll('span');
	
	items.forEach(function (element) {
		element.onclick = function (event) {
			var containerID = '#' + event.target.attributes['data-scroll-to'].value;
			var container = $(containerID);

			if (container.length === 1) {
				$("html,body").animate({
					scrollTop: container.offset().top - $('header').height()
				});
			}
		};
	});
})();