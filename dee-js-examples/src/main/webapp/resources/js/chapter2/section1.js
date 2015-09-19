/**
	DEE - JS Example - Chapter 02 - Section 1
**/

function exampleCS1_1() {
	var book = {
		"main title": "JavaScript",
		'sub-title': "The Definitive Guide",
		"for": "all audiences",
		author: {
			firstname: "David",
			surname: "Flanagan"
		}
	};

	alert(book.for);
}

function exampleCS1_2() {
	var o1 = Object.create({x:1, y:2});

	alert(o1.x);
}

function inherit(p) {
		if(p == null) throw TypeError();
		if(Object.create) {
			return Object.create(p);
		}
		var type = typeof p;
		if(t !== "object" && t !== "function") throw TypeError();

		function f() {}; // Define a dummy constructor function
		f.prototype = p; // Set its prototype property to p
		return new f(); 
	}

function exampleCS1_3() {
	var obj = inherit({ x : 1, y : 2});
	alert("X=" + obj.x + " Y=" + obj.y);	
}

function exampleCS1_4() {

	var obj = {x: 1};
	alert('"x" in obj = ' + ("x" in obj) + 
		'; "z" in obj = ' + ("z" in obj) + 
		'; "toString" in obj = ' + ("toString" in obj));

	alert('obj.hasOwnProperty("x") = ' + (obj.hasOwnProperty("x")) + 
		'; obj.hasOwnProperty("z") = ' + (obj.hasOwnProperty("z")) + 
		'; obj.hasOwnProperty("toString") = ' + (obj.hasOwnProperty("toString")));

	var obj = inherit({y: 1});
	obj.x = 1;

	alert('obj.propertyIsEnumerable("x") = ' + (obj.propertyIsEnumerable("x")) + 
		'; obj.propertyIsEnumerable("y") = ' + (obj.propertyIsEnumerable("y")) + 
		'; obj.propertyIsEnumerable("toString") = ' + (obj.propertyIsEnumerable("toString")));

}