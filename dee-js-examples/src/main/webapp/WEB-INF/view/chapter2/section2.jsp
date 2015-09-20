<script type="text/javascript" src='<c:url value="/resources/js/chapter2/section2.js" />'></script>


<div>
    <h2><a name = "section2">Section 2</a></h2>

    <h3>Object Attributes</h3>
    <div class = "section">
    	<p>Object has 3 Attributes</p>
    	<ul>
    		<li><strong>prototype</strong>: specifies the object from which it inherits properties</li>
    		<li><strong>class</strong></li>
    		<li><strong>extensible</strong></li>
    	</ul>
    	<hr>

    	<p class="title">Prototype</p>
<pre class="code">
var user = { name : ""};
var student = Object.create(user);

alert(
	"user.isPrototypeOf(student) = " + (user.isPrototypeOf(student)) + "\n" +
	"Object.prototype.isPrototypeOf(student) = " + (Object.prototype.isPrototypeOf(student))
);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS2_1()">
</pre>

<p class="title">class</p>
<pre class="code">
function classof(obj) {
	if(obj == null) return "Null";
	if(obj == undefined) return "Undefined";
	return Object.prototype.toString.call(obj).slice(8, -1);
}

alert(
	"classof(null) = " + (classof(null)) + "\n" + 
	"classof(1) = " + (classof(1)) + "\n" +
	"classof(new Array()) = " + (classof(new Array())) + "\n" +
	"classof(new Date()) = " + (classof(new Date())) + "\n" +
	"classof('test') = " + (classof("test")) + "\n" +
	"classof({}) = " + (classof({})) + "\n" +
	"classof([]) = " + (classof([]))
);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS2_2()">
</pre>

	<p class="title">Extensible</p>
	<ul>
		<li><strong>Object.preventExtensions()</strong>: make object nonExtensible</li>
		<li>Object.isExtensible()</li>
		<li><strong>Object.seal()</strong>: make object nonExtensible + make all own properties unConfigurable</li>
		<li>Object.isSealed(): Only effects on object passed</li>
		<li><strong>Object.freeze()</strong>: make object nonExtensible + make all own properties unConfigurable + read-only</li>
		<li>Object.isFrozen(): Only effects on object passed</li>
	</ul>

<pre class="code">
var o = Object.seal(
	Object.create(Object.freeze({x:1}),
	{y: {value: 2, writable: true}})
);
</pre>

</div>