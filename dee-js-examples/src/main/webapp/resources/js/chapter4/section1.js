/**
	DEE - JS Example - Chapter 04 - Section 1
**/


function exampleJS41_1() {
	var test = function quare(x)  { 
		return x * x; 
	};
	alert(test(10));

}


// Nested Function

function nestedFunc(a, b) {
	var test = function product(x)  { 
		return x * b; 
	};
	alert(test(a));
}

function exampleJS41_2() {
	nestedFunc(2,5);
	
}

function exampleJS41_3() {
	var a = {f : nestedFunc};
	a.f(2, 5);
}

function exampleJS41_4() {
	var a = {
		p1 : 10,
		f : function() {
			var self = this;
			alert("this == a: " + (this == a));
			alert("self == a: " + (self == a));

			function nested() {
				alert("this == a: " + (this == a));
				alert("self == a: " + (self == a));
			};

			nested();
		}
	};
	a.f();
}

function sum(/** ... **/) {
	var sum = 0;
	for(var i in arguments) {
		sum += arguments[i];
	}
	return sum;
}



function exampleJS41_5() {
	alert(sum.call(null, 1,2));
	alert(sum.apply(null, [1,2]));
}
