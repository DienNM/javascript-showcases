<script type="text/javascript" src='<c:url value="/resources/js/chapter6/section2.js" />'></script>
<div>
    <h2><a name = "section2">Section 2</a></h2>

    <h3>Browser & Screen Information</h3>
    <div class = "section">
    	<p class="title">The Navigator Object</p>
    	<ul>
    		<li>window.navigator: refers to Navigator object</li>
    		<li>Property: </li>
    		<ul>
    			<li><strong>appName</strong>: <em>The full name of the web browser</em></li>
    			<li>appVersion</li>
    			<li>userAgent</li>
    			<li>platform</li>
    		</ul>
    	</ul>

<pre class="code">
n_appCodeName.innerText = window.navigator.appCodeName; // <span class="code-explain">n_appCodeName becomes window's property</span>
n_appName.innerText = window.navigator.appName;
document.getElementById("n_appVersion").innerText = window.navigator.appVersion;
document.getElementById("n_userAgent").innerText = window.navigator.userAgent;
document.getElementById("n_platform").innerText = window.navigator.platform;
</pre>

<pre class="code">
appCodeName = <span id ="n_appCodeName"></span>
appName = <span id ="n_appName"></span>
appVersion = <span id ="n_appVersion"></span>
userAgent = <span id ="n_userAgent"></span>
platform = <span id ="n_platform"></span>
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS62_1()">
</pre>

		<p class="title">Screen Object</p>
		<ul>
    		<li>window.screen: refers to Screen object. Provice size of user's display and number of colors available in it</li>
    		<li>Property: </li>
    		<ul>
    			<li><strong>width/height</strong>: <em>The size of display in pixels</em></li>
    			<li><strong>availWidth/availHeight</strong>: <em>The size of display that is actually available, ignore spaces as desktop taskbar</em></li>
    			<li><strong>colorDepth: </strong>specifies bits-per-pixel value of the screen: 16, 24, 32</li>
    		</ul>
    	</ul>
<pre class="code">
availHeight = <span id ="n_availHeight"></span>
availWidth = <span id ="n_availWidth"></span>

availLeft = <span id ="n_availLeft"></span>
availTop = <span id ="n_availTop"></span>

colorDepth = <span id ="n_colorDepth"></span>
pixelDepth = <span id ="n_pixelDepth"></span>

height = <span id ="n_height"></span>
width = <span id ="n_width"></span>
<span class="code-result">Result>  </span> <input value="check" type="button" onclick="exampleJS62_2()">
</pre>


	</div>
</div>