/**
	DEE - JS Example - Chapter 04 - Section 1
**/


function exampleCS4_1() {
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

function exampleCS4_2() {
	nestedFunc(2,5);
	
}

function exampleCS4_3() {
	var a = {f : nestedFunc};
	a.f(2, 5);
}

function exampleCS4_4() {
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
