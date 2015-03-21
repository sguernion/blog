<%include  "header.gsp"%>

<%include  "menu.ftl"%>
	
<div class="page-header ${content.class} no-print">
	<h1>${content.title}</h1><span class="page-date"><em>${content.date.format("dd MMMM yyyy")}</em></span>
</div>
	
<% if (content.galerie_desc){ %><%include  "desc_galerie.gsp" %><%}%>
<% if (content.tags_desc){ %><%include "aside/tags.gsp" %><%}%>
<% if (content.links_desc){ %><%include "aside/links.gsp" %><%}%>
<% if (content.confs_desc){ %><%include "aside/conference.gsp" %><%}%>

<p>${content.body}</p>

<hr />

<%include  "footer.ftl"%>