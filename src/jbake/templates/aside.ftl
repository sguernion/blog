<h2>Liens</h2>
<div class="row">
	<div class="col-lg-6"> 
	<p><b>Informatique : </b></p>
	<p>    - <a target="_blank" href="http://www.breizhjug.org/">BreizhJug</a></p>
	<p>    - <a target="_blank" href="http://www.breizhcamp.org/">BreizhCamp</a></p>
	</div>
	<div class="col-lg-6"> 
	<p><b>Do It Yourself : </b></p>
	<p>    - <a target="_blank" href="http://www.lecaribou007.fr/">Enceintes DIY</a></p>
	<p>    - <a target="_blank" href="http://www.ydle.fr/">Domotique DIY</a></p>
	<p>    - <a target="_blank" href="http://forum.raspfr.org/">Raspberry Fr</a></p>
	</div>
</div>
 
<div class="row">
<div class="col-lg-6"> 
<p><b>Art : </b></p>
<p>    - <a target="_blank" href="http://www.ateliermagique.com/fr/">Atelier Magique</a></p>
<p>    - <a target="_blank" href="http://www.atelierpretexte.fr/">Atelier Pretexte</a></p>
<p>    - <a target="_blank" href="http://ninacharlier.com/">Nina Charlier</a></p>
</div>
</div>

 <p><b>Tags :</b></p>
 <#assign z=[]>
 <#assign m=[]>
 <#list posts as post>
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
 <br/><br/><hr/>
<a class="twitter-timeline" href="https://twitter.com/sguernion" data-widget-id="324975968873742336">Tweets de @sguernion</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>