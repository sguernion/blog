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
    <link href="/blog/css/bootstrap.min.css" rel="stylesheet">
    <link href="/blog/css/asciidoctor.css" rel="stylesheet">
    <link href="/blog/css/base.css" rel="stylesheet">
    <link href="/blog/css/prettify.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>favicon.ico">
	 <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet">
	
	

    <link rel="stylesheet" href="/blog/fancy/jquery.fancybox.css?v=2.1.4" type="text/css" media="screen" />
    
    
    <link rel="stylesheet" href="/blog/fancy/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
       <script src="/blog/js/jquery-1.11.1.min.js"></script>
    <script src="/blog/js/bootstrap.min.js"></script>
    <script src="/blog/js/prettify.js"></script>
	<script type="text/javascript" src="/blog/fancy/jquery.fancybox.pack.js?v=2.1.4"></script>
	 <script type="text/javascript" src="/blog/fancy/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
  </head>
  <body onload="prettyPrint()">
    <div id="wrap">
   