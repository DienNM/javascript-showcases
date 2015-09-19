<script type="text/javascript" src='<c:url value="/resources/js/chapter2/section1.js" />'></script>


<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Objects</h3>
    <div class = "section">
    	<p class="sub-title">Object attributes</p>
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
    		<li><strong>Native Object</strong>: defined by ECMAScript; Arrays, Functions, Dates, RegExps</li>
    		<li><strong>Host Object</strong>: defined by host environment (web browser) within which the JavaScript interpreter is embedded. HTMLElement objects</li>
    		<li><strong>User-Defined Object</strong>: created by the execution of JavaScript code</li>
    		<li></li>
    		<li><strong>Own property</strong>: is a property defined directly on an Object</li>
    		<li><strong>Inherited property</strong>: is a property defined by an object’s prototype object</li>
    	</ul>
    	<hr>

    	<p class="title">Create object with <strong><em>literals</em></strong></p>
<pre class="code">var empty = {};
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



	<p class="title">Create object with <strong><em>news</em></strong></p>
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

<span class="code-result">Result> obj.x </span> <input value="check" type="button" onclick="exampleCS1_3()">
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

obj.hasOwnProperty("x"); // true
obj.hasOwnProperty("z"); //false
obj.hasOwnProperty("toString"); // false

var obj = inherit({y: 1});
obj.x = 1;
obj.propertyIsEnumerable("x"); // true
obj.propertyIsEnumerable("y"); // false: y is inherited, not own
obj.propertyIsEnumerable("toString"); // false: is not enumerable

<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS1_4()">
</pre>

</div>