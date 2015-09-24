<script type="text/javascript" src='<c:url value="/resources/js/chapter7/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>DOM - Document Object Model</h3>
    <div class = "section">
    	<p class="title">Selecting Document Elements</p>
    	<ul>
    		<li>Specified <strong>ID</strong> attribute</li>
    		<li>Specified <strong>Name</strong> attribute</li>
    		<li>Specified <strong>Tag</strong> name</li>
    		<li>Specified <strong>CSS class</strong> or <strong>Classes</strong></li>
    		<li>Specified <strong>CSS selector</strong></li>
    	</ul>
    	<p class="sub-title">Selecting Elements by ID</p>
<pre class="code">
var element = document.getElementById("id");
</pre>

    	<p class="sub-title">Selecting Elements by name</p>
<pre class="code">
var element = document.getElementsByName("element_name");
var element = document.element_name;
</pre>

    	<p class="sub-title">Selecting Elements by Tag</p>
<pre class="code">
<form>
	<button>Example of Form</button>
</form>
var ulElement = document.getElementsByTagName("ul")[0];
var liElement = ulElement.getElementsByTagName("li");

var forms = document.forms;
var links = document.links;
var images = document.images;

alert("Forms = " + forms.length);
alert("links = " + links.length + "; links[0].href = " + links[0].href);
alert("images = " + images.length);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS7_1()">
</pre>

	<p class="title">Element Content</p>

<p class="sub-title">Example</p>
<div id = "student_list">
	<div class="student">Student</div>
	<div>
		<span class="std_name">Name: </span> <em>Nguyen Minh Dien</em>
		<span class="std_email">Email: </span> <em>nmdien61@gmail.com</em>
	</div>
</div>
<pre class="code">
&lt;div id = "student_list"&gt;
	&lt;div class="student">Student&lt;/div&gt;
	&lt;div>
		&lt;span class="std_name"&gt;Name: &lt;/span&gt; &lt;em&gt;Nguyen Minh Dien&lt;/em&gt;
		&lt;span class="std_email"&gt;Email: &lt;/span&gt; &lt;em&gt;nmdien61@gmail.com&lt;/em&gt;
	&lt;/div&gt;
&lt;/div&gt;
var studentList = document.getElementById("student_list");
alert("studentList: innerHTML = " + studentList.innerHTML);
alert("studentList: outerHTML = " + studentList.outerHTML);
alert("studentList: textContent = " + studentList.textContent

studentList.insertAdjacentHTML("afterbegin", "1.");
studentList.insertAdjacentHTML("beforebegin", "LIst of Students: ");
studentList.insertAdjacentHTML("beforeend", "!");

alert("studentList: innerHTML = " + studentList.innerHTML);
alert("studentList: outerHTML = " + studentList.outerHTML);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS7_2()">
</pre>

<p class="sub-title">Example 1</p>
<ul id = "js7_3_ul">
	<li>Test 1</li>
</ul>
<pre class="code">
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS7_3()">
</pre>

	<p class="title">Dynamic Table</p>

<div id = "example_table_dynamic" contenteditable>
<table border = "1">
	<thead>
		<tr>
			<th>#</th>
			<th>Student Name</th>
			<th>Email</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
</div>

<pre class="code">
<span class="code-result">Result>  </span> <input value="Add" type="button" onclick="exampleJS7_4()"> <span class="code-result">Result>  </span> <input value="Remove" type="button" onclick="exampleJS7_5()">
</pre>



	<p class="title">Geometry and Scrolling</p>
<pre class="code">
function getScrollOfSet(w) {
	var w = w || window;
	if(w.pageXOffset != null && w.pageYOffset != null) {
		return {x: w.pageXOffset, y:w.pageYOffset};
	}

	var d = w.document;
	if (document.compatMode == "CSS1Compat") {
		return {x: d.documentElement.scrollLeft, y:d.documentElement.scrollTop};
	}
	return { x: d.body.scrollLeft, y: d.body.scrollTop };
}
</pre>
<pre class="code">
function getScrollOfSet(w) {
	var w = w || window;
	if(w.pageXOffset != null && w.pageYOffset != null) {
		return {x: w.pageXOffset, y:w.pageYOffset};
	}

	var d = w.document;
	if (document.compatMode == "CSS1Compat") {
		return {x: d.documentElement.scrollLeft, y:d.documentElement.scrollTop};
	}
	return { x: d.body.scrollLeft, y: d.body.scrollTop };
}
</pre>

<pre class="code">
var scrolls = getScrollOfSet(window);
alert("X = " + scrolls.x + "; Y = " + scrolls.y);

console.log({x: window.pageXOffset, y: window.pageYOffset});
console.log({x: window.pageXOffset, y: window.pageYOffset});

var viewportSize = getViewportSize(window);
alert("X = " + viewportSize.w + "; Y = " + viewportSize.h);
<span class="code-result">Result>  </span> <input value="Remove" type="button" onclick="exampleJS7_6()">
</pre>

</div>