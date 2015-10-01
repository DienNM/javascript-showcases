/**
	DEE - JS Example - Chapter 06 - Section 2
**/


function exampleJS62_1() {

	n_appCodeName.innerText = window.navigator.appCodeName;
	n_appName.innerText = window.navigator.appName;
	document.getElementById("n_appVersion").innerText = window.navigator.appVersion;
	document.getElementById("n_userAgent").innerText = window.navigator.userAgent;
	document.getElementById("n_platform").innerText = window.navigator.platform;
	
}


function exampleJS62_2() {

	document.getElementById("n_availHeight").innerText = window.screen.availHeight;
	document.getElementById("n_availWidth").innerText = window.screen.availWidth;

	document.getElementById("n_availLeft").innerText = window.screen.availLeft;
	document.getElementById("n_availTop").innerText = window.screen.availTop;

	document.getElementById("n_colorDepth").innerText = window.screen.colorDepth;
	document.getElementById("n_pixelDepth").innerText = window.screen.pixelDepth;

	document.getElementById("n_height").innerText = window.screen.height;
	document.getElementById("n_width").innerText = window.screen.width;
	
}


