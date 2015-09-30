<script type="text/javascript" src='<c:url value="/resources/js/chapter9/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Argument</h3>
    <div class = "section">

    	<p class="title">Argument Object</p>
    	<ul>
    		<li>Properties:</li>
    		<ul>
    			<li>callee</li>
    			<li>length</li>
    		</ul>
    	</ul>

    	<p class="sub-title">arguments</p>

<pre class="code">
function argumentsExample(a) {
	alert("a === arguments[0]: " + (a === arguments[0]));
	alert("arguments[1]: " + arguments[1]);

	arguments[0] = 0;
	alert("a " + a);
}
</pre>

<pre class="code">
argumentsExample(1, 10);

<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS91_1()">
</pre>


	<p class="sub-title">arguments.callee()</p>
<pre class="code">
function factorial(x) {
	if(x < 2) return 1;
	return x * arguments.callee(x - 1);
}
</pre>

<pre class="code">
alert(factorial(1));
alert(factorial(10));
alert(factorial(20));

<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS91_2()">
</pre>

		<p class="sub-title">arguments.length</p>
<pre class="code">
function checkParams(args) {
	var actualLength = args.length;
	var expectedLength = args.callee.length;
	if(actualLength !== expectedLength) {
		throw "Wrong number of arguments";
	}
}
</pre>

<pre class="code">
function argumentsLength(a, b, c) {
	checkParams(arguments);
	return (a + b) / c;
}
</pre>

<pre class="code">
alert(argumentsLength(1,2,3));
try {
	alert(argumentsLength(1,2));
} catch(e) {
	alert(e);
}
try {
	alert(argumentsLength(1,2,3,4));
} catch(e) {
	alert(e);
}
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS91_3()">
</pre>

   
    </div>
</div>