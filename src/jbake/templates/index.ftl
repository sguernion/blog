<#assign pagetitle = "Guernion Sylvain">
<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header headerbg">
		<h1>Guernion Sylvain</h1>
	</div>
<div class="row">
	<div class="col-lg-8">
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
			<p>${post.date?string("dd MMMM yyyy")}</p>
			<div class="g-plusone" data-size="medium"></div>
	
			 <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://sguernion.github.io/${post.uri}" data-text="${post.title}" data-via="sguernion" data-lang="fr">Tweeter</a>
             <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                        
			
  			
  			<p>${post.body}</p>
			<p><a href="/${post.uri}#disqus_thread">Commentaires</a></p>
  		</#if>
  	</#list>
				<script type="text/javascript">
		  window.___gcfg = {lang: 'fr'};

		  (function() {
			var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
			po.src = 'https://apis.google.com/js/platform.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
		  })();
		</script>
	<hr />
	<p>Older posts are available in the <a href="${config.archive_file}">archive</a>.</p>
	</div>
	<div class="col-lg-4"><#include "aside.ftl"></div>
	
</div>
<#include "footer.ftl">