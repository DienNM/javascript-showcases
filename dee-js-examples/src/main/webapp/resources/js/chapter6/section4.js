/**
	DEE - JS Example - Chapter 06 - Section 4
**/

function exampleJS64_1() {
	window.open("http://google.com", "_blank");
	var win = window.open("about:blank", "New Window", "toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,copyhistory=yes,resizable=no");
	alert(win);
}


function exampleJS64_2() {
	var windows = window.frames;
	alert("Number of frames: " + frames.length);
	console.log(windows);

	var window1 = frs["chapter1"];
	console.log(window1.location.href);
}
