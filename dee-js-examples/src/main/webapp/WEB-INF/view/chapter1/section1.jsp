<script type="text/javascript" src='<c:url value="/resources/js/chapter1/section1.js" />'></script>


<div>
    <h2><a name = "section1">Section 1</a></h2>
    <h3>Optional Semicolons</h3>
    <div class = "section">
    	<p>It usually treats line breaks as semicolons only if it can't parse the code without the semicolons</p>
<pre class="code">
var a
a
=
3
<span class="code-result">Result> var a; a = 3;</span> <input value="check" type="button" onclick="exampleCS1_1()">

var y = x + f
(a+b).toString()
<span class="code-result">Result> var y = x + f(a+b).toString();</span>
</pre>




	<p>Exception 1: <strong>return</strong>, <strong>break</strong>, <strong>continue</strong>: 
	If a line break appears after any of these words (before any other tokens), JavaScript will always interpret that line break as a semicolon</p>

<pre class="code">
return
true;
<span class="code-result">Result> return; true;</span> 
</pre>



	<p>Exception 2: <strong>++</strong>, <strong>--</strong> operators: Using as a prefix instead of postfix</p>
<pre class="code">
var a = 2, b = 3;
a
++
b
<span class="code-result">a; ++b;</span> <input value="check" type="button" onclick="exampleCS1_2()">
var a = 2, b = 3;
a++
b
<span class="code-result">a++; b;</span> <input value="check" type="button" onclick="exampleCS1_3()">
</pre>
    </div>

</div>