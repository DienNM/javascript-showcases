/**
	DEE - JS Example - Chapter 10 - Section 3
**/

function exampleJS103_1() {
	var p = document.getElementById("js_103_1");
	alert(p.id);
}

function exampleJS103_2() {
	var p = document.getElementById("js_103_2");
	alert("p.hasAttribute('class') = " + p.hasAttribute('class'));
	p.setAttribute("class", "red");
	alert("After Add: p.hasAttribute('class') = " + p.hasAttribute('class'));
	p.removeAttribute('class');
	alert("After remove: p.hasAttribute('class') = " + p.hasAttribute('class'));
}


function exampleJS103_3() {
	var p = document.getElementById("js_103_3");
	alert("p.innerHTML = " + p.innerHTML);
	alert("p.outerHTML = " + p.outerHTML);
}



function exampleJS103_4() {
	var p = document.getElementById("js_103_4");
	alert("p.textContent = " + p.textContent);
	alert("p.innerText = " + p.innerText);
}