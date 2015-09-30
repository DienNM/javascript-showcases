/**
	DEE - JS Example - Chapter 08 - Section 3
**/

function exampleJS83_1() {
	var pattern = /Java/g;
	var text = "JavaScript is more fun than Java!";
	var result;
	while((result = pattern.exec(text)) != null) {
		alert("Matched: " + result[0] + " - At position: " + result.index + "\n" + 
				"Next Position: " + pattern.lastIndex);
	}
}


function exampleJS83_2() {
	var pattern = /java/i;
	alert('pattern.test("JavaScript") = ' + pattern.test("JavaScript"));
	alert('pattern.test("script") = ' + pattern.test("script"));
}

