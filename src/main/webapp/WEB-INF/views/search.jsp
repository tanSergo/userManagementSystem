<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search a user</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">


    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>


<body>
<div class="container">

<form:form method="POST" modelAttribute="searchForm" class="form-signin">
    <h2 class="form-signin-heading">Choose search criteria</h2>
    <spring:bind path="username">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="username" class="form-control" placeholder="Usename"></form:input>
            <form:errors path="username"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="email">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="email" class="form-control" placeholder="Email"></form:input>
            <form:errors path="email"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="birthday">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="birthday" class="form-control" placeholder="Birthday"></form:input>
            <form:errors path="birthday"></form:errors>
        </div>
    </spring:bind>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
    </form:form>

</div>
</body>
</html>
