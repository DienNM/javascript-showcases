<script type="text/javascript" src='<c:url value="/resources/js/chapter10/section2.js" />'></script>
<div>
    <h2><a name = "section2">Section 2</a></h2>

    <h3>Document Structure & Traversal</h3>
    <div class = "section">

    	<p class="title">Documents As Trees of Nodes</p>
    	<ul id = "chapter10_2_0">
    		<li><strong>parentNode</strong>: parent of this one</li>
    		<li><strong>childNodes</strong>: A read-only array-like object, a NodeList</li>
    		<li><strong>firstChild, lastChild</strong>: The first and last child nodes of a node, or nullif the node has no children.</li>
    		<li><strong>nextSibling, previousSibling</strong>: The next and previous sibling node of a node</li>
    		<li><strong>nodeType</strong>:</li>
    		<ul>
	    		<li>Text nodes: 3</li>
	    		<li>Document nodes: 9</li>
	    		<li>Comments nodes: 8</li>
	    		<li>Element nodes: 1</li>
	    	</ul>
	    	<li><strong>nodeValue</strong></li>
	    	<li><strong>nodeName</strong>:</li>
    	</ul>

<pre class="code">
var ulElement = document.getElementById("chapter10_2_0");
alert("Parent Node = " + ulElement.parentNode.nodeName);
alert("Children Node Length: " + ulElement.childNodes.length);
for(var i in ulElement.childNodes) {
	console.log(ulElement.childNodes[i].nodeName + " - " +  " nodeValue = " + ulElement.firstChild.nodeValue);
}
alert("First Child: " + ulElement.firstChild.nodeName + " nodeValue = " + ulElement.firstChild.nodeValue);
alert("First Child: " + ulElement.firstChild.nextSibling.nodeName + " nodeValue = " + ulElement.firstChild.nextSibling.nodeValue);
alert("Last Child: " + ulElement.lastChild.nodeName + " nodeValue = " + ulElement.firstChild.nodeValue);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS102_1()">
</pre>



   	<p class="title">Documents As Trees of Elements</p>
   	<strong class="red">Treat a document as a tree of Element objects, ignoring Text and Comment nodes</strong>
    	<ul id = "chapter10_2_1">
    		<li><strong>children</strong>: List of all children that are Element objects</li>
    		<li><strong>firstElementChild, lastElementChild</strong>: Like firstChildand lastChild, but for Element children only</li>
    		<li><strong>nextElementSibling, previousElementSibling</strong></li>
    		<li><strong>childElementCount</strong></li>
    	</ul>

<pre class="code">
var ulElement = document.getElementById("chapter10_2_1");
alert("Parent Node = " + ulElement.parentNode.nodeName);
alert("Children Node Length: " + ulElement.childElementCount);
for(var i in ulElement.children) {
	//console.log(ulElement.children[i].nodeName + " - " +  " nodeValue = " + ulElement.children.innerText);

}

for(var i in ulElement.firstElementChild) {
	console.log(i + " = " + ulElement.firstElementChild[i]);
}

alert("First Child: " + ulElement.firstElementChild.nodeName + " nodeValue = " + ulElement.firstElementChild.outerHTML);
alert("First Child: " + ulElement.firstElementChild.nextElementSibling.nodeName + " nodeValue = " + ulElement.firstElementChild.nextElementSibling.outerHTML);
alert("Last Child: " + ulElement.lastElementChild.nodeName + " nodeValue = " + ulElement.lastElementChild.outerHTML);
alert("Last Child: " + ulElement.lastElementChild.previousElementSibling.nodeName);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS102_2()">
</pre>
	

	
   
    </div>
</div>