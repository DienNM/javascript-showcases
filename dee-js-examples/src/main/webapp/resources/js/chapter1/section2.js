/**
	DEE - JS Example - Chapter 01
**/

function exampleCS2_1() {
	var a = 1;
	alert(a/0);
}


function exampleCS2_2() {
	var a = 0;
	alert(a/0);
}

function exampleCS2_3() {
	alert(
		"Number.POSITIVE_INFINITY = " + Number.POSITIVE_INFINITY + "\n" + 
		"Infinity = " + Infinity + "\n" + 
		"1/0 = " + (1/0)  + "\n" + 
		"-----------------------------------------\n\n" + 
		"Number.NEGATIVE_INFINITY = " + Number.NEGATIVE_INFINITY + "\n" + 
		"-Infinity = " + (-Infinity) + "\n" + 
		"-1/0 = " + (-1/0)  + "\n" + 
		"-----------------------------------------\n\n" + 
		"NaN = " + NaN + "\n" + 
		"Number.NaN = " + Number.NaN + "\n" + 
		"0/0 = " + (0/0)  + "\n" + 
		"----------------------------------------\n\n" + 
		"Number.MIN_VALUE/2 = " + (Number.MIN_VALUE/2) + "\n" + 
		"-Number.MIN_VALUE/2 = " + (-Number.MIN_VALUE/2) + "\n" + 
		"-1/Infinity = " + (-1/Infinity)  + "\n" + 
		"-0  = " + (-0)  + "\n"
		);
}

function exampleCS2_4() {
	var x = .3 - .2;
	var y = .2 - .1;
	alert("x == y: " + (x == y));
	alert("x == .1: " + (x == .1));
	alert("y == .1:" + (y == .1));
}

function exampleCS2_5() {
	if(undefined) {
		alert("undefined is TRUE");
	} else if(null) {
		alert("undefined is TRUE");
	} else if(0) {
		alert("undefined is TRUE");
	} 
	 else if(-0) {
		alert("undefined is TRUE");
	} else if(NaN) {
		alert("undefined is TRUE");
	} else if("") {
		alert("undefined is TRUE");
	} else {
		alert("All is FALSE");
	}
}

function exampleCS2_6() {
	var s = "dee";
	s.len =10;
	var t = s.len;
	alert("t = " + t);
}

function exampleCS2_7() {
	var s = new String("dee");
	s.len =10;
	var t = s.len;
	alert("t = " + t);
}

function exampleCS2_8() {
	var s = "hello";
	s.toUpperCase();
	alert("s = " + s);
}

function exampleCS2_9_0(obj) {
	obj.y = 15;
}

function exampleCS2_9() {
	var s = { x : 10};
	s.x = 15;
	exampleCS2_9_0(s);
	alert("s.x = " + s.x + " - s.y = " + s.y);
}