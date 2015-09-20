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

var array = new Array(); // Using constructor
var array = new Array(10); // specify length
var array = new Array(5, 4, 3, 2, 1, "testing, testing");
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
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_1()">
</pre>


	<p class="title">Adding and Deleting Array Elements</p>
<pre class="code">
var array = new Array(4,5);

array.push(6); // Insert at endding of Array
console.log(array); // [4, 5]

array.unshift(3); // Insert at beginning of Array
console.log(array); // [3, 4, 5, 6]

array.pop(); // Remove last element
console.log(array); //  [3, 4, 5]

array.shift(); // remove first element
console.log(array);  // [4, 5]

delete array[0];
console.log(array); //  [undefined, 5]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_2()">
</pre>


	<p class="title">Iterating Array</p>
<pre class="code">
var array = [4,5,,7];
for(var e in array) {
	if(array[e] !== undefined) {
		console.log(array[e]);
	}
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_3()">
</pre>


	<p class="title">Array Methods</p>
	<p class="sub-title">join()</p>
<pre class="code">
var array = [4,5,,7];
console.log(array.join()); // "4,5,,7"
console.log(array.join(" ")); // "4 5  7"
console.log(array.join(",")); // <span class="code-explain">"4,5,,7"</span>

array = new Array(10);
console.log(array.join("-")); // "----------"

<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_4()">
</pre>

	<p class="sub-title">reverse()</p>
<pre class="code">
var array = [4,5,6,7];
console.log(array.reverse().join()); // <span class="code-explain">"7,6,5,4"</span>
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_5()">
</pre>


	<p class="sub-title">sort()</p>
<pre class="code">
var array = ["vietnam", "china", "us", "indian"];
console.log(array.sort().join()); // <span class="code-explain">china,indian,us,vietnam : sort in alphabetical order</span>

array = ["test", NaN, null, "1",undefined, 2, 0];
var arraySorted = array.sort();
for(var e in arraySorted) {
	console.log(arraySorted[e]); // <span class="code-explain">0,1,2,NaN,null,test,undefined</span>
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_6()">
</pre>


<pre class="code">
var array = [200, 100, 456, 55];
array.sort(function(e1, e2) {
	return e1 - e2; 
});
console.log(array); //  [55, 100, 200, 456]

array.sort(function(e1, e2) {
	return e2 - e1; 
});
console.log(array); //   [456, 200, 100, 55]

array = ["vietnam", "china", "US", "indian"];
array.sort();
console.log(array); //    ["US", "china", "indian", "vietnam"]

array.sort(function(e1, e2) {
	var a = e1.toLowerCase();
	var b = e2.toLowerCase();
	if (a < b) return -1;
	if (a > b) return 1;
	return 0;
});
console.log(array); //    ["china", "indian", "US", "vietnam"]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_7()">
</pre>

	
	<p class="sub-title">concat()</p>
<pre class="code">
var array = [1,2];
array.concat(5,6);
console.log(array); //  [1, 2]

array = array.concat(5,6);
console.log(array); //  [1, 2, 5, 6]

array = array.concat([7,8], 3,4);
console.log(array); //  [1, 2, 5, 6, 7, 8, 3, 4]

array = array.concat([7,8], 3,4, [10, [11, 12]]);
console.log(array); //  [1, 2, 5, 6, 7, 8, 3, 4, 10, [11, 12]]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_8()">
</pre>


	<p class="sub-title">slice()</p>
<pre class="code">
var array = [1,2,3,4,5];
console.log(array.slice(0,2)); //  [1, 2]
console.log(array.slice(2)); //  [3,4,5]
console.log(array.slice(1, -1)); //  [2,3,4]
console.log(array.slice(1, -2)); //  [2,3]
console.log(array.slice(-2)); //  [4,5]
console.log(array.slice(-4, -2)); //  [2, 3]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_9()">
</pre>

	<p class="sub-title">splice()</p>
<pre class="code">
var array = [1,2,3,4,5];
array.splice(2,1);
console.log(array); //  [1, 2, 4, 5]

array.splice(2,0, "a", "b");
console.log(array); //  [1, 2, "a", "b", 4, 5]

array.splice(2,2, [3,4], 6);
console.log(array); //  [1, 2, [3,4], 6, 4, 5]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_10()">
</pre>

	<p class="sub-title">push() / pop()</p>
<pre class="code">
var stack = [1,2];
stack.push(3);
console.log(stack); //  [1, 2, 3]

stack.pop();
console.log(stack); //  [1, 2]

stack.push(3,4,5);
console.log(stack); //  [1, 2, 3, 4 , 5]

stack.pop();
stack.pop();
console.log(stack); //  [1, 2, 3]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_11()">
</pre>

	<p class="sub-title">unshift() / shift()</p>
<pre class="code">
var array = [1,2];
array.unshift(3);
console.log(array); //  [3, 1, 2]

array.shift();
console.log(array); //  [1, 2]

array.unshift(3,4,5);
console.log(array); //  [3, 4, 5, 1, 2]

array.shift();
array.shift();
console.log(array); //  [5, 1, 2]
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_12()">
</pre>

	<p class="sub-title">toString() / toLocaleString()</p>
<pre class="code">
var array = [1,2,3, [4, [5, 6]]];
console.log(array.toString()); //  "1,2,3,4,5,6"
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_13()">
</pre>


	<p class="title">ECMAScript 5: Array Methods</p>
	<p class="sub-title">forEach()</p>
	<p>This method accepts 3 parameters. First: value of element, Seconde: index, third: itself</p>
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
try {
	array.forEach(function(value, i, arr) {
		if(i >= 3) {
			 throw new Error("StopIteration"); // Throw exception to break the iteration
		}
		sum += arr[i];
	});
} catch(e) {
	console.log(e);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_14()">
</pre>


	<p class="sub-title">map()</p>
	<p>Returns an array containing the values returned by that function</p>
<pre class="code">
var array = [1,2,3];
var newArray = array.map(function(value) {
	return value * value;
});
alert(newArray);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_15()">
</pre>


	<p class="sub-title">filter()</p>
	<p>Returns an array containing the values returned by that function: true/false. It ignores missing elements in sparse array</p>
<pre class="code">
var array = [1,2,3];
var newArray = array.filter(function(value) {
	return value % 2 == 0;
});
alert(newArray); // 2
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_16()">
</pre>

	<p class="sub-title">every() / some()</p>
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
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_17()">
</pre>



	<p class="sub-title">reduce()</p>
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
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_18()">
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
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_20()">
</pre>


	<p class="sub-title">reduceRight()</p>
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
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleCS3_19()">
</pre>

</div>