<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700|Roboto:300,400,500,700" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

	<!-- One Page Module Specific Stylesheet -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/op-css/onepage.css" type="text/css" />
	<!-- / -->

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/et-line.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts.css" type="text/css" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css" type="text/css" />
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/alhuda.css" type="text/css" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins.js"></script>

	<!-- Document Title
	============================================= -->
	<title>One Page with Side Header | Canvas</title>

</head>

<body class="stretched side-header">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        <!-- Header
        ============================================= -->
		<t:insertAttribute name="header" />
        
        <!-- Body
        ============================================= -->        
		<t:insertAttribute name="body" />

        <!-- Footer
        ============================================= -->
		<t:insertAttribute name="footer" />

    </div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/functions.js"></script>

</body>
</html>