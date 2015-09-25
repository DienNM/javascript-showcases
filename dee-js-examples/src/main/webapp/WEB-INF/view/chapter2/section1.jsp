<script type="text/javascript" src='<c:url value="/resources/js/chapter2/section1.js" />'></script>


<div>
    <h2><a name = "section1">Section 1</a></h2>
    <h3>Objects</h3>

    <div class = "section">
    	<p class="sub-title">Object Attributes</p>
    	<ul>
    		<li><strong>prototype</strong>: is a reference to another object from which properties are inherited</li>
    		<li><strong>class</strong>: is a string that categorizes the type of an object</li>
    		<li><strong>extensible flag</strong> specifies (in ECMAScript 5) whether new properties may be added to the object</li>
    	</ul>

    	<p class="sub-title">Property attributes</p>
    	<ul>
    		<li><strong>writable</strong>: specifies whether the value of the property can be set</li>
    		<li><strong>enumerable</strong>: specifies whether the property name is returned by a for/in loop</li>
    		<li><strong>configurable</strong>: specifies whether the property can be deleted and whether its attributes can be altered</li>
    	</ul>

    	<p class="sub-title">Clarify Javascript Objects/Properties</p>
    	<ul>
    		<li>Class Classification</li>
    		<ul>
    			<li><strong>Native Object</strong>: defined by ECMAScript; Arrays, Functions, Dates, RegExps</li>
	    		<li><strong>Host Object</strong>: defined by host environment (web browser) within which the JavaScript interpreter is embedded. HTMLElement objects</li>
	    		<li><strong>User-Defined Object</strong>: created by the execution of JavaScript code</li>
    		</ul>
    		<li>Property Classification</li>
	    	<ul>
	    		<li><strong>Own property</strong>: is a property defined directly on an Object</li>
    			<li><strong>Inherited property</strong>: is a property defined by an object’s prototype object</li>
	    	</ul>
    		
    	</ul>
    	<hr>

    	<p class="title">Create object with <strong><em>literals</em></strong></p>

<pre class="code">
var empty = {};
var point = { x:0, y:0 };
var point2 = { x: point.x, y: point.y+1 };
var book = {
	"main title": "JavaScript",
	'sub-title': "The Definitive Guide",
	"for": "all audiences",
	author: {
		firstname: "David",
		surname: "Flanagan"
	}
};
<span class="code-result">Result> book.for </span> <input value="check" type="button" onclick="exampleCS1_1()">
</pre>



	<p class="title">Create object with <strong><em>New</em></strong></p>
	<p>The new keyword must be followed by a function invocation => constructor</p>
<pre class="code">
var date = new Date();
var array = new Array();
var obj = new Object();
var regexp = new RegExp("js");
</pre>



	<p class="title">Create object with <strong><em>prototype</em></strong></p>
	<p>Every object in Javascript has a second Object associated with it, called <strong>prototype</strong>. First object inherits properties from prototype</p>
	<ul>
		<li>All objects created by <em>Literals</em> have the same prototype object. Refer: <strong>Object.prototype</strong></li>
		<li>All objects created by <em>new keyword</em> use value of prototype property of constructor function.</li>
		<ul>
			<li>new Object() or {} => using <strong>Object.prototype</strong></li>
			<li>new Array() => using <strong>Array.prototype</strong></li>
			<li>new Date() => using <strong>Date.prototype</strong></li>
		</ul>
	</ul>
    </div>

    <p class="title">Create object with <strong><em>Object.create()</em></strong></p>
    <p>Using in ECMAScript 5</p>
<pre class="code">
var o1 = Object.create({x:1, y:2}); // o1 inherits properties x and y
var o2 = Object.create(null); // // o2 inherits no props or methods
var o3 = Object.create(Object.prototype); // o3 is like {} or new Object()

<span class="code-result">Result> o1.x </span> <input value="check" type="button" onclick="exampleCS1_2()">
</pre>

<p>Using in ECMAScript 3</p>
<pre class="code">

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

var obj = inherit({ x : 1, y : 2});
<span class="code-result">Result> obj = ? </span> <input value="check" type="button" onclick="exampleCS1_3()">
</pre>


	<p class="title">Testing Properties</p>
	<ul>
		<li><strong>in</strong>: true if has an own property or an inherited property by that name</li>
		<li><strong>hasOwnProperty()</strong>: true if has an own property, false for an inherted property</li>
		<li><strong>propertyIsEnumerable()</strong>: (refines of hasOwnProperty()) true if the named property is an own property and enumerable attribute is true. Built-in property is not enumerable</li>
	</ul>


	<p class="sub-title">in</p>
<pre class="code">
var obj = {x: 1};
"x" in obj; // true
"z" in obj; // false
"toString" in obj // true
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_4()">
</pre>


	<p class="sub-title">hasOwnProperty</p>
<pre class="code">
var obj = {x: 1};
obj.hasOwnProperty("x"); // true
obj.hasOwnProperty("z"); //false
obj.hasOwnProperty("toString"); // false
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_5()">
</pre>



	<p class="sub-title">propertyIsEnumerable</p>
<pre class="code">
var obj = inherit({y: 1});
obj.x = 1;
obj.propertyIsEnumerable("x"); // true
obj.propertyIsEnumerable("y"); // false: y is inherited, not own
obj.propertyIsEnumerable("toString"); // false: is not enumerable
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_6()">
</pre>


	<p class="sub-title">Example extend</p>
<pre class="code">
function extend(target, source) {
	for(var att in source) {
		target[att] = source[att];
	}
	return target;
}
</pre>
<pre class="code">
var source = inherit({x: 1, y:2});
var target = inherit({x: 1, z:2});
extend(target, source);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_7()">
</pre>
	
	<p class="sub-title">Example Merge</p>
<pre class="code">
function merge(target, source) {
	for(var att in source) {
		if(target.isOwnProperty("att")) continue;
		target[att] = source[att];
	}
	return target;
}
</pre>
<pre class="code">
var source = inherit({x: 1, y:2});
var target = inherit({x: 1, z:2});
merge(target, source);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_8()">
</pre>


	<p class="sub-title">Example Restrict</p>
<pre class="code">
function restrict(target, source) {
	var obj = extend({}, target);
	for(var att in target) {
		if(!(att in source)) {
			delete obj[att];
		}
	}
	return obj;
}
</pre>
<pre class="code">
var source = inherit({x: 1, y:2});
var target = inherit({x: 1, z:2});
restrict(target, source);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_9()">
</pre>


	<p class="sub-title">Example Subtract</p>
<pre class="code">
function subtract(target, source) {
	var obj = extend({}, target);
	for(var att in source) {
		delete obj[att];
	}
	return obj;
}
</pre>
<pre class="code">
var source = inherit({x: 1, y:2});
var target = inherit({x: 1, z:2});
subtract(target, source);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_10()">
</pre>


	<p class="sub-title">Example Union</p>
<pre class="code">
function union(target, source) {
	return extend(extend({}, target), source);
}
</pre>
<pre class="code">
var source = inherit({x: 1, y:2});
var target = inherit({x: 1, z:2});
union(target, source);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_11()">
</pre>


	<p class="sub-title">Example intersection</p>
<pre class="code">
function intersection(target, source) {
	return restrict(extend({}, target), source);
}
</pre>
<pre class="code">
var source = inherit({x: 1, y:2});
var target = inherit({x: 1, z:2});
intersection(target, source);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_12()">
</pre>


	<p class="title">Setter & Getter</p>

<pre class="code">
var obj = {
	prop1 : 1,
	get prop2() {
		return this.prop1 * 10;
	},
	set prop2(value) {
		this.prop1 = value;
	}
};

alert(obj.prop2);
obj.prop2 = 10
alert(obj.prop2);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS1_13_0()">
</pre>


	<ul>
		<li><strong>Object.getOwnPropertyDescriptor()</strong>: get property attributes, such <em>value, writable, enumerable, configurable</em></li>
		<li><strong>Object.defineProperty</strong>: defines property with specifying attributes</li>
	</ul>
	<p>Get own properties attributes, using Object.getOwnPropertyDescriptor()</p>

<p class="sub-title">Get Property Attributes</p>
<pre class="code">
var student = {
	email: "nmdien61@gmail.com",
	get clazz() {
		return "class1";
	},
	set name(value) {
	}
};
</pre>
<pre class="code">
console.log(Object.getOwnPropertyDescriptor(student, "email"));
console.log(Object.getOwnPropertyDescriptor(student, "clazz"));
console.log(Object.getOwnPropertyDescriptor(student, "name"));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_13()">
</pre>

<p class="sub-title">Defined Property with specific Attributes</p>
<pre class="code">
var student = {
	email: "nmdien61@gmail.com"
};

Object.defineProperty(student, "clazz", {
	value : "class1",
	writable: true,
	enumerable: false,
	configurable: false
});

alert("Object.keys(student) = " + (Object.keys(student)) );

Object.defineProperty(student, "name", {
	value : "class1",
	writable: true,
	enumerable: true,
	configurable: false
});

alert("Object.keys(student) = " + (Object.keys(student)) );

alert("student.clazz = " + (student.clazz) + "\n" + 
	"delete student.email = " + (delete student.email) + "\n" +
	"delete student.clazz = " + (delete student.clazz));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_14()">
</pre>


	<p class="sub-title">Defined Properties with specific Attributes</p>
<pre class="code">
var student = Object.defineProperties({}, {
	{
		"clazz" : {value : "class1", writable: true, enumerable: false, configurable: false}
		"email" : {value : "nmdien61@gmail.com", writable: true, enumerable: true, configurable: true}
	}
});

alert("Object.keys(student) = " + (Object.keys(student)) );

alert("student.clazz = " + (student.clazz) + "\n" + 
	"delete student.email = " + (delete student.email) + "\n" +
	"delete student.clazz = " + (delete student.clazz));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_15()">
</pre>

	<p class="title">Determine Object's Prototype</p>
<pre class="code">
var array = new Array();
var customArray = Object.create(array);

alert("customArray.isPrototypeOf(array) : " + (customArray.isPrototypeOf(array)));
alert("array.isPrototypeOf(customArray) : " + (array.isPrototypeOf(customArray)));

alert("customArray instanceof array : " + (customArray instanceof Array));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS1_16()">
</pre>

	<p class="title">Classof</p>
<pre class="code">
function classof(o) {
	if (o === null) return "Null";
	if (o === undefined) return "Undefined";
	return Object.prototype.toString.call(o).slice(8,-1);
}
</pre>
<pre class="code">
alert("classof(null) = " + classof(null));
alert("classof(undefined) = " + classof(undefined));
alert("classof([]) = " + classof([]]));
alert("classof({}) = " + classof({}}));
alert("classof(new Date()) = " + classof(new Date()));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS1_17()">
</pre>

</div>