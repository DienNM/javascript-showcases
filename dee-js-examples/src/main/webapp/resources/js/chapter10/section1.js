/**
	DEE - JS Example - Chapter 10 - Section 1
**/

function exampleJS101_1() {

	var element = document.getElementById("exampleJS101_1_ID");
	// element = window.exampleJS101_1_ID;
	alert(element.toString().slice(8, -1));

}

function exampleJS101_2() {

	var element1 = document.getElementsByName("form_101_2");
	alert(element1[0].toString().slice(8, -1));

	var element2 = document.form_101_2;
	alert(element2.toString().slice(8, -1));

}



function exampleJS101_3() {
	var element1 = document.getElementsByTagName("form");
	alert(element1.toString().slice(8, -1));

	var element2 = document.forms;
	alert(element2.toString().slice(8, -1));

}


function exampleJS101_4() {
	var element1 = document.getElementsByClassName("form_101_4");
	alert(element1[0].innerHTML);
}

function exampleJS101_5() {
	var elements = document.querySelectorAll(".code");
	alert(elements.toString().slice(8, -1));
}