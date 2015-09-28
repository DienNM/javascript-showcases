<script type="text/javascript" src='<c:url value="/resources/js/chapter3/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Array Methods for ECMAScript 5</h3>
    <div class = "section">

	<p class="title">forEach()</p>
	<ul>
		<li>First Argument: Value of element</li>
		<li>Second Argument: Index of element</li>
		<li>Third Argument: Array itself</li>
	</ul>

<pre class="code">
var array = [1,2,3,4,5,6];
array.forEach(function(value) {
	sum += value;
});
array.forEach(function(value, i) {
	sumIndex += i;
});
array.forEach(function(value, i, arr) {
	if(i < 2) {
		arr[i] = 0;
	}
	sum += arr[i];
});
</pre>

<pre class="code">
try {
	array.forEach(function(value, i, arr) {
		if(i >= 3) {
			 throw new Error("StopIteration"); // <span class="code-explain">Throw exception to break the iteration</span>
		}
		sum += arr[i];
	});
} catch(e) {
	console.log(e);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_14()">
</pre>


	<p class="title">map(): <em>Return new array and NOT Affect to original array</em></p>
	<p>Returns an array containing the values returned by that function</p>
<pre class="code">
var array = [1,2,3];
var newArray = array.map(function(value) {
	return value * value;
});
alert(newArray);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_15()">
</pre>


	<p class="title">filter(): <em>Return new array and NOT Affect to original array</em></p>
	<p>Returns an array containing the values returned by that function: true/false. It ignores missing elements in sparse array</p>
<pre class="code">
var array = [1,2,3];
var newArray = array.filter(function(value) {
	return value % 2 == 0;
});
alert(newArray); // 2
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_16()">
</pre>

	<p class="title">every() / some()</p>
	<p>Returns true or false by predicate function</p>
<pre class="code">
var array = [1,2,3,4,5];
var resultEvery = array.every(function(value) {
	return value > 5;
});
var resultSome = array.some(function(value) {
	return value < 5;
});
resultEvery, resultSome // false, true

// Empty Array
array = [];
resultEvery = array.every(function(value) {
	return value > 5;
});
resultSome = array.some(function(value) {
	return value < 5;
});
resultEvery, resultSome // true, false
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_17()">
</pre>



	<p class="title">reduce()</p>
	<p>Combine elements of array to produce a value: processes the array from lowest index to highest</p>
<pre class="code">
var array = [1,2,3,4,5];
var sum = array.reduce(function(x, y) {
	return x + y;
}, 0);

var product = array.reduce(function(x, y) {
	return x * y;
}, 1);
alert("Sum = " + sum + "; Product = " + product);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_18()">
</pre>

<pre class="code">
var array = [{x:1}, {y : 2}, {z : 3}];
var newArray = array.reduce(union);
console.log(newArray); // {x : 1, y = 2, z = 3}

var objects = [{x:1,a:1}, {y:2,a:2}, {z:3,a:3}];
var leftunion = objects.reduce(union);
console.log(leftunion);
// {x:1, y:2, z:3, a:1}
var rightunion = objects.reduceRight(union); // {x:1, y:2, z:3, a:3}
console.log(rightunion);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_20()">
</pre>


	<p class="title">reduceRight()</p>
	<p>Combine elements of array to produce a value: processes the array from highest index to lowest</p>
<pre class="code">
var array = [1,2,3,4,5];
var sum = array.reduceRight(function(x, y) {
	return x + y;
}, 0);

var product = array.reduceRight(function(x, y) {
	return x * y;
}, 1);
alert("Sum = " + sum + "; Product = " + product);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_19()">
</pre>

</div>