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

function enumeration(namesToValues) {
}

