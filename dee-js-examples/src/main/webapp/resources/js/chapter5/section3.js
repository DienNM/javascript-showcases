/**
	DEE - JS Example - Chapter 05 - Section 3
**/

function exampleJS53_1() {
	var date = new Date();
	var string = new String();
	alert("date instanceof Date = " + (date instanceof Date));
	alert("date instanceof String = " + (date instanceof String));
	alert("string instanceof String = " + (string instanceof String));
}

function typeAndValue(x) {
	if(x == null) return "";
	switch(x.constructor) {
		case Number: return "Number " + x;
		case String: return "String '" + x + "'";
		case Date: return "Date " + x;
		case UserDefined: return "UserDefined: " + x;
	}
}

function UserDefined() {
	this.x = "";
}

UserDefined.prototype = {
	getName: function() {
		return "UserDefined";
	}
}

function exampleJS53_2() {
	alert(typeAndValue(1));
	alert(typeAndValue("DEE"));
	alert(typeAndValue(new Date()));
	alert(typeAndValue(new UserDefined()));
	alert(typeAndValue(null));
	alert(typeAndValue(undefined));
}

function type(x) {
	if(x == null) return "null";
	if(x != x) return "nan";

	var t;
	if((t = typeof x) != "object") return t;
	if((t = typeOfName(x)) != 'Object') return t;

	if(x.constructor && x.constructor === 'function' && (t = x.constructor.getName())) return t;
	return "Object";
} 

function typeOfName(x) {
	return Object.prototype.toString.call(x).slice(8, -1);
}

function exampleJS53_3() {
	alert("type(null): " + type(null));
	alert("type(NaN): " + type(NaN));
	alert("type(new Date()): " + type(new Date()));
	alert("type('DEE'): " + type('DEE'));
	alert("type(1): " + type(1));
	alert("type({}): " + type({}));
	alert("type(new UserDefined()): " + type(new UserDefined()));
}