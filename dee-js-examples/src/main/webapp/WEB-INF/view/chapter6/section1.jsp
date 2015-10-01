<script type="text/javascript" src='<c:url value="/resources/js/chapter6/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Browser Location, Navgation, History</h3>

    <div class = "section">
    	<p class="title">Example of listing Window Properties</p>

<pre class="code">
for(var p in window) {
	console.log("Property: " + p + " = " + window[p]);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_1()">
</pre>

	


    	<p class="title">Timers</p>
    	<ul>
    		<li>setTimeout(f, ms)</li>
    		<li>clearTimout(timoutlId)</li>
    		<li>setInterval(f, ms)</li>
    		<li>clearInterval(intervalId)</li>
    	</ul>
<pre class="code">
function clock() {
	var display = document.getElementById("clock_1");
	display.innerText = (new Date()).toLocaleString();
}
</pre>
<pre class="code">
var intervalId = setInterval(clock, 1000);
setTimeout(function() {
	clearInterval(intervalId);
}, 10000);

<span class="code-result">Result> Clock: <span id = "clock_1"></span>  </span> <input value="check" type="button" onclick="exampleJS6_2()">
</pre>

	
		<p class="title">Browser Location & Navigation</p>
<pre class="code">
window.location === document.location; // True
window.location = http://google.com;
</pre>

		<h4>Browser Location</h4>

		<p class="sub-title">window.location.assign() method</p>
		<p><strong>Add new record to history</strong></p>
<pre class="code">
// The same: 
location.assign("http://google.com");
location = url;
window.location.href = url;

<span class="code-result">Result>  <input value="check" type="button" onclick="exampleJS6_2_1()">
</pre>

<pre class="code">
document.location.assign("https://www.google.com/");
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_4()">
</pre>



		<p class="sub-title">window.location.replace() method</p>
		<p><strong>Do not add new record to history</strong></p>
<pre class="code">
location.replace("http://google.com");
<span class="code-result">Result> <input value="check" type="button" onclick="exampleJS6_2_2()">
</pre>

<pre class="code">
<strong>Remove current document from history</strong>
document.location.replace("https://www.google.com/");
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_5()">
</pre>



		<p class="sub-title">window.location.reload() method</p>
<pre class="code">
location.reload();
location = "#section1"; // go to fragment identifier
location.search = "?page=" + (pagenum+1); // Search
<span class="code-result">Result> <input value="check" type="button" onclick="exampleJS6_2_3()">
</pre>

<pre class="code">
document.location = "#section1";
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_6()">
</pre>

<pre class="code">
document.location = "?search=1";
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_7()">
</pre>

	
	<p class="sub-title">Location Object Information</p>
<pre class="code">
window.location = <span id = "w_location"></span>
document.location = <span id = "d_location"></span>
window.URL = <span id = "l_url"></span>

document.location.hash = <strong>fragment identifier: #section1</strong>
document.location.search = <strong>Portion of URL that starts with ?: ?param=1</strong>

document.location.* = <span id = "l_detail"></span>
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_3()">
</pre>




	<h4>Browser History</h4>
	<ul>
		<li><strong class="red">window.history</strong>: refers to History Object</li>
		<ul>
			<li>back()</li>
			<li>forward()</li>
			<li>go(integer)</li>
		</ul>
	</ul>

<pre class="code">
See console.log
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_8()">
</pre>

	<p class="sub-title">back() / forward()</p>
<pre class="code">
window.history.back();
window.history.forward();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_9()">
</pre>

	<p class="sub-title">go(integer)</p>
<pre class="code">
window.history.go(-1);
window.history.go(-1);
window.history.go(2);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS6_10()">
</pre>

</div>