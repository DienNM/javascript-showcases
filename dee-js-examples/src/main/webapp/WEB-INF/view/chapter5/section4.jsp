<script type="text/javascript" src='<c:url value="/resources/js/chapter5/section4.js" />'></script>
<div>
    <h2><a name = "section4">Section 4</a></h2>

    <h3>Inheritence vs Composition</h3>
    <div class = "section">
    	<p class="title">Define a Subclas</p>

    	<p class="sub-title">Inherit and extend method</p>
<pre class="code">
function inherit(p) {
	if(p == null) throw TypeError();
	if(p == undefined) throw TypeError();
	if(Object.create) return Object.create(p);

	function f() {};
	f.prototype = p;
	return new f();
}
</pre>
<pre class="code">
function extend(a, b) {
	if(b == null) return a;
	for(var i in b) {
		if(!a.hasOwnProperty(i)) {
			a[i] = b[i];
		}
	}
	return a;
}
</pre>
<pre class="code">
var o = inherit({x : 1});
var a = {y : 2};
o = extend(o, a);
alert("x = " + o.x + " - y = " + o.y);
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS54_1()">
</pre>


    	<p class="sub-title">Define Base Class: User</p>
<pre class="code">
User = function() {};
User.prototype = {
	email : '',
	name : '',
	age: 0,
	checkEmail: function() {
		return this.email != null;
	}
}
</pre>


	<p class="sub-title">Define Employee Class: extends from User</p>
	<ul>
		<li>Add more field: dept, role</li>
		<li>Add more method: isAdmin</li>
	</ul>
<pre class="code">
var Employee = function(email, name, dept) {
	this.email = email;
	this.name = name;
	this.dept = dept;
}
extendObj(Employee, User)
Employee.prototype = {
	role: '',
	isAdmin: function() {
		return this.role === 'admin';
	}
}
</pre>


<pre class="code">
function extendObj(a, b) {
	a.prototype = b.prototype;
}
</pre>

	<p class="sub-title">Define Customer Class: extends from User</p>
	<ul>
		<li>Add more field: point</li>
		<li>Add more method: getRange</li>
	</ul>
<pre class="code">
var Customer = function(email, name) {
	this.email = email;
	this.name = name;
}
extendObj(Customer, User)
Customer.prototype = {
	point: 0,
	getRange: function() {
		if(this.point > 20) return "Golden";
		if(this.point > 10) return "Silver";
		if(this.point >= 0) return "Normal";
	}
}
</pre>

<pre class="code">
var employee = new Employee("emp1@gmail.com", "DEE", "IT");
employee.role = "admin";
alert("emp1@gmail.com is admin: " + employee.isAdmin());

var employee1 = new Employee("emp2@gmail.com", "DEE", "IT");
employee1.role = "mod";
alert("emp2@gmail.com is admin: " + employee1.isAdmin());

var customer = new Customer("customer1@gmail.com", "Customer 1");
alert(customer.getRange());
customer.point = 11;
alert("After Set point = 11: " + customer.getRange());
customer.point = 21;
alert("After Set point = 21: " + customer.getRange());
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS54_2()">
</pre>



	<p class="sub-title">Example of hierachy</p>
<pre class="code">
function CrawlData(site, type) {
	this.site = site;
	this.type = type;
}

CrawlData.prototype = {
	crawl: function () {
		alert("Crawl the site: " + this.site + "; type = " + this.type);
	}
}
</pre>
<pre class="code">
function EpisodeCrawlData(site, type) {
	CrawlData.apply(this, arguments);
}

EpisodeCrawlData.prototype = inherit(CrawlData.prototype);
EpisodeCrawlData.prototype.constructor = EpisodeCrawlData;
EpisodeCrawlData.prototype.crawl = function() {
	alert("Not support now");
}
</pre>
<pre class="code">	
function SeriesCrawlData(site, type) {
	CrawlData.apply(this, arguments);
}

SeriesCrawlData.prototype = inherit(CrawlData.prototype);
SeriesCrawlData.prototype.constructor = SeriesCrawlData;

</pre>
<pre class="code">
var episode = new EpisodeCrawlData("http://imdb.com", "Episode");
var series = new SeriesCrawlData("http://imdb.com", "Series");

episode.crawl(); // Call overriden
series.crawl();
CrawlData.prototype.crawl.apply(episode, null); // call parent
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS54_3()">
</pre>


	<p class="sub-title">Example 2</p>
<pre class="code">
function Animal(name, type, voice) {
	this.name = name;
	this.type = type;
	this.voice = voice;
}
Animal.prototype = {
	speak : function() {
		alert(this.name + "[" + this.type + "] " + " is speaking: " + this.voice);
	}
}
</pre>
<pre class="code">
function defineSubclass(superclass) {
	var constructor = function() {
		superclass.apply(this, arguments);
	};

	var proto = constructor.prototype = inherit(superclass.prototype);
	proto.constructor = constructor;
	proto.speak = function() {
		superclass.prototype.speak.apply(this, arguments);
	}; 
	return constructor;
}
</pre>

<pre class="code">
var Cat = defineSubclass(Animal);
var cat = new Cat("Mimi", "Cat", "Meo meo");
cat.speak();

var Dog = defineSubclass(Animal);
var dog = new Dog("Kiki", "Dog", "Gai Gau");
dog.speak();
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS54_4()">
</pre>

</div>