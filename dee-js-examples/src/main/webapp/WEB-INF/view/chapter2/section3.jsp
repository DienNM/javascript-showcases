<script type="text/javascript" src='<c:url value="/resources/js/chapter2/section3.js" />'></script>


<div>
    <h2><a name = "section3">Section 3</a></h2>

    <h3>Serialization</h3>
    <div class = "section">
    	<p>Object <strong><em>serialization</em></strong> is the process of converting an object’s state to a string from which it can later be restored.<em>JSON</em> stands for JavaScript Object Notation.</p>
    	<ul>
    		<li><strong>JSON.stringify()</strong> <em>ECMAScript 5</em>: serializes only the enumerable own properties</li>
            <li><strong>JSON.parse()</strong> <em>ECMAScript 5</em></li>
    	</ul>
    	<hr>

    	<p class="title">JSON stringify/parse</p>
<pre class="code">
var student = {
    name: "Dien",
    email: "nmdien61@gmail.com",
    address: {
        home: "Tan Phu",
        work: "Tan Binh"
    }
};

var json = JSON.stringify(student);
var obj = JSON.parse(json);

alert(
    "JSON stringify: " + (json) + "\n\n" + 
    "JSON parse: obj.email = " + (obj.email)
);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS3_1()">
</pre>

    <p class="title">Date toJSON</p>
    <p>JSON.parse() leaves string date in string form, cannot restore the original Date</p>
<pre class="code">
var date = new Date();
alert("date.toJSON() = " + (date.toJSON()));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS3_2()">
</pre>

    <p class="title">Objec Methods</p>
<pre class="code">
var student = {
    name: "DienNM",
    birthdate: new Date(15, 5, 2015),
    hobbies: ["cafe", "coding"]
};  

alert(
    "student.toString() = " + (student.toString()) + "\n" +
    "student.birthdate.toLocaleString() = " + (student.birthdate.toLocaleString()) + "\n" +
    "student.birthdate.toString() = " + (student.birthdate.toString()) + "\n" +
    "student.birthdate.toJSON() = " + (student.birthdate.toJSON()) + "\n" +
    "student.hobbies.toString() = " + (student.hobbies.toString())
);
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleCS3_3()">
</pre>

</div>