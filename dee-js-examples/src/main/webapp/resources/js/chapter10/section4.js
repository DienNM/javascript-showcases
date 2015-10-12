/**
	DEE - JS Example - Chapter 10 - Section 4
**/

function scrollOffset(w) {

	w = w || window;

	if(w.pageXOffset != null && w.pageYOffset != null) {
		return {x : w.pageXOffset, y : w.pageYOffset};
	}

	var d = w.document;
	if(document.compatMode == "CSS1Compat") {
		return {x : d.documentElement.scrollLeft, y : d.documentElement.scrollRight};
	}

	// Quirk mode
	return {x : d.body.scrollLeft, y: d.body.scrollRight};

}

function exampleJS104_1() {
	var offsetObj = scrollOffset(window);
	alert("x = " + offsetObj.x + "; y = " + offsetObj.y);
}

function shake(e, oncomplete, distance, time) {
	if (typeof e === "string") e = document.getElementById(e);
	if (!time) time = 500;
	if (!distance) distance = 5;
	var originalStyle = e.style.cssText;
	e.style.position = "relative";
	var start = (new Date()).getTime();
	animate();
		function animate() {
		var now = (new Date()).getTime();
		var elapsed = now-start;
		var fraction = elapsed/time;
		if (fraction < 1) {
			var x = distance * Math.sin(fraction*4*Math.PI);
			e.style.left = x + "px";
			setTimeout(animate, Math.min(25, time-elapsed));
		}
		else {
			e.style.cssText = originalStyle 
			if (oncomplete) oncomplete(e);
		}
	}
}

function exampleJS104_2() {
	var alarm = document.getElementById("alarm_1");
	alert(window.getComputedStyle(alarm, null).color);
	shake(alarm, function() {alert("Done!"); }, 10, 3000);
}

