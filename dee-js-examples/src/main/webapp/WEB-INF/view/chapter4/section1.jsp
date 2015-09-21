<script type="text/javascript" src='<c:url value="/resources/js/chapter4/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Functions</h3>
    <div class = "section">
    	<p class="title">Defining Function</p>
    	<ul>
			<li>function declaration statements are hoisted: be invoked from code that appears before they are defined</li>
			<li>function expression define:  can’t refer to a function defined as an expression until it is assigned to a variable</li>
		</ul>
<pre class="code">
function example1(obj) {
	if(obj == null) throw new Error("Obj must be not null");
	// do something
}

// <span class="code-explain">Recursive</span>
function factorial(x) {
	if(x <= 1) return 1;
	return x * factorial(x - 1);
}
</pre>

<pre class="code">
// <span class="code-explain">Expression Define</span>
var test = function(x) { return x * x; }
var test = function square(x) { return x * x; }

// <span class="code-explain">Using as a parameter</span>
data.sort(function(a,b) { return a > b; });

// <span class="code-explain">Function expressions are sometimes defined and immediately invoked:</span>
var test = <strong>(</strong>function(x) { return x * x;}(10)<strong>)</strong>
</pre>


<pre class="code">
function exampleCS4_1() {
	var test = function quare(x)  { 
		return x * x; 
	};
	alert(test(10));
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS4_1()">
</pre>

<pre class="code">
// Nested function: access the parameters and variables of the function that are nested within
function nestedFunc(a, b) {
	var test = function product(x)  { 
		return x * b; 
	};
	alert(test(a));
}
nestedFunc(2,5);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS4_2()">
</pre>


	<p class="title">Invoking Functions</p>
	<ul>
		<li>As <strong>function</strong></li>
		<li>As <strong>method</strong>: is stored as a property of Object</li>
		<li>As <strong>constructor</strong></li>
		<li>Indirect throught thier <strong>call()</strong> and <strong>apply()</strong> methods</li>
	</ul>

	<p class="sub-title">As function</p>
<pre class="code">
function nestedFunc(a, b) {
	var test = function product(x)  { 
		return x * b; 
	};
	alert(test(a));
}
function exampleCS4_2() {
	nestedFunc(2,5);
}
</pre>

	<p class="sub-title">As method</p>
<pre class="code">
function nestedFunc(a, b) {
	var test = function product(x)  { 
		return x * b; 
	};
	alert(test(a));
}
function exampleCS4_3() {
	var a = {f : nestedFunc};
	a.f(2, 5);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS4_3()">
</pre>

<pre class="code">
// <span class="code-explain">Notice to THIS scope</span>
var a = {
	p1 : 10,
	f : function() {
		var self = this;
		alert("this == a: " + (this == a));
		alert("self == a: " + (self == a));

		function nested() {
			alert("this == a: " + (this == a));
			alert("self == a: " + (self == a));
		};

		nested();
	}
};
a.f();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS4_4()">
</pre>

	<p class="sub-title">As constructor</p>
	<ul>
		<li>Preceded by <strong>new keyword</strong></li>
		<li>extend from <strong>prototype</strong> property of the constructor</li>
	</ul>
<pre class="code">
var o = new Object();
var o = new Object;
</pre>

	<p class="sub-title">Indirect Invocation</p>
	<ul>
		<li>Using <strong>call()</strong></li>
		<li>Using <strong>apply()</strong></li>
	</ul>
<pre class="code">
var o = new Object();
var o = new Object;
</pre>


</div>