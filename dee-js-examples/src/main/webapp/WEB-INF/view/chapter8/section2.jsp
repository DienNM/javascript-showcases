<script type="text/javascript" src='<c:url value="/resources/js/chapter8/section2.js" />'></script>
<div>
    <h2><a name = "section2">Section 2</a></h2>

    <h3>String Methods for Pattern Matching</h3>
    <div class = "section">

    	<p class="title">search()</p>
    	<ul>
    		<li>Return character position of the start of the first matching substring</li>
    		<li>OR <strong class="red">-1</strong> if there is no match</li>
    		<li>Not  support  global  searches that means it will ignore <em class="red">g</em> flag</li>
    	</ul>
<pre class="code">
"JavaScript".search(/script/i); // matching at position: 4
"JavaScript".search(/C#/i); // matching at position: -1
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS82_1()">
</pre>


    	<p class="title">replace()</p>
    	<ul>
    		<li>Search and Replace</li>
    		<ul>
    			<li>First Argument: Pattern</li>
    			<li>Second Argument: Replacement String</li>
    		</ul>
    		<li>Support  global <em class="red">g</em>  searches, otherwise, it will only replace first match</li>
    	</ul>
<pre class="code">
alert("toDay is my birthDAte".replace(/da/i, "da")); // Not Use <strong>g</strong>
alert("toDay is my birthDAte".replace(/da/gi, "da")); // Use <strong>g</strong> to replace all matches
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS82_2()">
</pre>

<pre class="code">
var quote = /(java)/gi;
alert('javascript is not java'.search(quote));
alert('JAVAscript is not java'.replace(quote, '$1'));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS82_3()">
</pre>



		<p class="title">match()</p>
    	<ul>
    		<li>Convert its parameter to Regular Expression to pass to RegExp()</li>
    		<li>Return an array that contains the results of the match</li>
    		<li>Support  global <em class="red">g</em></li>
    	</ul>

<pre class="code">
alert('"1 plus 2 equals 3".match(/(\d+)/g) = ' + "1 plus 2 equals 3".match(/\d+/));
alert('"1 plus 2 equals 3".match(/(\d+)/g) = ' + "1 plus 2 equals 3".match(/\d+/g));

var emailPattern = /(\w+)@(\w{2,10})(.(\w{2,5})){1,2}/;
var text = "nmdien61@gmail.com";
var matches = text.match(emailPattern);
if(matches != null) {
	alert(matches[0]); // Complete match
	alert(matches[1]); // Index of group
	alert(matches[2]);
	alert(matches[3]);
	alert(matches[4]);
}
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS82_4()">
</pre>


		<p class="title">split()</p>
    	<ul>
    		<li>Breaks the string on which it is called into an array of substrings</li>
    		<li>"123,456,789".split(","); <em>Returns ["123","456","789"]</em></li>
    		<li>"1, 2, 3, 4, 5".split(/\s*,\s*/); <em> Returns ["1","2","3","4","5"]</em></li>
    	</ul>
<pre class="code">
alert('"123,456,789".split(",") = ' + "123,456,789".split(","));
alert('"1, 2, 3, 4, 5,   6,  ".split(",") = ' + "1, 2, 3, 4, 5,   6,  ".split("\s*,\s*"));
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS82_5()">
</pre>
    </div>
</div>