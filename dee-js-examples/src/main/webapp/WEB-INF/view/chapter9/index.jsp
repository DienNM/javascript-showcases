<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/app.css" />' />
    <script type="text/javascript" src='<c:url value="/resources/js/chapter9/index.js" />'></script>
    <title>JS Example</title>
</head>
<body>
    
    <h1>Chapter 9</h1>
    <h2>Core Javascript Reference</h2>

    <ul>
        <li><a href="#section1">Section 1</a> <em></em></li>
        <li><a href="#section2">Section 2</a> <em></em></li>
    </ul>
    <hr>
    
    <%@ include file="section1.jsp" %>
    <%@ include file="section2.jsp" %>

</body>
</html>