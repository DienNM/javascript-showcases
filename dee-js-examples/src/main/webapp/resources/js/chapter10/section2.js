/**
	DEE - JS Example - Chapter 10 - Section 2
**/

function exampleJS102_1() {
	var ulElement = document.getElementById("chapter10_2_0");
	alert("Parent Node = " + ulElement.parentNode.nodeName);
	alert("Children Node Length: " + ulElement.childNodes.length);
	for(var i in ulElement.childNodes) {
		console.log(ulElement.childNodes[i].nodeName + " - " +  " nodeValue = " + ulElement.firstChild.nodeValue);
	}
	alert("First Child: " + ulElement.firstChild.nodeName + " nodeValue = " + ulElement.firstChild.nodeValue);
	alert("First Child: " + ulElement.firstChild.nextSibling.nodeName + " nodeValue = " + ulElement.firstChild.nextSibling.nodeValue);
	alert("Last Child: " + ulElement.lastChild.nodeName + " nodeValue = " + ulElement.firstChild.nodeValue);
	alert("Last Child: " + ulElement.lastChild.previousSibling.nodeName);
}



function exampleJS102_2() {
	var ulElement = document.getElementById("chapter10_2_1");
	alert("Parent Node = " + ulElement.parentNode.nodeName);
	alert("Children Node Length: " + ulElement.childElementCount);
	for(var i in ulElement.children) {
		//console.log(ulElement.children[i].nodeName + " - " +  " nodeValue = " + ulElement.children.innerText);

	}

	for(var i in ulElement.firstElementChild) {
		console.log(i + " = " + ulElement.firstElementChild[i]);
	}

	alert("First Child: " + ulElement.firstElementChild.nodeName + " nodeValue = " + ulElement.firstElementChild.outerHTML);
	alert("First Child: " + ulElement.firstElementChild.nextElementSibling.nodeName + " nodeValue = " + ulElement.firstElementChild.nextElementSibling.outerHTML);
	alert("Last Child: " + ulElement.lastElementChild.nodeName + " nodeValue = " + ulElement.lastElementChild.outerHTML);
	alert("Last Child: " + ulElement.lastElementChild.previousElementSibling.nodeName);
}