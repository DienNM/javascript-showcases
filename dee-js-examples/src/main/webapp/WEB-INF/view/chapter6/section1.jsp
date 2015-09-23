<script type="text/javascript" src='<c:url value="/resources/js/chapter6/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Windows</h3>
    <div class = "section">
    	<p class="title">Example of listing Window Properties</p>

<pre class="code">
for(var p in window) {
	console.log("Property: " + p + " = " + window[p]);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_1()">
</pre>
	

    	<p class="title">Timers</p>
<pre class="code">
function clock() {
	var display = document.getElementById("clock_1");
	display.innerText = (new Date()).toLocaleString();
}

var intervalId = setInterval(clock, 1000);
setTimeout(function() {
	clearInterval(intervalId);
}, 10000);

Clock: <div id = "clock_1"></div>
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_2()">
</pre>

	<p class="title">Parsing URL</p>
<pre class="code">
window.location = <span id = "w_location"></span>
document.location = <span id = "d_location"></span>
window.URL = <span id = "l_url"></span>

document.location.hash = <strong>fragment identifier: #section1</strong>
document.location.search = <strong>Portion of URL that starts with ?: ?param=1</strong>

document.location.* = <span id = "l_detail"></span>
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_3()">
</pre>
	
	<p class="sub-title">document.location.assign</p>
<pre class="code">
document.location.assign("https://www.google.com/");
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_4()">
</pre>
	
	<p class="sub-title">document.location.replace</p> Use for loading static HTML
<pre class="code">
<strong>Remove current document from history</strong>
document.location.replace("https://www.google.com/");
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_5()">
</pre>

<pre class="code">
document.location = "#section1";
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_6()">
</pre>


<pre class="code">
document.location = "?search=1";
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_7()">
</pre>


</div>