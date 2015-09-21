<script type="text/javascript" src='<c:url value="/resources/js/chapter4/section2.js" />'></script>
<div>
    <h2><a name = "section1">Section 2</a></h2>

    <h3>Function Arguments & Parameters</h3>
    <div class = "section">
    	<p class="title">Optional Parameters</p>
<pre class="code">
function exampleOptionalArgs(p1, /** optional **/ p2) {
	if(p2 == undefined) p2 = 0;
	return p1 + p2;
}
alert(exampleOptionalArgs(2));
alert(exampleOptionalArgs(2, 3));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_1()">
</pre>


    	<p class="title">Arguments Object</p>
    	<ul>
    		<li><strong>arguments</strong>: refers to Argument object</li>
    	</ul>
<pre class="code">
function exampleArgsObj(/* ... */) {
	var sum = 0;
	for(var a in arguments) {
		sum += arguments[a];
	}
	return sum;
}

alert(exampleArgsObj(1,2,3));
alert(exampleArgsObj(1,2,3,4,5));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_2()">
</pre>

<pre class="code">
// Change arguments lead to change parameter values too
function changeArgs(a) {
	alert("a = " + a);
	arguments[0] = "changed";
	alert("a = " + a);
}
changeArgs(1)
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_3()">
</pre>

<pre class="code">
// Callee
var callee = function (a) {
	if(a <= 1) {
		return 1;
	}
	arguments.callee(a - 1); 
};
callee(1);
callee(2);
</pre>


	<p class="title">Closure</p>
	<p>Remember the fundamental rule of lexical scoping: JavaScript functions are executed using the scope chain that was in effect when <strong>they were defined</strong></p>
<pre class="code">
var scope = "global scope"; // A global variable
function checkscope() {
	var scope = "local scope"; // A local variable
	function f() { return scope; } // Return the value in scope here
	return f<strong>()</strong>;
}
checkscope();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_5()">
</pre>

<pre class="code">
var scope = "global scope"; // A global variable
function checkscope() {
	var scope = "local scope"; // A local variable
	function f() { return scope; } // Return the value in scope here
	return f;
}
checkscope()<strong>()</strong>;
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_6()">
</pre>

<pre class="code">
function counter1() {
	var n = 0;
	return {
		count: function() {
			n++;
			alert(n);
		}
	} 
}

counter1().count();
counter1().count();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_7()">
var counter = counter1();
counter.count();
counter.count();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS42_8()">
</pre>



</div>