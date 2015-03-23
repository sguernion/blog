<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><%if (content.title){%>${content.title}<%}else{%>SGuernion<%}%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="generator" content="JBake">

    <!-- Le styles -->
    <link href="/blog/components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/blog/components/asciidoctor.js/dist/css/asciidoctor.css" rel="stylesheet">
    <link href="/blog/components/prettify-min/prettify.min.css" rel="stylesheet">

	<link href="/blog/css/base.css" rel="stylesheet">
	
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/blog/components/html5shiv/dist/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>favicon.ico">
    <link href="/blog/components/fontawesome/css/font-awesome.css" rel="stylesheet">
	
	

    <link rel="stylesheet" href="/blog/components/fancybox/source/jquery.fancybox.css?v=2.1.4" type="text/css" media="screen" />
    
    
    <link rel="stylesheet" href="/blog/components/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
    <script type="text/javascript" src="/blog/components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="/blog/components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/blog/components/prettify-min/prettify.min.js"></script>
	<script type="text/javascript" src="/blog/components/fancybox/source/jquery.fancybox.pack.js?v=2.1.4"></script>
	<script type="text/javascript" src="/blog/components/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	 
	 <!-- web components-->
	 <script src="/blog/components/webcomponentsjs/webcomponents.min.js"></script>
	 <link rel="import" href="/blog/components/myComponents.html">
  </head>
  <body onload="prettyPrint()">
    <div id="wrap">
   