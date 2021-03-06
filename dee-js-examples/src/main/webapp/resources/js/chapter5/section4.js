/**
	DEE - JS Example - Chapter 05 - Section 4
**/

function inherit(p) {
	if(p == null) throw TypeError();
	if(p == undefined) throw TypeError();
	if(Object.create) return Object.create(p);

	function f() {};
	f.prototype = p;
	return new f();
}

function extend(a, b) {
	if(b == null) return a;
	for(var i in b) {
		if(!a.hasOwnProperty(i)) {
			a[i] = b[i];
		}
	}
	return a;
}

function extendObj(a, b) {
	a.prototype = b.prototype;
}

function exampleJS54_1() {
	var o = inherit({x : 1});
	var a = {y : 2};
	o = extend(o, a);
	alert("x = " + o.x + " - y = " + o.y);
}

User = function() {};

User.prototype = {
	email : '',
	name : '',
	age: 0,
	checkEmail: function() {
		return this.email != null;
	}
}

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


function exampleJS54_2() {
	var employee = new Employee("emp1@gmail.com", "DEE", "IT");
	employee.role = "admin";
	employee.age = 20;
	alert("emp1@gmail.com is admin: " + employee.isAdmin());

	var employee1 = new Employee("emp2@gmail.com", "DEE", "IT");
	employee1.role = "mod";
	employee1.age = 21;
	alert("emp2@gmail.com is admin: " + employee1.isAdmin());

	var customer = new Customer("customer1@gmail.com", "Customer 1");
	alert(customer.getRange());
	customer.point = 11;
	alert("After Set point = 11: " + customer.getRange());
	customer.point = 21;
	customer.age = 30;
	alert("After Set point = 21: " + customer.getRange());

	// Check Age
	alert("emp1@gmail.com's age = " + employee.age);
	alert("emp2@gmail.com's age = " + employee1.age);
	alert("customer1@gmail.com's age = " + customer.age);
}

/**
--------------------------------------------------------**/

function CrawlData(site, type) {
	this.site = site;
	this.type = type;
}

CrawlData.prototype = {
	crawl: function () {
		alert("Crawl the site: " + this.site + "; type = " + this.type);
	}
}

function EpisodeCrawlData(site, type) {
	CrawlData.apply(this, arguments);
}

EpisodeCrawlData.prototype = inherit(CrawlData.prototype);
EpisodeCrawlData.prototype.constructor = EpisodeCrawlData;
EpisodeCrawlData.prototype.crawl = function() {
	alert("Not support now");
}

function SeriesCrawlData(site, type) {
	CrawlData.apply(this, arguments);
}

SeriesCrawlData.prototype = inherit(CrawlData.prototype);
SeriesCrawlData.prototype.constructor = SeriesCrawlData;

function exampleJS54_3() {
	var episode = new EpisodeCrawlData("http://imdb.com", "Episode");
	var series = new SeriesCrawlData("http://imdb.com", "Series");

	episode.crawl();
	series.crawl();

	CrawlData.prototype.crawl.apply(episode, null);
}

/**
---------------------------------------------------------**/

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

function exampleJS54_4() {
	var Cat = defineSubclass(Animal);
	var cat = new Cat("Mimi", "Cat", "Meo meo");
	cat.speak();

	var Dog = defineSubclass(Animal);
	var dog = new Dog("Kiki", "Dog", "Gai Gau");
	dog.speak();
}