<#include "header.gsp">

	<#include "menu.gsp">
	
	<div class="page-header ${content.class}">
		<h1><#escape x as x?xml>${content.title}</#escape></h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

	
	<p>${content.body}</p>

	<hr />

<#include "footer.gsp">