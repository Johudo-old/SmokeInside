(function () {
	'use strict';

	let navigation = document.querySelector('.navigation');
	let items = navigation.querySelectorAll('span');


	items.forEach( function(element) {
		element.onclick = function (event) {

			let containerID = '#' + event.target.attributes['data-scroll-to'].value;
			let container = $(containerID);

			if (container.length === 1) {
				$("html,body").animate({scrollTop: container.offset().top - $('header').height() });
			}

		}
	});

})();