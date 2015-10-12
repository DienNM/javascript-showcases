<script type="text/javascript" src='<c:url value="/resources/js/chapter10/section4.js" />'></script>
<div>
    <h2><a name = "section4">Section 4</a></h2>

    <h3>Document and Element Geometry and Scrolling</h3>
    <div class = "section">

    	<p class="title">Document Coordinates and Viewport Coordinates</p>

<pre class="code">
function scrollOffset(w) {

	w = w || window;

	if(w.pageXOffset != null && w.pageYOffset != null) {
		return {x : w.pageXOffset, y : w.pageYOffset};
	}

	var d = w.document;
	if(document.compatMode == "CSS1Compat") {
		return {x : d.documentElement.scrollLeft, y : d.documentElement.scrollRight};
	}

	// Quirk mode
	return {x : d.body.scrollLeft, y: d.body.scrollRight};
}
</pre>

<pre class="code">
var offsetObj = scrollOffset(window);
alert("x = " + offsetObj.x + "; y = " + offsetObj.y);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS104_1()">
</pre>


		<p class="title">CSS Example</p>

<pre class="code">
Example:
<div id ="alarm_1" class = "red">
 	!!Alarm!!
</div>

</pre>

<pre class="code">
var offsetObj = scrollOffset(window);
alert("x = " + offsetObj.x + "; y = " + offsetObj.y);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS104_2()">
</pre>


   
    </div>
</div>