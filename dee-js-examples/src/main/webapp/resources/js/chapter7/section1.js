/**
	DEE - JS Example - Chapter 07 - Section 1
**/


function exampleJS7_1() {
	var ulElement = document.getElementsByTagName("ul")[0];
	var liElement = ulElement.getElementsByTagName("li")[0];

	var forms = document.forms;
	var links = document.links;
	var images = document.images;

	alert("Forms = " + forms.length);
	alert("links = " + links.length + "; links[0].href = " + links[0].href);
	alert("images = " + images.length);
}

function exampleJS7_2() {
	var studentList = document.getElementById("student_list");
	alert("studentList: innerHTML = " + studentList.innerHTML);
	alert("studentList: outerHTML = " + studentList.outerHTML);
	alert("studentList: textContent = " + studentList.textContent);

	studentList.insertAdjacentHTML("afterbegin", "1.");
	studentList.insertAdjacentHTML("beforebegin", "LIst of Students: ");
	studentList.insertAdjacentHTML("beforeend", "!");
	alert("studentList: innerHTML = " + studentList.innerHTML);
	alert("studentList: outerHTML = " + studentList.outerHTML);
}

function exampleJS7_3() {
	var ul = document.getElementById("js7_3_ul");
	var li = document.createElement("li");
	ul.appendChild(li);
	li.innerText = "Text 2";
}


/** Add
-----------------------------------**/
function exampleJS7_4() {
	var div = document.getElementById("example_table_dynamic");
	var table = div.getElementsByTagName("table")[0];
	var trList = table.getElementsByTagName("tbody")[0].getElementsByTagName("tr");

	var num = trList.length + 1;

	var row = document.createElement("tr");
	var tdId = document.createElement("td");
	tdId.innerText = num;

	var tdName = document.createElement("td");
	tdName.innerText = "Name " + num;

	var tdEmail = document.createElement("td");
	tdEmail.innerText = "email" + num + "@gmail.com";

	row.appendChild(tdId);
	row.appendChild(tdName);
	row.appendChild(tdEmail);

	table.getElementsByTagName("tbody")[0].appendChild(row);
}

function exampleJS7_5() {
	var div = document.getElementById("example_table_dynamic");
	var table = div.getElementsByTagName("table")[0];
	var trList = table.getElementsByTagName("tbody")[0].getElementsByTagName("tr");

	if(trList.length == 0) {
		alert("No row");
		return;
	}

	var row = trList[trList.length - 1];
	row.parentNode.removeChild(row);
}

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

function getViewportSize(w) {
	var w = w || window;
	if(w.innerWidth != null) {
		return {w: w.innerWidth, h:w.innerHeight};
	}

	var d = w.document;
	if (document.compatMode == "CSS1Compat") {
		return { w: d.documentElement.clientWidth,
				 h: d.documentElement.clientHeight };
	}
	return { w: d.body.clientWidth, h: d.body.clientWidth };
}


function exampleJS7_6() {
	var scrolls = getScrollOfSet(window);
	alert("X = " + scrolls.x + "; Y = " + scrolls.y);

	console.log({x: window.pageXOffset, y: window.pageYOffset});
	console.log({x: window.pageXOffset, y: window.pageYOffset});

	var viewportSize = getViewportSize(window);
	alert("X = " + viewportSize.w + "; Y = " + viewportSize.h);

	 window.scrollTo(0, 100);
}