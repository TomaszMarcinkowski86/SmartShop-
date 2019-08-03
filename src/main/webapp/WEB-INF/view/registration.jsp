<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: tomasz_m
  Date: 03.08.2019
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja</title>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
</head>
<body>

<%@ include file="/WEB-INF/view/components/header.jsp" %>

<div class="col-md-8" align="left">
    <form action="/rejestracja" method="POST">
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" class="form-control" id="login" name="login" required/>
        </div>

        <div class="form-group">
            <label for="name">Imię</label>
            <input type="text" class="form-control" id="name" name="name" required/>
        </div>

        <div class="form-group">
            <label for="surname">Nazwisko</label>
            <input type="text" class="form-control" id="surname" name="surname" required/>
        </div>

        <div class="form-group">
            <label for="email">Adres email</label>
            <input type="text" class="form-control" id="email" name="email" required/>
        </div>

        <div class="form-group">
            <label for="password">Hasło</label>
            <input type="password" class="form-control" id="password" name="password" required/>
        </div>
        <button type="submit" class="btn btn-primary">Zarejestruj się!</button>
    </form>
</div>

</body>
</html>
