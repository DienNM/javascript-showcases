/**
	DEE - JS Example - Chapter 03 - Section 2
**/

function exampleJS3_4() {
	var array = [4,5,,7];
	console.log(array.join());
	console.log(array.join(" "));
	console.log(array.join(","));

	array = new Array(10);
	console.log(array.join("-"));

}

function exampleJS3_5() {
	var array = [4,5,6,7];
	console.log(array.reverse().join());

}

function exampleJS3_6() {
	var array = ["vietnam", "china", "us", "indian"];
	console.log(array.sort().join()); // china,indian,us,vietnam : sort in alphabetical order

	array = ["test", NaN, null, "1",undefined, 2, 0];
	var arraySorted = array.sort();
	for(var e in arraySorted) {
		console.log(arraySorted[e]); // 0,1,2,NaN,null,test,undefined
	}

}


function exampleJS3_7() {
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

function exampleJS3_8() {
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


function exampleJS3_9() {
	var array = [1,2,3,4,5];
	console.log(array.slice(0,2)); //  [1, 2]
	console.log(array.slice(2)); //  [3,4,5]
	console.log(array.slice(1, -1)); //  [2,3,4]
	console.log(array.slice(1, -2)); //  [2,3]
	console.log(array.slice(-2)); //  [4,5]
	console.log(array.slice(-4, -2)); //  [2, 3]
	
}

function exampleJS3_10() {
	var array = [1,2,3,4,5];
	array.splice(2,1);
	console.log(array); //  [1, 2, 4, 5]

	array.splice(2,0, "a", "b");
	console.log(array); //  [1, 2, "a", "b", 4, 5]

	array.splice(2,2, [3,4], 6);
	console.log(array); //  [1, 2, [3,4], 6, 4, 5]
}


function exampleJS3_11() {
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

function exampleJS3_12() {
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


function exampleJS3_13() {
	var array = [1,2,3, [4, [5, 6]]];
	console.log(array.toString()); //  "1,2,3,4,5,6"
}

