/**
	DEE - JS Example - Chapter 04 - Section 2
**/

function exampleOptionalArgs(p1, /** optional **/ p2) {
	if(p2 == undefined) p2 = 0;
	return p1 + p2;
}

function exampleCS42_1() {
	alert(exampleOptionalArgs(2));
	alert(exampleOptionalArgs(2, 3));
}


function exampleArgsObj(/* ... */) {
	var sum = 0;
	for(var a in arguments) {
		sum += arguments[a];
	}
	return sum;
}

function exampleCS42_2() {
	alert(exampleArgsObj(1,2,3));
	alert(exampleArgsObj(1,2,3,4,5));
}


function changeArgs(a) {
	alert("a = " + a);
	arguments[0] = "changed";
	alert("a = " + a);
}

function exampleCS42_3() {
	changeArgs(1);
}


function exampleCS42_4() {
	var callee1 = function(a) {
		if(a <= 1) return 1;
		return a * arguments.callee(a - 1); 
	};
	callee1(1);
	callee1(2);
}


var scope = "global scope"; // A global variable
function checkscope() {
	var scope = "local scope"; // A local variable
	function f() { return scope; } // Return the value in scope here
	return f();
}

function exampleCS42_5() {
	alert(checkscope());
}

var scope1 = "global scope"; // A global variable
function checkscope1() {
	var scope1 = "local scope"; // A local variable
	function f() { return scope1; } // Return the value in scope here
	return f;
}

function exampleCS42_6() {
	alert(checkscope1()());
}

function counter1() {
	var n = 0;
	return {
		count: function() {
			n++;
			alert(n);
		}
	} 
}


function exampleCS42_7() {
	counter1().count();
	counter1().count();

}


function exampleCS42_8() {
	var counter = counter1();
	counter.count();
	counter.count();
}





