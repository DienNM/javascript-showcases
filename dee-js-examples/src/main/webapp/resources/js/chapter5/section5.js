/**
	DEE - JS Example - Chapter 05 - Section 5
**/


var Set = (function() {

	function Set() {
		this.values = [];
		this.n = 0;
		this.add.apply(this, arguments);
	};

	Set.prototype.add = function() {
		for(var i in arguments) {
			if(contains(this.values, arguments[i])) continue;
			this.values.push(arguments[i]);
			this.n++;
		}
	};

	function contains(array, value) {
		for(var i in array) {
			if(array[i] === value) return true;
		}
		return false;
	}

	return Set;
}());

function exampleJS55_1() {
	var set = new Set("a", "b");
	alert("Length = " + set.n);

	set.add("a", "d");
	alert("Length = " + set.n);
}


var collections;
if(!collections) collections = {};

collections.sets = (function() {
	return {};
}());