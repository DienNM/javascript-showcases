<script type="text/javascript" src='<c:url value="/resources/js/chapter3/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Array</h3>
    <div class = "section">
    	<p class="title">Create an Array</p>
<pre class="code">
var array = [1,2,3];
var array = [];
var array = [1, "test", false];
var array = [,,]; // 2 elements which both value are undefined
</pre>

<pre class="code">
var array = new Array(); // Using constructor
var array = new Array(10); // specify length
var array = new Array(5, 4); // Explicitly specify elements
</pre>

	<p class="title">Assigne value to Element</p>
<pre class="code">
var array = new Array();
array[2] = 1;
console.log(array.length); // length = 3

array[-2] = "negative number";
console.log(array.length); // Length = 3

array[4.000] = "value of 4.000";
console.log(array.length); // length = 5
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_1()">
</pre>


	<p class="title">Insert and Remove elements</p>

	<p class="sub-title">push/pop: manipulate elements at the end of array</p>
<pre class="code">
var array = new Array(4,5);

array.push(6); // Insert at endding of Array
console.log(array); // [4, 5, 6]
array.pop(); // Remove last element
console.log(array); //  [4, 5]

delete array[0];
console.log(array); //  [undefined, 5]
</pre>
	<p class="sub-title">unshift/shift: manipulate elements at the beginning of array</p>
<pre class="code">
var array = new Array(4,5);

array.unshift(3); // Insert at beginning of Array
console.log(array); // [3, 4, 5]

array.shift(); // remove first element
console.log(array);  // [4, 5]

delete array[0];
console.log(array); //  [undefined, 5]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_2()">
</pre>


	<p class="title">Iterating Array</p>

	<p class="sub-title">for ... in ...</p>
<pre class="code">
var array = [4,5,,7];
for(var e in array) {
	if(array[e] !== undefined) {
		console.log(array[e]);
	}
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_3()">
</pre>

	<p class="sub-title">forEach <em>ECMAScript 5</em></p>
<pre class="code">
var array = [4,5,,7];
array.forEach(function(e) {
	if(e !== undefined) {
		console.log(e);
	}
});
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS3_3_1()">
</pre>

</div>