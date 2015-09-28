/**
	DEE - JS Example - Chapter 03 - Section 4
**/


function exampleJS3_21() {
	alert("Array.isArray([]): " + (Array.isArray([])));
	alert("Array.isArray({}): " + (Array.isArray({})));
}

function exampleJS3_22() {
	var isArray = function(o) {
		return typeof o === "object" && Object.prototype.toString.call(o) === "[object Array]";
	}

	alert("isArray([]): " + (isArray([])));
	alert("isArray({}): " + (isArray({})));
}