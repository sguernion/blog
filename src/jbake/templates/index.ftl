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
  			<p>${post.body}</p>
  		</#if>
  	</#list>
	
	<hr />
	<p>Older posts are available in the <a href="${config.archive_file}">archive</a>.</p>
	</div>
	<div class="col-lg-4"><#include "aside.ftl"></div>
	
</div>
<#include "footer.ftl">