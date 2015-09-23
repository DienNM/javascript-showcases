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


function exampleJS6_8() {
	for(var p in window.history) {
		console.log("Property: " + p + " = " + window.history[p]);
	}
}


function exampleJS6_9() {
	window.history.back();
	window.history.forward();
}


function exampleJS6_10() {	
	window.history.go(-1);
	window.history.go(-1);
	window.history.go(2);
}

function exampleJS6_11() {	

	var win = window.open("http://domain.com/page1");
     win = window.open("http://domain.com/page2");

	document.getElementById("wn_appName").innerText = window.navigator.appName;
	
}