<script type="text/javascript" src='<c:url value="/resources/js/chapter3/section4.js" />'></script>
<div>
    <h2><a name = "section4">Section 4</a></h2>

    <h3>Array Type</h3>
    <div class = "section">

	<p class="title">isArray(): static method</p>

<pre class="code">
Array.isArray([]); // true;
Array.isArray({}); // false;
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_21()">
</pre>

<pre class="code">
var isArray = Function.isArray || function(o) {
	return typeof o === "object" && Object.prototype.toString.call(o) === "[object Array]";
}
alert("isArray([]): " + (isArray([])));
alert("isArray({}): " + (isArray({})));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_22()">
</pre>

</div>