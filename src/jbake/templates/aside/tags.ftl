<h2><a href="/blog/tags.html" >Tags</a></h2>
 <#assign z=[]>
 <#assign m=[]>
 <#list published_posts as post>
  		<#if (post.status == "published")>
		<#list post.tags as tags>
			<#list "${tags}"?split(",") as tag>
				<#if (!z?seq_contains(tag))>
					<#assign z = z+[tag]>
					<#assign m = m+[{"name":tag,"count":1}]>
				<#else> 
					<#list m as tagc>
						<#if (tagc.name == tag)>
							<!-- TODO remove element-->
							<#assign m = m+[{"name":tag,"count":tagc.count+1}]>
						</#if>
					</#list>
				</#if>
			</#list>
		</#list>
		</#if>
	</#list>
<#list m as tag>
	<p><a href="tags/${tag.name}.html">${tag.name}</a> (${tag.count})</p>	
</#list>