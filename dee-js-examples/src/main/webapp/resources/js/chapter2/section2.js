/**
	DEE - JS Example - Chapter 02 - Section 1
**/

function exampleCS2_1() {
	var user = { name : ""};
	var student = Object.create(user);

	alert("user.isPrototypeOf(student) = " + (user.isPrototypeOf(student)) + "\n" +
		"student.constructor.prototype = " + (student.constructor.prototype) + "\n" +
		"Object.prototype.toString.call(student).slice(8,-1) = " + (Object.prototype.toString.call(student).slice(8,-1)) + "\n" +
		"Object.prototype.isPrototypeOf(student) = " + (Object.prototype.isPrototypeOf(student)));
}

function classof(obj) {
	if(obj == null) return "Null";
	if(obj == undefined) return "Undefined";
	return Object.prototype.toString.call(obj).slice(8, -1);
}

function exampleCS2_2() {
	alert("classof(null) = " + (classof(null)) + "\n" + 
		"classof(1) = " + (classof(1)) + "\n" +
		"classof(new Array()) = " + (classof(new Array())) + "\n" +
		"classof(new Date()) = " + (classof(new Date())) + "\n" +
		"classof('test') = " + (classof("test")) + "\n" +
		"classof({}) = " + (classof({})) + "\n" +
		"classof([]) = " + (classof([])));
}