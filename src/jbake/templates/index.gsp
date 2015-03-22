<#assign pagetitle = "Guernion Sylvain">
<%include "header.gsp"%>
	
<%include "menu.gsp"%>

<div class="page-header headerbg no-print">
	<h1>Guernion Sylvain</h1>
</div>

<div class="row">
	<div class="col-lg-8">
		<%published_posts.each {post ->%>
			<hr/>	
				<a href="${post.uri}"><h1>${post.title}</h1></a>		
				 <p class="post-info">
					<i class="fa fa-calendar-o"></i>&nbsp;
					${post.date.format("dd MMMM yyyy")}
					&nbsp;&nbsp;&nbsp;<i class="fa fa-bullhorn"></i>&nbsp;
					<a href="${post.uri}#disqus_thread" data-disqus-identifier="${post.uri}">
						${config.disqus_no_comments}
					</a>&nbsp;&nbsp; <i class="fa fa-tag"></i>&nbsp; <%
								out << post.tags.collect { post_tag ->
									"""<a href="tags/${post_tag}.html">${post_tag}</a>"""
								} .join(", ")
							%>
					&nbsp;&nbsp;  <!-- \\include "share-index.ftl" -->
									
				</p>
				<p>${post.body}</p>
			<%}%>
		<hr />
		<p>Billets plus anciens disponibles sur la page <a href="${config.archive_file}">archive</a>.</p>
	</div>
	<div class="aside col-lg-4"><%include "aside.gsp"%></div>
</div>
</div>
<%include "footer.gsp"%>