<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/app.css" />' />
    <script type="text/javascript" src='<c:url value="/resources/js/chapter8/index.js" />'></script>
    <title>JS Example</title>
</head>
<body>
    
    <h1>Chapter 8</h1>
    <h2>Regular Expression</h2>

    <p>RegExp is an object that describes pattern of characters</p>

    <ul>
        <li><a href="#section1">Section 1</a> <em>Defining Regular Expression</em></li>
        <li><a href="#section2">Section 2</a> <em>String Methods for Pattern Matching</em></li>
    </ul>
    <hr>
    
    <%@ include file="section1.jsp" %>
    <%@ include file="section2.jsp" %>

</body>
</html>