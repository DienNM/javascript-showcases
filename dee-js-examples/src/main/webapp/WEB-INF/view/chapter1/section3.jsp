<script type="text/javascript" src='<c:url value="/resources/js/chapter1/section3.js" />'></script>


<div>
    <h2><a name = "section3">Section 3</a></h2>
    <div class = "section">

 	<p class = "title">Primitive to Primitive Conversion</p>
<pre class="code">
-0 // String: "0"
-Infinity // String: "Infinity"
[] // String: "";

undefined // Number: NaN
null // Number: 0
true // Number: 1
false // Number: 0

undefined // Object: throws TypeError
null // Object: throws TypeError
</pre>



<p class = "title">Explicit Conversions</p>

<pre class="code">
Number("3") // Number
String(false) // String
Boolean([])  // Boolean
Object(3) // Number
</pre>

<p class="sub-title">Convert Number to String. Using toFixed(), toExponential(), toPrecision()</p>
<pre class="code">
var n = 123456.789;
n.toFixed(0); // "123457"
n.toFixed(2); // "123456.79"
n.toFixed(5); // "123456.78900"
n.toExponential(1); // "1.2e+5"
n.toExponential(3); // "1.235e+5"
n.toPrecision(4); // "1.235e+5"
n.toPrecision(7); // "123456.8"
n.toPrecision(10); // "123456.7890"
</pre>

<p class="sub-title">Convert String to Number: parseInt(), parseFloat(); They skip whitespaces</p>
<pre class="code">
parseInt("3 blind mice") // 3 
parseFloat(" 3.14 meters") // 3.14
parseInt("-12.34") // -12
parseInt("0xFF") // 255
parseInt("0xff") // 255
parseInt("-0XFF") // -255
parseFloat(".1") // 0.1
parseInt("0.1") // 0
parseInt(".1") // NaN: integers cannot start with "."
parseFloat("$72.47"); // NaN: numbers cannot start with "$"
</pre>



<p class="title">Object to Primitive Conversions</p>
<p class="sub-title">Object-to-boolean</p>
<p>All objects (including arrays and functions) are converted to TRUE, except FALSY value</p>
<pre class="code">
new Boolean(false) -> TRUE
</pre>

<p class="sub-title">Object-to-string</p>
<ul>
	<li>toString(): return a string representation</li>
	<ul>
		<li>Array: each array element to a string and joins the resulting strings together with commas in between.</li>
		<li>Function: implementation-defined representation of a function</li>
		<li>Date: human readable (and JavaScript-parsable) date and time string</li>
		<li>RegExp: looks like a RegExp literal</li>
	</ul>
	<li>valueOf(): convert object to primitive that represents to object, if such primitive value exists</li>
	<ul>
		<li>Array: return object itself</li>
		<li>RegExp: return object itself</li>
		<li>Date: a number of milliseconds since January 1, 1970</li>
	</ul>
</ul>
<pre class="code">
({x:1, y:2}).toString() // => "[object Object]"
[1,2,3].toString() // => "1,2,3"
(function(x) { f(x); }).toString() // => "function(x) {\nf(x);\n}"
/\d+/g.toString() // => "/\\d+/g"
new Date(2010,0,1).toString() // => "Fri Jan 01 2010 00:00:00 GMT-0800 (PST)"

var d = new Date(2010, 0, 1);  // January 1st, 2010, (Pacific time)
d.valueOf() // => 1262332800000
</pre>

<p class = "sub-title">Steps to convert Object to A String:</p>
<ul>
	<li>Call toString() if supported</li>
	<ul>
		<li>If Returns a primitive value: => Convert to String (if not already a string)</li>
	</ul>
	<li>If toString() NOT supported or toString() NOT returns a primitive value</li>
	<ul>
		<li>Call valueOf() if Supported</li>
		<ul>
			<li>If Returns a primitive value: => Convert to String (if not already a string)</li>
			<li>Else: throws TypeError</li>
		</ul>
	</ul>
</ul>

<p class = "sub-title">Steps to convert Object to A Number:</p>
<ul>
	<li>Call valueOf() if supported</li>
	<ul>
		<li>If Returns a primitive value: => Convert to Number</li>
	</ul>
	<li>If valueOf() NOT supported or valueOf() NOT returns a primitive value</li>
	<ul>
		<li>Call toString() if Supported</li>
		<ul>
			<li>If Returns a primitive value: => Convert to Number</li>
			<li>Else: throws TypeError</li>
		</ul>
	</ul>
</ul>

<p class = "sub-title">Conversion in <strong>+, ==</strong> Operation</p>
<p>If either of its operands is an object, using: Object-TO-Primtive</p>
<ul>
	<li>Using convert object-to-string for <strong>DATE</strong> object </li>
	<li>Using convert object-to-number for all objects not <strong>DATE</strong> object</li>
</ul>

<p class = "sub-title">Conversion in other Operations</p>
<p>If either of its operands is an object, using: Object-TO-Primtive</p>
<ul>
	<li>Using valueOf() first</li>
	<li>Using toString() then</li>
</ul>
<pre class="code">
var now = new Date(); // Create a Date object
typeof (now + 1) // => "string": + converts dates to strings
typeof (now - 1) // => "number": - uses object-to-number conversion

now == now.toString() // => true: implicit and explicit string conversions
now > (now -1) // => true: > converts a Date to a number
</pre>

    </div>
</div>