<script type="text/javascript" src='<c:url value="/resources/js/chapter6/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Error Handling</h3>
    <div class = "section">
        <p class="title">onerror property</p>

<pre class="code">
window.onerror = function(message, jsUrl, line) {
	alert("Error: Message = " + message + "\n" + 
			"URL: " + jsUrl + "\n" + 
			"Line Number: " + line);
}

function throwError() {
	throw "Error from function throwError";
}
</pre>
<pre class="code">
try {
	throwError(); // Caught, so this error will be not propagated to onerror
} catch(message) {
}
throwError();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS63_1()">
</pre>

</div>