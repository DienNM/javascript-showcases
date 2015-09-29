<script type="text/javascript" src='<c:url value="/resources/js/chapter5/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Class and Type</h3>
    <div class = "section">
    	<p class="title">instanceof operation / isPrototypeOf()</p>
		<p><strong>Shortcomming</strong> > multiple execution contexts</p>
    	<ul>
    		<li>left-hand: object whose class is being tested</li>
    		<li>right-hand: constructor function that names the class</li>
    		<li><strong>o instanceof c</strong> evaluates is true if o inherits from <em>c.prototype</em></li>
    	</ul>

<pre class="code">
var date = new Date();
var string = new String();
alert("date instanceof Date = " + (date instanceof Date));
alert("date instanceof String = " + (date instanceof String));
alert("string instanceof String = " + (string instanceof String));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS53_1()">
</pre>


		<p class="title">Using constructor property</p>
		<p><strong>Shortcomming</strong> > multiple execution contexts</p>
<pre class="code">
function typeAndValue(x) {
	if(x == null) return "";
	switch(x.constructor) {
		case Number: return "Number " + x;
		case String: return "String '" + x + "'";
		case Date: return "Date " + x;
		case UserDefined: return "UserDefined: " + x;
	}
}
</pre>
<pre class="code">
function UserDefined() {
	this.x = "";
}
</pre>
<pre class="code">
alert(typeAndValue(1));
alert(typeAndValue("DEE"));
alert(typeAndValue(new Date()));
alert(typeAndValue(new UserDefined()));
alert(typeAndValue(null));
alert(typeAndValue(undefined));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS53_2()">
</pre>


	<p class="title">Using constructor name</p>
<pre class="code">
function type(x) {
	if(x == null) return "null";
	if(x != x) return "nan";

	var t;
	if((t = typeof x) != "object") return t;
	if((t = typeOfName(x)) != 'Object') return t;

	if(x.constructor && x.constructor === 'function' && (t = x.constructor.getName())) return t;
	return "Object";
} 
</pre>
<pre class="code">
function typeOfName(x) {
	return Object.prototype.toString.call(x).slice(8, -1);
}
</pre>
<pre class="code">
alert("type(null): " + type(null));
alert("type(NaN): " + type(NaN));
alert("type(new Date()): " + type(new Date()));
alert("type('DEE'): " + type('DEE'));
alert("type(1): " + type(1));
alert("type({}): " + type({}));
alert("type(new UserDefined()): " + type(new UserDefined()));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS53_3()">
</pre>


</div>