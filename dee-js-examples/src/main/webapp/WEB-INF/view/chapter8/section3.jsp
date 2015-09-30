<script type="text/javascript" src='<c:url value="/resources/js/chapter8/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>RegExp Object</h3>
    <div class = "section">

    	<p class="title">Constructor</p>
<pre class="code">
var pattern1 = new RegExp("\\d{5}", "g");
var pattern2 = new RegExp("\\w+");
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS82_1()">
</pre>


    	<p class="title">RegExp Properties</p>
    	<ul>
    		<li><strong class="red">source</strong>: read-only that contains text of regular expression</li>
    		<li><strong class="red">global</strong>: <em>g flag</em> that is read-only </li>
    		<li><strong class="red">ignoreCase</strong>: <em>i flag</em> that is read-only </li>
    		<li><strong class="red">multiline</strong>: <em>m flag</em> that is read-only </li>
    		<li><strong class="red">lastIndex</strong>: read-write property. <strong class="red">0</strong> if not found</li>
    	</ul>

    	<p class="title">RegExp Methods</p>

    	<p class="sub-title">exec()</p>
    	<ul>
    		<li>Similar to <strong>match()</strong></li>
			<li>Search strings for a match</li>
			<li>Return <strong>null</strong> if it finds none</li>
    	</ul>
<pre class="code">
var pattern = /Java/g;
var text = "JavaScript is more fun than Java!";
var result;
while((result = pattern.exec(text)) != null) {
	alert("Matched: " + result[0] + " - At position: " + result.index + "\n" + 
			"Next Position: " + pattern.lastIndex);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS83_1()">
</pre>


    	<p class="sub-title">test()</p>
    	<ul>
    		<li>Return <strong>true/false</strong> if match or not match</li>
			<li>Search strings for a match</li>
			<li>Return <strong>null</strong> if it finds none</li>
    	</ul>
<pre class="code">
var pattern = /java/i;
alert('pattern.test("JavaScript") = ' + pattern.test("JavaScript"));
alert('pattern.test("script") = ' + pattern.test("script"));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS83_2()">
</pre>


    </div>
</div>