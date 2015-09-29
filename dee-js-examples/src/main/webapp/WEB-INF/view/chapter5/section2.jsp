<script type="text/javascript" src='<c:url value="/resources/js/chapter5/section2.js" />'></script>
<div>
    <h2><a name = "section2">Section 2</a></h2>

    <h3>Object Oriented Techniques</h3>
    <div class = "section">
    	<p class="title">Set Class</p>
<pre class="code">
function Set() {
	this.values = {};
	this.length = 0;
	this.add.apply(this, arguments);
}
</pre>

<pre class="code">
Set.prototype = {
	<strong>add</strong> : function() {
		for(var i = 0; i < arguments.length; i++) {
			var str = arguments[i];
			if(!this.values.hasOwnProperty(str)) {
				this.values[str] = str;
				this.length++;
			}
		}
	},
	<strong>remove</strong> : function() {
		for(var i = 0; i < arguments.length; i++) {
			var str = arguments[i];
			if(this.values.hasOwnProperty(str)) {
				delete this.values[str];
				this.length--;
			}
		}
	},
	<strong>contain</strong> : function(value) {
		return this.values.hasOwnProperty(value);
	},

	<strong>size</strong>: function() {
		return this.length;
	}
}
</pre>

<pre class="code">
var set = new Set("test1", "test2");
alert(set.size());

set.add("test3", "test4");
alert("After add test3, test4: Size = " + set.size());

alert("Contains test3: " + (set.contain("test3")));

set.remove("test3");
alert("After remove test3: Size = " + set.size());
alert("Contains test3: " + (set.contain("test3")));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS52_1()">
</pre>




	<p class="title">Enumeration</p>
<pre class="code">
function inherit(p) {
	if(p == null) throw TypeError();
	if(p == undefined) throw TypeError();
	if(Object.create) return Object.create(p);

	function f() {};
	f.prototype = p;
	return new f();
}

</pre>
<pre class="code">
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
</pre>
<pre class="code">
var Gender = enumeration({MALE : "M", FEMALE : "F"});
alert("Gender.MALE.toString(): " + Gender.MALE.toString());
alert("Gender.MALE.valueOf(): " + Gender.MALE.valueOf());
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS52_2()">
</pre>

</div>