/**
	DEE - JS Example - Chapter 05 - Section 2
**/

function Set() {
	this.values = {};
	this.length = 0;
	this.add.apply(this, arguments);
}

Set.prototype = {
	add : function() {
		for(var i = 0; i < arguments.length; i++) {
			var str = arguments[i];
			if(!this.values.hasOwnProperty(str)) {
				this.values[str] = str;
				this.length++;
			}
		}
	},
	remove : function(value) {
		if(this.contain(value)) {
			delete this.values[value];
			this.length--;
		}
	},
	contain : function(value) {
		return this.values.hasOwnProperty(value);
	},

	size: function() {
		return this.length;
	}
}

function exampleJS52_1() {
	var set = new Set("test1", "test2");
	alert(set.size());

	set.add("test3", "test4");
	alert("After add test3, test4: Size = " + set.size());

	alert("Contains test3: " + (set.contain("test3")));

	set.remove("test3");
	alert("After remove test3: Size = " + set.size());
	alert("Contains test3: " + (set.contain("test3")));

}


/** Enumeration
----------------------------------------------------------**/

function inherit(p) {
	if(p == null) throw TypeError();
	if(p == undefined) throw TypeError();
	if(Object.create) return Object.create(p);

	function f() {};
	f.prototype = p;
	return new f();
}

function enumeration(namesToValues) {
	var enumeration = function() { throw "Cannot Instantiate Enumeration"};
	var proto = enumeration.prototype = {
		constructor : enumeration,
		toString	: function() { return this.name; },
		valueOf		: function() { return this.value; }
	};

	enumeration.values = [];
	for(var item in namesToValues) {
		var e = inherit(proto);
		e.name = item;
		e.value = namesToValues[item];
		enumeration[item] = e;
		enumeration.values.push(e);
	}

	return enumeration;
}



function exampleJS52_2() {
	var Gender = enumeration({MALE : "M", FEMALE : "F"});
	alert("Gender.MALE.toString(): " + Gender.MALE.toString());
	alert("Gender.MALE.valueOf(): " + Gender.MALE.valueOf());
}