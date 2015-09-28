/**
	DEE - JS Example - Chapter 03 - Section 1
**/


function exampleJS3_1() {
	var array = new Array();
	array[2] = 1;
	console.log(array.length);

	array[-2] = "negative number";
	console.log(array.length);


	array[4.000] = "value of 4.000";
	console.log(array.length);

}


function exampleJS3_2() {
	var array = new Array(4,5);

	array.push(6); // Insert at endding of Array
	console.log(array);
	
	array.unshift(3); // Insert at beginning of Array
	console.log(array);

	array.pop(); // Remove last element
	console.log(array); 

	array.shift(); // remove first element
	console.log(array); 

	delete array[0];
	console.log(array); // 
}


function exampleJS3_3() {
	var array = [4,5,,7];
	console.log("Using toString: " + array.toString());
	console.log("Not Filter");
	for(var e in array) {
		console.log(array[e]);
	}


	console.log("Filter");
	for(var e in array) {
		if(array[e] !== undefined) {
			console.log(array[e]);
		}
	}

	delete array[0];
	console.log("Using toString: " + array.toString());
	for(var e in array) {
		if(array[e] !== undefined) {
			console.log(array[e]);
		}
	}
	
}

function exampleJS3_3_1() {
	var array = [4,5,,7];
	console.log("Using toString: " + array.toString());
	console.log("Not Filter");
	array.forEach(function(e) {
		console.log(e);
	});


	console.log("Filter");
	array.forEach(function(e) {
		if(e !== undefined) {
			console.log(e);
		}
	});

	delete array[0];
	console.log("Using toString: " + array.toString());
	array.forEach(function(e) {
		if(e !== undefined) {
			console.log(e);
		}
	});
	
}