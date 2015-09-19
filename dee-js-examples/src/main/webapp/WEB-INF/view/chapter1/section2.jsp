<script type="text/javascript" src='<c:url value="/resources/js/chapter1/section2.js" />'></script>


<div>
    <h2><a name = "section2">Section 2</a></h2>
    <div class = "section">

<p>Division by Zero (0)</p>
<pre class="code">
var a = 1;
a/0
<span class="code-result">Result> Infinity</span> <input value="check" type="button" onclick="exampleCS2_1()">
</pre>
<pre class="code">
var a = 0;
a/0
<span class="code-result">Result> NaN</span> <input value="check" type="button" onclick="exampleCS2_2()">
</pre>
<pre class="code">
Number.POSITIVE_INFINITY = Infinity
Infinity = Infinity
1/0 = Infinity

Number.NEGATIVE_INFINITY = -Infinity
-Infinity = -Infinity
-1/0 = -Infinity

NaN = NaN
Number.NaN = NaN
0/0 = NaN

Number.MIN_VALUE/2 = 0
-Number.MIN_VALUE/2 = 0
-1/Infinity = 0
-0  = 0
<span class="code-result">Result> <input value="check" type="button" onclick="exampleCS2_3()"></span> 
</pre>

<p>Binary Floating-Point and Rounding Errors</p>
<pre class="code">
var x = .3 - .2;
var y = .2 - .1;
x == y; x == .1; y == .1;
<span class="code-result"> Result> <input value="check" type="button" onclick="exampleCS2_4()"></span>
</pre>

<p>Falsy Values</p>
<pre class="code">
undefined
null
0
-0
NaN
"" // the empty string
<span class="code-result"> Result> <input value="check" type="button" onclick="exampleCS2_5()"></span>
</pre>

<p>null and undefined</p>
<pre class="code">
null - is an object > No value
undefined - is a global value

console.log(typeof null) => object
console.log(typeof undefined => undefined

null == undefined => ?;
null === undefined => ?;

<span class="code-result"> Result> null == undefined => True; null === undefined => false</span>
</pre>




<p>Wrapper Objects</p>
<pre class="code">
var s = "dee";
s.len =10; > <span class="code-explain">Created a temporary String Object, set len property, after that discards that object</span>
var t = s.len;
<span class="code-result"> Result> t = ? <input value="check" type="button" onclick="exampleCS2_6()"></span>
</pre>

<pre class="code">
var s = new String("dee");
s.len =10;
var t = s.len;
<span class="code-result"> Result> t = ? <input value="check" type="button" onclick="exampleCS2_7()"></span>
</pre>




<p>Immutable Primitive Values and Mutable Object References</p>
<pre class="code">
// Primitive: compare by value
var s = "hello";
s.toUpperCase();

<span class="code-result"> Result> s = ? <input value="check" type="button" onclick="exampleCS2_8()"></span>
</pre>

<pre class="code">
// Object: compare by reference
function exampleCS2_9_0(obj) {
	obj.y = 15;
}

function exampleCS2_9() {
	var s = { x : 10};
	s.x = 15;
	exampleCS2_9_0(s);
	alert("s.x = " + s.x + " - s.y = " + s.y);
}
<span class="code-result"> Result> exampleCS2_9() <input value="check" type="button" onclick="exampleCS2_9()"></span>
</pre>




    </div>
</div>