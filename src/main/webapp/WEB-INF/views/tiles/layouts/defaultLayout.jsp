<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:getAsString name="title" /></title>
    <spring:url value="resources/bootstrap/css/bootstrap.min.css" var="bootstrapCss" />
	<link href="${bootstrapCss}" rel="stylesheet" />
	 <spring:url value="resources/bootstrap/css/custom.css" var="customCss" />
	<link href="${customCss}" rel="stylesheet" />
	
	<spring:url value="resources/bootstrap/js/jquery.min.js"	var="jqueryJs" />
	<script src="${jqueryJs}"></script>
    <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .topnav {
      padding-top: 20px;
      background-color: #f1f1f1;
    }
    .topmenu {
      background-color: #33cc33;
    }
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>

    
</head>
  
<body>
        <header id="header">
            <tiles:insertAttribute name="header" />
        </header>
     
        <section id="topmenu">
            <tiles:insertAttribute name="menu" />
        </section>
             
        <section id="site-content">
            <tiles:insertAttribute name="body" />
        </section>
         
        <footer id="footer">
            <tiles:insertAttribute name="footer" />
        </footer>
</body>
</html>