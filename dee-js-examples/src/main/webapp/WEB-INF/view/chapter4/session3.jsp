<script type="text/javascript" src='<c:url value="/resources/js/chapter4/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Function Programming</h3>
    <div class = "section">
    	<p class="title">Higher-Order Functions</p>
    	<p>This is a function that operates on functions, taking one or more functions as arguments and returning a new function</p>
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

sss
<pre class="code">
function sum(/** ... **/) {
	var sum = 0;
	for(var i in arguments) {
		sum += arguments[i];
	}
	return sum;
}

function square(x) {
	return x * x;
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS43_2()">
</pre>



</div>