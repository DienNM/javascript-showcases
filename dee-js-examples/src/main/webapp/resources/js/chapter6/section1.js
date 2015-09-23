/**
	DEE - JS Example - Chapter 06 - Section 1
**/


function exampleJS6_1() {
	for(var p in window) {
		console.log("Property: " + p + " = " + window[p]);
	}
}

function clock() {
	var display = document.getElementById("clock_1");
	display.innerText = (new Date()).toLocaleString();
}

/**
------------------------------------------------------**/

function stopClock(intervalId) {
	clearInterval(intervalId);
}

function exampleJS6_2() {
	var intervalId = setInterval(clock, 1000);
	setTimeout(function() {
		clearInterval(intervalId);
	}, 10000);
}


function exampleJS6_3() {
	document.getElementById("w_location").innerText = window.location;
	document.getElementById("d_location").innerText = document.location;
	document.getElementById("l_url").innerText = document.URL;

	var locationDetail = "";

	for(var p in document.location) {
		if((typeof document.location[p]) == "function") {
			continue;
		}
		locationDetail += "document.location." + p + " = " + document.location[p] + "<br>";
	}

	document.getElementById("l_detail").innerHTML = locationDetail;
	
}


function exampleJS6_4() {
	document.location.assign("https://www.google.com/");
}

function exampleJS6_5() {
	document.location.replace("https://www.google.com/");
}

function exampleJS6_6() {
	document.location = "#section1";
}

function exampleJS6_7() {
	document.location = "?search=1";
}