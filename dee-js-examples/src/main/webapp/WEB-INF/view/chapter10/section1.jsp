<script type="text/javascript" src='<c:url value="/resources/js/chapter10/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Selecting Document Element</h3>
    <div class = "section">

    	<ul>
    		<li>Each Window has a <strong>document</strong> that refers to <strong>Document object</strong></li>
    		<li>DOM - Document Object Model - presenting and manipulating the document content</li>
    	</ul>

    	<p class="title">DOM Overview</p>
    	<ul>
    		<li>Class Node has 3 subclasses: </li>
    		<ul>
	    		<li>Document</li>
	    		<li>Element</li>
	    		<li>Text</li>
	    	</ul>
    	</ul>


		<p class="title">Selecting Document By Id</p>

<pre class="code">
<div id = "exampleJS101_1_ID">Element 1</div>
var element = document.getElementById("exampleJS101_1_ID");
// element = window.exampleJS101_1_ID;
alert(element.toString().slice(8, -1));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS101_1()">
</pre>


		<p class="title">Selecting Document By Name</p>
		<ul>
    		<li>Automatic creates properties for document with html tag:</li>
    		<ul>
	    		<li>img</li>
	    		<li>form</li>
	    		<li>iframe</li>
	    		<li>applet</li>
	    		<li>embed</li>
	    		<li>object</li>
	    	</ul>
    	</ul>
<pre class="code">
<form name = "form_101_2"><input type = "text"></form>

// &lt;form name = "form_101_2"&gt;...
var element1 = document.getElementsByName("form_101_2");
alert(element1[0].toString().slice(8, -1));

var element2 = document.form_101_2;
alert(element2.toString().slice(8, -1));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS101_2()">
</pre>


		<p class="title">Selecting Document By Type</p>
		<ul>
    		<li>HTMLDocument class defines shortcut properties to access certain kinds of nodes</li>
    		<ul>
	    		<li>document.images</li>
	    		<li>document.forms</li>
	    		<li>document.links</li>
	    		<li>document.head</li>
	    		<li>document.body</li>
	    	</ul>
    	</ul>
<pre class="code">
// &lt;form name = "form_101_2"&gt;... 
document.forms.form_101_2; // name or Id

var element1 = document.getElementsByTagName("form");
alert(element1.toString().slice(8, -1));

var element2 = document.forms;
alert(element2.toString().slice(8, -1));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS101_3()">
</pre>



		<p class="title">Selecting Elements by CSS Class</p>
<pre class="code">
<form class="form_101_4"><input type = "text"></form>
// &lt;form class = "form_101_4"&gt;... 

var element1 = document.getElementsByClassName("form_101_4");
alert(element1[0].innerHTML);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS101_4()">
</pre>


		<p class="title">Selecting Elements with CSS Selectors</p>
<pre class="code">
<strong>#nav</strong> // An element with id="nav"
<strong>div</strong> // Any &lt;div&gt; element
<strong>.warning</strong> // Any element with "warning" in its class attribute

<strong>p[lang="fr"]</strong> // A paragraph written in French: &lt;p lang="fr"&gt;
*[name="x"] // Any element with a name="x" attribute

span.fatal.error // Any &lt;span&gt; with "warning" and "fatal" in its class
span[lang="fr"].warning // Any warning in French

#log span // Any &lt;span&gt; descendant of the element with id="log"
#log>span // Any &lt;span&gt; child of the element with id="log"
body>h1:first-child // The first &lt;h1&gt; child of the &lt;body&gt;
</pre>

<pre class="code">
var elements = document.querySelectorAll(".code");
alert(elements.toString().slice(8, -1));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS101_5()">
</pre>

   
    </div>
</div>