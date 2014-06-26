	<!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>">Sguernion</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html"><i class="fa fa-home"></i> Home</a></li>
			<li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>expositions/index.html">Galerie</a></li>
			<li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>projects.html">Projets</a></li>
			
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>about.html">About</a></li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.feed_file}"><i class="fa fa-rss" alt="Flux RSS"></i></a></li>
          </ul>
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="https://github.com/sguernion"><i class="fa fa-github"></i></a></li>
			<li><a href="https://twitter.com/sguernion"><i class="fa fa-twitter"></i></a></li>
			<li><a href="https://plus.google.com/111452422183097276035"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="https://fr.linkedin.com/in/sguernion/"><i class="fa fa-linkedin"></i></a></li>
      </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container">