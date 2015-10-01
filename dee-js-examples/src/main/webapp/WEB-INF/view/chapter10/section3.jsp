<script type="text/javascript" src='<c:url value="/resources/js/chapter10/section3.js" />'></script>
<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Attribute and Element Content</h3>
    <div class = "section">
    	<p class="title">Attribute</p>

    	<p class="sub-title">HTML Attributes As Element Properties</p>

<pre class="code" id = "js_103_1">
var image = document.getElementById("myimage"); 
var imgurl = image.src; // The src attribute is the URL of the image
image.id === "myimage" // Since we looked up the image by id

var p = document.getElementById("js_103_1");
alert(p.id);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS103_1()">
</pre>

    	<p class="sub-title">HTML Attributes As Element Properties</p>

<pre class="code">
<p id = "js_103_2">Example: change color by adding class = "red"</p>
var image = document.getElementById("myimage"); 
var imgurl = image.src; // The src attribute is the URL of the image
image.id === "myimage" // Since we looked up the image by id

var p = document.getElementById("js_103_2");
p.setAttribute("class", "red")
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS103_2()">
</pre>

   
		
    	<p class="title">Attribute</p>
    	<ul>
    		<li>HTML string</li>
    		<li>plain-text string</li>
    		<li>Text node, Element node</li>
    	</ul>

    	<p class="sub-title">Element Content As HTML</p>
    	<ul>
    		<li>innerHTML</li>
    		<li>outerHTML</li>
    		<li>Text node, Element node</li>
    		<li>insertAdjacentHTML(): HTML 5</li>
    		<li><img src="<c:url value="/resources/images/element-content.png" />"></li>
    	</ul>

<pre class="code">
<p id = "js_103_3">Example for Element Content</p>

var p = document.getElementById("js_103_3");
alert("p.innerHTML = " + p.innerHTML);
alert("p.outerHTML = " + p.outerHTML);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS103_3()">
</pre>



		<p class="sub-title">Element Content As Plain Text</p>
    	<ul>
    		<li>textContent: standard property</li>
    		<li>innerHTML: </li>
    		<ul>
	    		<li>does  not  return  the  content  of &lt;script&gt; elements</li>
	    		<li>is treated read-only for <strong>table</strong>, <strong>tr</strong>, <strong>tbody</strong></li>
	    	</ul>
    	</ul>

<pre class="code">
<p id = "js_103_4">Example for Element Content</p>

var p = document.getElementById("js_103_4");
alert("p.textContent = " + p.textContent);
alert("p.innerText = " + p.innerText);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS103_4()">
</pre>

    </div>
</div>