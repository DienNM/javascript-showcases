/**
	DEE - JS Example - Chapter 02 - Section 1
**/

function exampleCS3_1() {
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
	alert("JSON stringify: " + (json) + "\n\n" + 
		"JSON parse: obj.email = " + (obj.email));
}

function exampleCS3_2() {
	var date = new Date();
	alert("date.toJSON() = " + (date.toJSON()));
}

function exampleCS3_3() {
	var student = {
		name: "DienNM",
		birthdate: new Date(15, 5, 2015),
		hobbies: ["cafe", "coding"]
	};
	alert("student.toString() = " + (student.toString()) + "\n" +
		"student.birthdate.toLocaleString() = " + (student.birthdate.toLocaleString()) + "\n" +
		"student.birthdate.toString() = " + (student.birthdate.toString()) + "\n" +
		"student.birthdate.toJSON() = " + (student.birthdate.toJSON()) + "\n" +
		"student.hobbies.toString() = " + (student.hobbies.toString()));
}