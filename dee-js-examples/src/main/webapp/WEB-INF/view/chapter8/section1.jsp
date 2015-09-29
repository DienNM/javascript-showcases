<script type="text/javascript" src='<c:url value="/resources/js/chapter8/section1.js" />'></script>
<div>
    <h2><a name = "section1">Section 1</a></h2>

    <h3>Defining Regular Expressions</h3>
    <div class = "section">

    	<p class="title">Literal Characters</p>
<pre class="code">
var pattern = /s$//; match to any strings that end with 's'
console.log(typeof pattern); // object

var pattern = new RegExp("s$");
</pre>

    	<p class="sub-title">Special Characters</p>
<pre class="code">
^ $ . * + ? = ! : | \ / ( ) [ ] { }
</pre>


    	<p class="title">Character Class</p>
    	<p>Individual literal characters can be combined into  character classesby placing them within square brackets.</p>

<pre class="code">
/[abc]/ = match any one of letters a, b, c <span class="code-explain">[]</span>
/[^abc]/ = match all letters except a,b,c <span class="code-explain">Negated [^]</span>
/[a-c]/ = Range of letters: frocm a to c <span class="code-explain">Range: using hyphen</span>
/[a-zA-Z0-9]/ = Range of letters <span class="code-explain">Range: using hyphen</span>

</pre>
<pre class="code">
<img src="<c:url value="/resources/images/regexp-character-class.png" />">
</pre>


    	<p class="title">Repetition</p>
<pre class="code">
/\d{2,4}/
/\w{3}\d?/
/\s+java\s+/
/[^(]*/
</pre>

<pre class="code">
<img src="<c:url value="/resources/images/regexp-repetition.png" />">
</pre>

	<p class="sub-title">nongreedy matching</p>
	<p>matching as few characters as necessary</p>
<pre class="code">

	<span class="code-explain"><strong>?? , *? +?</strong></span>

/a+b/ -> When apply: "aaab" => Match "aaab"
/a+?b/ -> When apply: "aaab" => Match "ab"
</pre>


	<p class="title">Alternation, Grouping, and References</p>
	<p>The regular-expression grammar includes special characters for <strong>specifying alternatives</strong>, <strong>grouping subexpressions</strong>, and <strong>referring to previous subexpressions</strong>.</p>

	<p class="sub-title">Alternative: | (pipe)</p>
<pre class="code">
<span class="code-explain">/ab|cd|ef/</span> -> Match 'ab' or 'cd' or 'ef'
<span class="code-explain">/\d{3}|[a-z]{4}/</span> -> Match 3 characters or four lowercase letters
<span class="code-explain">/a|ab/</span> -> Apply "ab": Match only "a"
</pre>

	<p class="sub-title">Group: () (parentheses)</p>
	<ul>
		<li>Group separate items into a single subexpression so that the items can be treated as a single unit by: | * ? +</li>
		<li>Define subpatterns within the  complete  pattern</li>
		<li>Refer back to subexpression</li>
	</ul>
<pre class="code">
<span class="code-explain">/(ab|cd)+|ef/</span>

<span class="code-explain">/[a-z]+\d+/</span> -> Cannot get characters that match with \d+
<span class="code-explain">(/[a-z]+(\d+)/)</span>

// Group items in a regular expression to create a numbered reference to those items
<span class="code-explain">/['"][^'"]*['"]/</span>
<span class="code-explain">/(['"])[^'"]*\1/</span>

// Group items in a regular expression without creating a numbered reference to those items

<span class="code-explain">/([Jj]ava([Ss]cript)?)\sis\s(fun\w*)/</span>  -> \3 refers to the text matched by (fun\w*).

// Using: <strong class="red">?:</strong>
<span class="code-explain">/([Jj]ava(?:[Ss]cript)?)\sis\s(fun\w*)/</span> -> \2 refers to the text matched by (fun\w*).
</pre>

<pre class="code">
<img src="<c:url value="/resources/images/regexp-grouping.png" />">
</pre>

    </div>
</div>