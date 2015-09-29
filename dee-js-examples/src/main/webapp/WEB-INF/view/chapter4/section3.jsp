<script type="text/javascript" src='<c:url value="/resources/js/chapter4/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Function Programming</h3>
    <div class = "section">

    	<p class="title">Higher-Order Functions</p>
    	<p>This is a function that operates on functions, taking one or more functions as arguments and returning a new function</p>

   	<p class="sub-title">Example 1</p>
<pre class="code">
function not(f) {
	return function() { // Return a new function
	var result = f.apply(this, arguments); // that calls f
		return !result; // and negates its result.
	};
}
var n = not(isNaN);
alert("not(isNaN(1)): " + n(1));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS43_1()">
</pre>

	<p class="sub-title">Example 2: Compose(f,g) => f(g());</p>
<pre class="code">
function sum(/** ... **/) {
	var sum = 0;
	for(var i in arguments) {
		sum += arguments[i];
	}
	return sum;
}
</pre>

<pre class="code">
function square(x) {
	return x * x;
}
var cp = compose(square, sum);
alert(cp(1,2));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS43_2()">
</pre>

	<p class="sub-title">Example 3: Partial function</p>
<pre class="code">
function arraySlice(args, start) {
	var arr = [];
	for(var i = start; i < args.length ; i++) {
		arr.push(args[i]);
	}
	return arr;
}
</pre>
<pre class="code">
function partialLeft(f /**, ... **/) {
	var args = arguments;
	return function() {
		var array = arraySlice(args, 1);
		for(var i in arguments) {
			array[array.length] = arguments[i];
		}
		console.log(array);
		return f.apply(this, array);
	}
}
</pre>
<pre class="code">
function partialRight(f /**, ... **/) {
	var args = arguments;
	return function() {
		var array = arraySlice(arguments, 0);
		var pArgs = arraySlice(args, 1);
		for(var i in pArgs) {
			array.push(pArgs[i]);
		}
		console.log(array);
		return f.apply(this, array);
	}
}
</pre>

<pre class="code">
var f = function(x, y, z) {return x * (y - z);};
var left = partialLeft(f, 2);
alert("left(3, 4) = " + left(3, 4)); // 2,3,4 = -2
var right = partialRight(f, 2);
alert("right(3, 4) = " + right(3, 4)); // 3,4,2 = 6
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS43_3()">
</pre>

</div>