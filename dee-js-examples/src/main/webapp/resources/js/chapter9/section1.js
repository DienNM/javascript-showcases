/**
	DEE - JS Example - Chapter 09 - Section 1
**/


function argumentsExample(a) {
	alert("Number of arguments: " + arguments.length);
	alert("a === arguments[0]: " + (a === arguments[0]));
	alert("arguments[1]: " + arguments[1]);

	arguments[0] = 0;
	alert("a " + a);
}

function exampleJS91_1() {
	argumentsExample(1, 10);
}

/**
---------------------------------------------------------**/

function factorial(x) {
	if(x < 2) return 1;
	return x * arguments.callee(x - 1);
}

function exampleJS91_2() {
	alert(factorial(1));
	alert(factorial(10));
	alert(factorial(20));
}


/**
---------------------------------------------------------**/

function checkParams(args) {
	var actualLength = args.length;
	var expectedLength = args.callee.length;
	if(actualLength !== expectedLength) {
		throw "Wrong number of arguments";
	}
}

function argumentsLength(a, b, c) {
	checkParams(arguments);
	return (a + b) / c;
}

function exampleJS91_3() {
	alert(argumentsLength(1,2,3));
	try {
		alert(argumentsLength(1,2));
	} catch(e) {
		alert(e);
	}

	try {
		alert(argumentsLength(1,2,3,4));
	} catch(e) {
		alert(e);
	}
}

