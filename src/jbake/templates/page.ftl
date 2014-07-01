<#include "header.ftl">

	<#include "menu.ftl">
	
	<div class="page-header ${content.class} no-print">
		<h1><#escape x as x?xml>${content.title}</#escape></h1><span class="page-date"><em>${content.date?string("dd MMMM yyyy")}</em></span>
	</div>
	
	<#if (content.galerie_desc)??><#include "desc_galerie.ftl"><#else></#if>
	<#if (content.tags_desc)??><#include "aside/tags.ftl"><#else></#if>
	<p>${content.body}</p>

	<hr />

<#include "footer.ftl">