/**
	DEE - JS Example - Chapter 09 - Section 2
**/

function exampleJS92_10() {
	alert(encodeURI("http://vnexpress.net? test"));
	alert(decodeURI(encodeURI("http://vnexpress.net? test")));
	alert(encodeURI("http://vnexpress.net? test-_.!~*'()"));
	alert(decodeURI(encodeURI("http://vnexpress.net? test-_.!~*'()")));
	alert(encodeURI("http://vnexpress.net?test?#"));
	alert(decodeURI(encodeURI("http://vnexpress.net?test?#")));


}

function exampleJS92_11() {
	alert(encodeURIComponent("http://vnexpress.net? test"));
	alert(decodeURIComponent(encodeURI("http://vnexpress.net? test")));
	alert(encodeURIComponent("http://vnexpress.net? test-_.!~*'()"));
	alert(decodeURIComponent(encodeURI("http://vnexpress.net? test-_.!~*'()")));
	alert(encodeURIComponent("http://vnexpress.net?test?#"));
	alert(decodeURIComponent(encodeURI("http://vnexpress.net?test?#")));
}