/**
	DEE - JS Example - Chapter 01
**/
var scope = "global";
function checkscope() {
	var scope = "local";
	return scope;
}

function exampleCS4_1() {
	alert(checkscope());
}

function test(o) {
	var i = 0;
	if (typeof o == "object") {
		var j = 5;
		for(var k=0; k < 10; k++) { 
			console.log(k);
		}
		console.log(k);
	}
	alert("k = " + k + " - J = "  + j);
}

function exampleCS4_2() {
	test(new Date());
}