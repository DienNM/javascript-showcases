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

}

function exampleCS1_5() {

	var obj = {x: 1};

	alert('obj.hasOwnProperty("x") = ' + (obj.hasOwnProperty("x")) + 
		'; obj.hasOwnProperty("z") = ' + (obj.hasOwnProperty("z")) + 
		'; obj.hasOwnProperty("toString") = ' + (obj.hasOwnProperty("toString")));

}

function exampleCS1_6() {

	var obj = inherit({y: 1});
	obj.x = 1;
	obj.f = function() {

	}

	for(var p in obj) {
		if(typeof obj[p] === "function") continue;
		console.log(p);
	}

	alert('obj.propertyIsEnumerable("x") = ' + (obj.propertyIsEnumerable("x")) + 
		'; obj.propertyIsEnumerable("y") = ' + (obj.propertyIsEnumerable("y")) + 
		'; obj.propertyIsEnumerable("toString") = ' + (obj.propertyIsEnumerable("toString")));

}

function extend(target, source) {
	for(var att in source) {
		target[att] = source[att];
	}
	return target;
}

function merge(target, source) {
	for(var att in source) {
		if(target.hasOwnProperty("att")) continue;
		target[att] = source[att];
	}
	return target;
}

function restrict(target, source) {
	var obj = extend({}, target);
	for(var att in target) {
		if(!(att in source)) {
			delete obj[att];
		}
	}
	return obj;
}

function subtract(target, source) {
	var obj = extend({}, target);
	for(var att in source) {
		delete obj[att];
	}
	return obj;
}

function union(target, source) {
	return extend(target, source);
}

function intersection(target, source) {
	return restrict(extend({}, target), source);
}

function exampleCS1_7() {
	var source = inherit({x: 1, y:2});
	var target = inherit({x: 1, z:2});

	var rs = extend(target, source);

	var result = "extend(target, source): ";

	for(var a in rs) {
		result += "\n" + a + " = " + target[a];
	}

	alert(result);
}

function exampleCS1_8() {
	var source = inherit({x: 1, y:2});
	var target = inherit({x: 1, z:2});

	var rs = merge(target, source);

	var result = "merge(target, source): ";

	for(var a in rs) {
		result += "\n" + a + " = " + target[a];
	}

	alert(result);
}

function exampleCS1_9() {
	var source = inherit({x: 1, y:2});
	var target = inherit({x: 1, z:2});

	var rs = restrict(target, source);

	var result = "restrict(target, source): ";

	for(var a in rs) {
		result += "\n" + a + " = " + target[a];
	}

	alert(result);
}

function exampleCS1_10() {
	var source = inherit({x: 1, y:2});
	var target = inherit({x: 1, z:2});

	var rs = subtract(target, source);

	var result = "subtract(target, source): ";

	for(var a in rs) {
		result += "\n" + a + " = " + target[a];
	}

	alert(result);
}

function exampleCS1_11() {
	var source = inherit({x: 1, y:2});
	var target = inherit({x: 1, z:2});

	var rs = union(target, source);

	var result = "union(target, source): ";

	for(var a in rs) {
		result += "\n" + a + " = " + target[a];
	}

	alert(result);
}

function exampleCS1_12() {
	var source = inherit({x: 1, y:2});
	var target = inherit({x: 1, z:2});

	var rs = intersection(target, source);

	var result = "intersection(target, source): ";

	for(var a in rs) {
		result += "\n" + a + " = " + target[a];
	}

	alert(result);
}