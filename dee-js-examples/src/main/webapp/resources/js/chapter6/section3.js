/**
	DEE - JS Example - Chapter 06 - Section 3
**/

window.onerror = function(message, jsUrl, line) {
	alert("Error: Message = " + message + "\n" + 
			"URL: " + jsUrl + "\n" + 
			"Line Number: " + line);
}

function throwError() {
	throw "Error from function throwError";
}

function exampleJS63_1() {
	try {
		throwError();
	} catch(message) {
	}
	throwError();
}