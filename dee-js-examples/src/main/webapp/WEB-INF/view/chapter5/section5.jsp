<script type="text/javascript" src='<c:url value="/resources/js/chapter5/section5.js" />'></script>
<div>
    <h2><a name = "section5">Section 5</a></h2>

    <h3>Module</h3>
    <div class = "section">
    	<p class="title">Define Module</p>


<pre class="code">
var collections;
if(!collections) collections = {};

collections.sets = (function() {
	return {};
}());
</pre>

	<p class="sub-title">Example of simple module</p>
<pre class="code">
var Set = (function() {

	function Set() {
		this.values = [];
		this.n = 0;
		this.add.apply(this, arguments);
	};

	Set.prototype.add = function() {
		for(var i in arguments) {
			if(contains(this.values, arguments[i])) continue;
			this.values.push(arguments[i]);
			this.n++;
		}
	};

	// Not Public API
	function contains(array, value) {
		for(var i in array) {
			if(array[i] === value) return true;
		}
		return false;
	}

	return Set;
}());
</pre>

<pre class="code">
var set = new Set("a", "b");
alert("Length = " + set.n);

set.add("a", "d");
alert("Length = " + set.n);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS55_1()">
</pre>
    	
</div>