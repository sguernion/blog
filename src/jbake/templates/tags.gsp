<%include "header.gsp"%>
	
	<%include "menu.ftl"%>
	
	<div class="page-header headerbg">
		<h1>Tag: ${tag}</h1>
	</div>
		<p><h2><a href="/tags.html" >Tags</a></h2></p>
	<!--<ul>-->
		<%def last_month=null;%>
		<%tag_posts.each {post ->%>
		<%if (last_month) {%>
			<%if (post.date.format("MMMM yyyy") != last_month) {%>
				</ul>
				<h4>${post.date.format("MMMM yyyy")}</h4>
				<ul>
			<%}%>
		<%} else {%>
			<h4>${post.date.format("MMMM yyyy")}</h4>
			<ul>
		<%}%>

		<li>${post.date.format("dd")} - <a href="${post.uri}">${post.title}</a></li>
		<% last_month = post.date.format("MMMM yyyy")%>
		<%}%>
	</ul>

	

	<%include "footer.ftl"%>