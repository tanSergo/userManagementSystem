<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">


    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="confirmPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="confirmPassword" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="confirmPassword"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="firstname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="firstname" class="form-control" placeholder="Firstname"></form:input>
                <form:errors path="firstname"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="lastname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="lastname" class="form-control" placeholder="Lastname"></form:input>
                <form:errors path="lastname"></form:errors>
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

        <spring:bind path="isActive">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="isActive" class="form-control" placeholder="isActive"></form:input>
                <form:errors path="isActive"></form:errors>
            </div>
        </spring:bind>





        <spring:bind path="address.zip">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address.zip" class="form-control" placeholder="Zip"></form:input>
                <form:errors path="address.zip"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="address.country">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address.country" class="form-control" placeholder="Country"></form:input>
                <form:errors path="address.country"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="address.city">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address.city" class="form-control" placeholder="City"></form:input>
                <form:errors path="address.city"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="address.district">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address.district" class="form-control" placeholder="District"></form:input>
                <form:errors path="address.district"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="address.street">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address.street" class="form-control" placeholder="Street"></form:input>
                <form:errors path="address.street"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

<%--
    <form:form method="POST" modelAttribute="addressForm" class="form-signin">
        <h2 class="form-signin-heading">Enter your address</h2>
        <spring:bind path="zip">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="zip" class="form-control" placeholder="Zip"></form:input>
                <form:errors path="zip"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="country">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="country" class="form-control" placeholder="Country"></form:input>
                <form:errors path="country"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="city">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="city" class="form-control" placeholder="City"></form:input>
                <form:errors path="city"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="district">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="district" class="form-control" placeholder="District"></form:input>
                <form:errors path="district"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="street">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="street" class="form-control" placeholder="Street"></form:input>
                <form:errors path="street"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>
--%>



</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>