/**
	DEE - JS Example - Chapter 03 - Section 1
**/


function exampleCS3_1() {
	var array = new Array();
	array[2] = 1;
	console.log(array.length);

	array[-2] = "negative number";
	console.log(array.length);


	array[4.000] = "value of 4.000";
	console.log(array.length);

}


function exampleCS3_2() {
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


function exampleCS3_3() {
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



function exampleCS3_4() {
	var array = [4,5,,7];
	console.log(array.join());
	console.log(array.join(" "));
	console.log(array.join(","));

	array = new Array(10);
	console.log(array.join("-"));

}


function exampleCS3_5() {
	var array = [4,5,6,7];
	console.log(array.reverse().join());

}


function exampleCS3_6() {
	var array = ["vietnam", "china", "us", "indian"];
	console.log(array.sort().join()); // china,indian,us,vietnam : sort in alphabetical order

	array = ["test", NaN, null, "1",undefined, 2, 0];
	var arraySorted = array.sort();
	for(var e in arraySorted) {
		console.log(arraySorted[e]); // 0,1,2,NaN,null,test,undefined
	}

}


function exampleCS3_7() {
	var array = [200, 100, 456, 55];
	array.sort(function(e1, e2) {
		return e1 - e2; 
	});
	console.log(array); //  [55, 100, 200, 456]

	array.sort(function(e1, e2) {
		return e2 - e1; 
	});
	console.log(array); //   [456, 200, 100, 55]

	array = ["vietnam", "china", "US", "indian"];
	array.sort();
	console.log(array); //    ["US", "china", "indian", "vietnam"]

	array.sort(function(e1, e2) {
		var a = e1.toLowerCase();
		var b = e2.toLowerCase();
		if (a < b) return -1;
		if (a > b) return 1;
		return 0;
	});
	console.log(array); //    ["china", "indian", "US", "vietnam"]
}

function exampleCS3_8() {
	var array = [1,2];
	array.concat(5,6);
	console.log(array); //  [1, 2]

	array = array.concat(5,6);
	console.log(array); //  [1, 2, 5, 6]

	array = array.concat([7,8], 3,4);
	console.log(array); //  [1, 2, 5, 6, 7, 8, 3, 4]

	array = array.concat([7,8], 3,4, [10, [11, 12]]);
	console.log(array); //  [1, 2, 5, 6, 7, 8, 3, 4, 10, [11, 12]]
	
}


function exampleCS3_9() {
	var array = [1,2,3,4,5];
	console.log(array.slice(0,2)); //  [1, 2]
	console.log(array.slice(2)); //  [3,4,5]
	console.log(array.slice(1, -1)); //  [2,3,4]
	console.log(array.slice(1, -2)); //  [2,3]
	console.log(array.slice(-2)); //  [4,5]
	console.log(array.slice(-4, -2)); //  [2, 3]
	
}

function exampleCS3_10() {
	var array = [1,2,3,4,5];
	array.splice(2,1);
	console.log(array); //  [1, 2, 4, 5]

	array.splice(2,0, "a", "b");
	console.log(array); //  [1, 2, "a", "b", 4, 5]

	array.splice(2,2, [3,4], 6);
	console.log(array); //  [1, 2, [3,4], 6, 4, 5]
}


function exampleCS3_11() {
	var stack = [1,2];
	stack.push(3);
	console.log(stack); //  [1, 2, 3]

	stack.pop();
	console.log(stack); //  [1, 2]

	stack.push(3,4,5);
	console.log(stack); //  [1, 2, 3, 4 , 5]

	stack.pop();
	stack.pop();
	console.log(stack); //  [1, 2, 3]
}

function exampleCS3_12() {
	var array = [1,2];
	array.unshift(3);
	console.log(array); //  [3, 1, 2]

	array.shift();
	console.log(array); //  [1, 2]

	array.unshift(3,4,5);
	console.log(array); //  [3, 4, 5, 1, 2]

	array.shift();
	array.shift();
	console.log(array); //  [5, 1, 2]
}


function exampleCS3_13() {
	var array = [1,2,3, [4, [5, 6]]];
	console.log(array.toString()); //  "1,2,3,4,5,6"
}

function exampleCS3_14() {
	var array = [1,2,3,4,5,6];
	var sum = 0;
	array.forEach(function(value) {
		sum += value;
	});
	alert("Sum of Values: " + sum);

	var sumIndex = 0;
	array.forEach(function(value, i) {
		sumIndex += i;
	});
	alert("Sum of Indexes: " + sumIndex);

	sum = 0;
	array.forEach(function(value, i, arr) {
		if(i < 2) {
			arr[i] = 0;
		}
		sum += arr[i];
	});
	alert("Sum of Values: " + sum);

	sum = 0;
	try {
		array.forEach(function(value, i, arr) {
			if(i >= 3) {
				 throw new Error("StopIteration");
			}
			sum += arr[i];
		});
	} catch(e) {
		console.log(e);
	}
	alert("Sum of Values: " + sum);
}


function exampleCS3_15() {
	var array = [1,2,3];
	var newArray = array.map(function(value) {
		return value * value;
	});
	alert(newArray);
}


function exampleCS3_16() {
	var array = [1,2,3];
	var newArray = array.filter(function(value) {
		return value % 2 == 0;
	});
	alert(newArray);
}

function exampleCS3_17() {
	var array = [1,2,3,4,5];
	var resultEvery = array.every(function(value) {
		return value > 5;
	});
	var resultSome = array.some(function(value) {
		return value < 5;
	});
	alert("resultEvery = " + (resultEvery) + " \n" + 
		"resultSome = " + (resultSome));

	array = [];
	resultEvery = array.every(function(value) {
		return value > 5;
	});
	resultSome = array.some(function(value) {
		return value < 5;
	});
	alert("resultEvery = " + (resultEvery) + " \n" + 
		"resultSome = " + (resultSome));
}


function exampleCS3_18() {
	var array = [1,2,3,4,5];
	var sum = array.reduce(function(x, y) {
		return x + y;
	}, 0);

	var product = array.reduce(function(x, y) {
		return x * y;
	}, 1);
	alert("Sum = " + sum + "; Product = " + product);
}


function exampleCS3_19() {
	var array = [1,2,3,4,5];
	var sum = array.reduceRight(function(x, y) {
		return x + y;
	}, 0);

	var product = array.reduceRight(function(x, y) {
		return x * y;
	}, 1);
	alert("Sum = " + sum + "; Product = " + product);
}

function union(a1, a2) {
	for(var e2 in a2) {
		if(e2 in a1)  continue;
		a1[e2] = a2[e2];
	}

	return a1;
}

function exampleCS3_20() {
	var array = [{x:1}, {y : 2}, {z : 3}];
	var newArray = array.reduce(union);
	console.log(newArray); // {x : 1, y = 2, z = 3}

	var objects = [{x:1,a:1}, {y:2,a:2}, {z:3,a:3}];
	var leftunion = objects.reduce(union);
	console.log(leftunion);
	// {x:1, y:2, z:3, a:1}
	var rightunion = objects.reduceRight(union); // {x:1, y:2, z:3, a:3}
	console.log(rightunion);
}