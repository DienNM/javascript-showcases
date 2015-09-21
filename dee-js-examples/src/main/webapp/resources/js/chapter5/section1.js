/**
	DEE - JS Example - Chapter 05 - Section 1
**/


function Student(name, email, hobbies) {
	this.name = name;
	this.email = email;
	this.clazz = null;
	this.hobbies = hobbies;
}

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
		alert("Belong Class: " + this.clazz + "; Hobbies = " + this.hobbies.join(" - "));
	}
};

function exampleJS5_1() {
	var student1 = new Student("Dien", "nmdien61@gmail.com", ["reading book", "travelling"]);
	var student2 = new Student("DEE", "dee@gmail.com");
	var student3 = new Student("DEE1", "dee1@gmail.com", ["reading book"]);

	student1.registerClass("A1");
	student2.registerClass("A2");
	student3.registerClass("A3");

	student1.showHobbies();
	student2.showHobbies();
	student3.showHobbies();
}
