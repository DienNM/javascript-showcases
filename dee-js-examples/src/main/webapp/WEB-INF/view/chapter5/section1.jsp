<script type="text/javascript" src='<c:url value="/resources/js/chapter5/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Class</h3>
    <div class = "section">
    	<p class="title">Class and Constructor</p>
    	<p>Constructor is a function is used to initialize newly created object. Using <strong>NEW</strong> keyword. The <strong>prototype</strong> property is used as as the prototype of new object</p>

<pre class="code">
function Student(name, email, hobbies) {
	this.name = name;
	this.email = email;
	this.clazz = null;
	this.hobbies = hobbies;
}
</pre>
<pre class="code">
Student.prototype = {
	registerClass : function(clazz) {
		this.clazz = clazz;
		alert("Student " + this.email + " registered class: " + clazz);
	},

	showHobbies : function() {
		if(this.hobbies == undefined) {
			alert("Not set hobbies yet");
			return;
		}
		alert("Belong Class: " + this.clazz + "; Hobbies = " + hobbies.join(" - "));
	}
};
</pre>
<pre class="code">
var student1 = new Student("Dien", "nmdien61@gmail.com", ["reading book", "travelling"]);
var student2 = new Student("DEE", "dee@gmail.com");
var student3 = new Student("DEE1", "dee1@gmail.com", ["reading book"]);

student1.registerClass("A1");
student2.registerClass("A2");
student3.registerClass("A3");

student1.showHobbies();
student2.showHobbies();
student3.showHobbies();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS5_1()">
</pre>

</div>