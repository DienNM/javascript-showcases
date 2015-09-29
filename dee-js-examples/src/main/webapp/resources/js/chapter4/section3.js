/**
	DEE - JS Example - Chapter 04 - Section 3
**/

function not(f) {
	return function() {
	var result = f.apply(this, arguments); 
		return !result; 
	};
}

function exampleJS43_1() {
	var n = not(isNaN);
	alert("not(isNaN(1)): " + n(1));
	alert("not(isNaN('a')): " + n("a"));
}

function compose(f, g) { // f(g());
	return function() {
		return f.call(this, g.apply(this, arguments));
	}
}

function sum(/** ... **/) {
	var sum = 0;
	for(var i in arguments) {
		sum += arguments[i];
	}
	return sum;
}

function square(x) {
	return x * x;
}

function exampleJS43_2() {
	var cp = compose(square, sum);
	alert(cp(1,2));
}


/** Partial Function
----------------------------------**/

function arraySlice(args, start) {
	var arr = [];
	for(var i = start; i < args.length ; i++) {
		arr.push(args[i]);
	}
	return arr;
}

function partialLeft(f /**, ... **/) {
	var args = arguments;
	return function() {
		var array = arraySlice(args, 1);
		for(var i in arguments) {
			array[array.length] = arguments[i];
		}
		console.log(array);
		return f.apply(this, array);
	}
}

function partialRight(f /**, ... **/) {
	var args = arguments;
	return function() {
		var array = arraySlice(arguments, 0);
		var pArgs = arraySlice(args, 1);
		for(var i in pArgs) {
			array.push(pArgs[i]);
		}
		console.log(array);
		return f.apply(this, array);
	}
}

function exampleJS43_3() {
	var f = function(x, y, z) { return x * (y - z);};
	var left = partialLeft(f, 2);
	alert("left(3, 4) = " + left(3, 4)); // 2,3,4 = -2
	var right = partialRight(f, 2);
	alert("right(3, 4) = " + right(3, 4)); // 3,4,2 = 6
}