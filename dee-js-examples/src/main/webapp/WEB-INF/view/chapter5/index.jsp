<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/app.css" />' />
    <script type="text/javascript" src='<c:url value="/resources/js/chapter5/index.js" />'></script>
    <title>JS Example</title>
</head>
<body>
    
    <h1>Chapter 5</h1>
    <ul>
        <li><a href="#section1">Section 1</a> <em>Class</em></li>
        <li><a href="#section2">Section 2</a> <em>Object Oriented Techniques</em></li>
        <li><a href="#section3">Section 3</a> <em>Class and Type</em></li>
        <li><a href="#section4">Section 4</a> <em>Subclass</em></li>
        <li><a href="#section5">Section 5</a> <em>Module</em></li>
    </ul>
    <hr>
    
    <%@ include file="section1.jsp" %>
    <%@ include file="section2.jsp" %>
    <%@ include file="section3.jsp" %>
    <%@ include file="section4.jsp" %>
    <%@ include file="section5.jsp" %>

</body>
</html>