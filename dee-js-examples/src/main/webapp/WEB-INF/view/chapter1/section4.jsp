<script type="text/javascript" src='<c:url value="/resources/js/chapter1/section4.js" />'></script>


<div>
    <h2><a name = "section4">Section 4</a> <small>Variable Declaration</small></h2>
    <div class = "section">
    
<p class = "title">Global scope</p>
<p>Be declared out of functions</p>

<pre class="code">
var scope = "global";
function checkscope() {
	var scope = "local";
	return scope;
}
checkscope()
<span class="code-result">Result> <input value="check" type="button" onclick="exampleCS4_1()"></span>
</pre>


<p class = "title">Function Scope</p>
<p>Variables are <strong>visible</strong> within the function in which they are defined and within any functions that are nested within that function.</p>

<pre class="code">
function test(o) {
	var i = 0;
	if (typeof o == "object") {
		var j = 5;
		for(var k=0; k < 10; k++) { 
			console.log(k);
		}
		console.log(k);
	}
	alert("k = " + k + " - J = "  + j);
}

<strong>j and k are visible in test function scope</strong>

<span class="code-result">Result> <input value="check" type="button" onclick="exampleCS4_2()"></span>
</pre>

    </div>
</div>