<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>SGuernion</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="generator" content="JBake">

    <!-- Le styles -->
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/bootstrap.min.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/asciidoctor.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/base.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/prettify.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
	 <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet">
	
	

    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>fancy/jquery.fancybox.css?v=2.1.4" type="text/css" media="screen" />
    
    
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>fancy/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
       <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.1.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/prettify.js"></script>
	<script type="text/javascript" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>fancy/jquery.fancybox.pack.js?v=2.1.4"></script>
	 <script type="text/javascript" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>fancy/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
  </head>
  <body onload="prettyPrint()">
    <div id="wrap">
   