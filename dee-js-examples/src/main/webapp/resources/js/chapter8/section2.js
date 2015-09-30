/**
	DEE - JS Example - Chapter 08 - Section 2
**/

function exampleJS82_1() {
	alert("'JavaScript'.search(/script/i) = " + "JavaScript".search(/script/i));
	alert("'JavaScript'.search(/c#/i) = " + "JavaScript".search(/c#/i));
}


function exampleJS82_2() {
	alert("toDay is my birthDAte".replace(/da/i, "da"));
	alert("toDay is my birthDAte".replace(/da/gi, "da"));
}



function exampleJS82_3() {
	var quote = /(java)/gi;
	alert('javascript is not java'.search(quote));
	alert('JAVAscript is not java'.replace(quote, '$1'));
}

function exampleJS82_4() {
	alert('"1 plus 2 equals 3".match(/(\d+)/g) = ' + "1 plus 2 equals 3".match(/\d+/));
	alert('"1 plus 2 equals 3".match(/(\d+)/g) = ' + "1 plus 2 equals 3".match(/\d+/g));

	var emailPattern = /(\w+)@(\w{2,10})(.(\w{2,5})){1,2}/;
	var text = "nmdien61@gmail.com";
	var matches = text.match(emailPattern);
	if(matches != null) {
		alert(matches[0]); // Complete match
		alert(matches[1]); // Index of group
		alert(matches[2]);
		alert(matches[3]);
		alert(matches[4]);
	}
}


function exampleJS82_5() {
	alert('"123,456,789".split(",") = ' + "123,456,789".split(","));
	alert('"1, 2, 3, 4, 5,   6,  ".split(",") = ' + "1, 2, 3, 4, 5,   6,  ".split("\s*,\s*"));
}

