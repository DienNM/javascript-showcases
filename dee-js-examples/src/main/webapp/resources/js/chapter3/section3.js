/**
	DEE - JS Example - Chapter 03 - Section 3
**/

function exampleJS3_14() {
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


function exampleJS3_15() {
	var array = [1,2,3];
	var newArray = array.map(function(value) {
		return value * value;
	});
	alert(newArray);
}


function exampleJS3_16() {
	var array = [1,2,3];
	var newArray = array.filter(function(value) {
		return value % 2 == 0;
	});
	alert(newArray);
}

function exampleJS3_17() {
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


function exampleJS3_18() {
	var array = [1,2,3,4,5];
	var sum = array.reduce(function(x, y) {
		return x + y;
	}, 0);

	var product = array.reduce(function(x, y) {
		return x * y;
	}, 1);
	alert("Sum = " + sum + "; Product = " + product);
}


function exampleJS3_19() {
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

function exampleJS3_20() {
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