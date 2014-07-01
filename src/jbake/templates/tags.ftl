<#include "header.ftl">

	<#include "menu.ftl">
	
	<div class="page-header headerbg">
		<h1>Tag: ${tag}</h1>
	</div>
		<p><h2><a href="/blog/tags.html" >Tags</a></h2></p>
	<!--<ul>-->
		<#list tag_posts as post>
		<#if (post.status == "published")>
		<#if (last_month)??>
			<#if post.date?string("MMMM yyyy") != last_month>
				</ul>
				<h4>${post.date?string("MMMM yyyy")}</h4>
				<ul>
			</#if>
		<#else>
			<h4>${post.date?string("MMMM yyyy")}</h4>
			<ul>
		</#if>
		
		<li>${post.date?string("dd")} - <a href="/blog/${post.uri}">${post.title}</a></li>
		<#assign last_month = post.date?string("MMMM yyyy")>
		</#if>
		</#list>
	</ul>
	
<#include "footer.ftl">