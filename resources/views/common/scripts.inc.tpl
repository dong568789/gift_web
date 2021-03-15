<{block "head-scripts-laravel"}>
	<script>var Laravel = { csrfToken: '<{csrf_token()}>', baseuri: '<{""|url nofilter}>', serverTimeDelta : <{microtime(true)*1000}> - new Date().getTime() };</script>
<{/block}>
<script src="<{'web/js/jquery.js'|static}>"></script>
