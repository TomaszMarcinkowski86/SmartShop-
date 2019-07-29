<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tomasz_m
  Date: 27.07.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
    <title>${product.brand} ${product.model}</title>
</head>
<body>
<div class="jumbotron">
    <h1>Wybierz telefon dla siebie</h1>
    <p> tylko u nas promocje nie z tej ziemi </p>
</div>

<%@ include file="/WEB-INF/view/components/header.jsp" %>
<div class="row">
    <div id="secondColumn" class="col-sm-2">
        <img src="${product.imagePath}" alt="${product.brand} ${product.model} picture" width="134" hight="192">
    </div>
    <div id="thirdColumn" class="col-sm-6">
        <h1>${product.brand} ${product.model}</h1>
        <h4>System Operacyjny: ${product.operatingSystem}</h4>
        <h4>Przednia Kamera: ${product.primaryCameraMp}</h4>
        <h4>Tylna Kamera: ${product.secondaryCameraMp}</h4>
        <h1></h1>
    </div>
    <div id="fourthColumn" class="col-sm-2">
        <h2>${product.price} zł</h2>
        <form action="/dodaj-do-koszyka" method="POST">
            <button
                    type="submit" class="btn btn-default" name="productId" value="${product.id}">Do koszyka
            </button>
            <form action="/dodaj-do-koszyka" method="POST">
                <button
                        type="submit" class="btn btn-default" name="productId" value="${product.id}">Kup Teraz
                </button>
    </div>

</div>
</body>
</html>
