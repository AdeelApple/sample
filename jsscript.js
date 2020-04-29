
var opened = [];
function collapse(obj) {
	if (opened[0] !== undefined && obj!==opened[1])
	opened[0].classList.remove('subon');


	opened[1] = obj;
	opened[0] = obj.nextElementSibling;
	opened[0].classList.toggle('subon');
}

