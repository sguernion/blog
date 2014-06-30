<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header ${content.class}">
		<h1><#escape x as x?xml>${content.title}</#escape></h1>
	</div>
	
	 <p class="post-info no-print">
  				<i class="fa fa-calendar-o"></i>&nbsp;
				${content.date?string("dd MMMM yyyy")}
				&nbsp;&nbsp;&nbsp;<i class="fa fa-bullhorn"></i>&nbsp;
				<a href="${content.uri}#disqus_thread" data-disqus-identifier="${content.uri}">
					${config.disqus_no_comments}
				</a>&nbsp;&nbsp; <i class="fa fa-tag"></i>&nbsp; <#list content.tags as tag><a href="tags/${tag}.html">${tag}</a><#if tag_has_next>,</#if></#list>
	 </p>
	 <#include "share-post.ftl">

	<p>${content.body}</p>

	<hr />
	 <div id="disqus_thread" class="no-print"></div>
    <script type="text/javascript">
        var disqus_shortname = '${config.disqus_username}'; // required: replace example with your forum shortname
		var disqus_identifier = '${content.uri}';
		var disqus_title = "${content.title}";
		var disqus_url = '${config.site_host}${content.uri}';

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>
  
<#include "footer.ftl">