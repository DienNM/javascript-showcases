<script type="text/javascript" src='<c:url value="/resources/js/chapter6/section4.js" />'></script>
<div>
    <h2><a name = "section4">Section 4</a></h2>

    <h3>Multiple Windows and Frames</h3>
    <div class = "section">

        <ul>
        	<li>Each browser window contains mutiple tabs</li>
        	<li>Each Tag is a indenpendent browsing content</li>
        	<li>&lt;iframe&gt; creates nested window, nested browsing context</li>
        	<li>Nested Window is NOT isolated browsing content, Tab is isolated browsing context</li>
        </ul>


        <p class="title">Opening and Closing Windows</p>
<pre class="code">
<span class="code-result">Result>  </span> <input id="js64_openwindow" value="check" type="button" onclick="exampleJS64_1()">
</pre>

	 <p class="title">iframe</p>

	 <iframe src="http://localhost:8080/js/chapter1" name="chapter1"></iframe>
	 <iframe src="http://localhost:8080/js/chapter2" name="chapter2"></iframe>
	 <iframe src="http://localhost:8080/js/chapter3" name="chapter3"></iframe>

<pre class="code">
<span class="code-result">Result>  </span> <input id="js64_openwindow" value="check" type="button" onclick="exampleJS64_2()">
</pre>

</div>