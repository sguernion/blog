<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header ${content.class}">
		<h1><#escape x as x?xml>${content.title}</#escape></h1>
	</div>

	<div class="g-plusone" data-size="medium"></div>
	
<a href="https://twitter.com/share" class="twitter-share-button" data-via="sguernion" data-lang="fr">Tweeter</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

	<p>${content.body}</p>

	<hr />
	 <div id="disqus_thread"></div>
    <script type="text/javascript">
        var disqus_shortname = 'sguernion'; // required: replace example with your forum shortname

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>
  
	
	<script type="text/javascript">
  window.___gcfg = {lang: 'fr'};

  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/platform.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>
<#include "footer.ftl">