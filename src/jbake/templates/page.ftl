<#include "header.ftl">

	<#include "menu.ftl">
	
	<div class="page-header ${content.class}">
		<h1><#escape x as x?xml>${content.title}</#escape></h1>
	</div>
	
	<#if (content.galerie_desc)??><#include "desc_galerie.ftl"><#else></#if>
	<p>${content.body}</p>

	<hr />
<p><em>${content.date?string("dd MMMM yyyy")}</em></p>
<#include "footer.ftl">