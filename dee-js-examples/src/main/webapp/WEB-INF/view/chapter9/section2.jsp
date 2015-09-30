<script type="text/javascript" src='<c:url value="/resources/js/chapter9/section2.js" />'></script>
<div>
    <h2><a name = "section2">Section 2</a></h2>

    <h3>Array, Date, URI</h3>
    <div class = "section">

    	<p class="title">Array</p>
    	<ul>	
    		<li>new Array()</li>
    		<li>new Array(size): <em>less than or equal 2^32 − 1</em></li>
    		<li>new Array(element1, element2,...)</li>
    		<li>var arr = ["elemen1", "element2", ...]</li>
    	</ul>	


		<p class="title">encodeURI()/decodeURI()/p>
    	<ul>	
    		<li>Not encode for punctuation: <strong class="red">- _ . ! ~ * ' ( )</strong></li>
    		<li>Special meaning in URIs will not be encoded: <strong class="red">; / ? : @ & = + $ , #</strong></li>
    	</ul>
<pre class="code">
alert(encodeURI("http://vnexpress.net? test"));
alert(decodeURI(encodeURI("http://vnexpress.net? test")));
alert(encodeURI("http://vnexpress.net? test-_.!~*'()"));
alert(decodeURI(encodeURI("http://vnexpress.net? test-_.!~*'()")));
alert(encodeURI("http://vnexpress.net?test?#"));
alert(decodeURI(encodeURI("http://vnexpress.net?test?#")));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS92_10()">
</pre>


		<p class="title">encodeURIComponent()/decodeURIComponent()</p>
    	<ul>	
    		<li>Not encode for punctuation: <strong class="red">- _ . ! ~ * ' ( )</strong></li>
    		<li>Encoded: <strong class="red">; / ? : @ & = + $ , #</strong></li>
    	</ul>
<pre class="code">
alert(encodeURIComponent("http://vnexpress.net? test"));
alert(decodeURIComponent(encodeURI("http://vnexpress.net? test")));
alert(encodeURIComponent("http://vnexpress.net? test-_.!~*'()"));
alert(decodeURIComponent(encodeURI("http://vnexpress.net? test-_.!~*'()")));
alert(encodeURIComponent("http://vnexpress.net?test?#"));
alert(decodeURIComponent(encodeURI("http://vnexpress.net?test?#")));
<span class="code-result">Result> </span> <input value="check" type="button" onclick="exampleJS92_11()">
</pre>

    </div>
</div>