<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/app.css" />' />
    <title>JS Example Index</title>
</head>
<body>
    <h1>Table of Contents</h1>
    <ul>
        <li><a href="<c:url value="/chapter1" />">Chapter 1</a> <em>Type</em></li>
        <li><a href="<c:url value="/chapter2" />">Chapter 2</a> <em>Object</em></li>
        <li><a href="<c:url value="/chapter3" />">Chapter 3</a> <em>Array</em></li>
        <li><a href="<c:url value="/chapter4" />">Chapter 4</a> <em>Functions</em></li>
        <li><a href="<c:url value="/chapter5" />">Chapter 5</a> <em>Class & Module</em></li>
        <li><a href="<c:url value="/chapter6" />">Chapter 6</a> <em></em></li>
        <li><a href="<c:url value="/chapter7" />">Chapter 7</a> <em>DOM</em></li>
        <li><a href="<c:url value="/chapter8" />">Chapter 8</a> <em>Regular Expression</em></li>
        <li><a href="<c:url value="/chapter9" />">Chapter 9</a> <em>Core Javascript Reference</em></li>
    </ul>
    <hr>
</body>
</html>