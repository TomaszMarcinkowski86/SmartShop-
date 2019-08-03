<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: tomasz_m
  Date: 27.07.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>


<html>
<head>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<div class="jumbotron">
    <h1>Wybierz telefon dla siebie</h1>
    <p> tylko u nas promocje nie z tej ziemi </p>
</div>
<div class="container-fluid">
    <div class="row">
        <%@ include file="/WEB-INF/view/components/header.jsp" %>
    </div>

    <div class="row">
        <div class="col-sm-2" style="padding-left: 50px">
            <%@ include file="components/products-filter.jsp" %>
        </div>
        <div class="col-sm-10">
            <c:forEach items="${products}" var="product">
                <div class="row">

                    <div id="secondColumn" class="col-sm-3">
                        <a herf="/product?id=${product.id}">
                            <img src="${product.imagePath}" alt="${product.brand} ${product.model} picture" width="134"
                                 hight="192">
                        </a>
                    </div>
                    <div id="thirdColumn" class="col-sm-7">

                        <h1><a style="color:#989a9c"
                               href="/product?id=${product.id}">${product.brand} ${product.model}</a></h1><br>

                        <h4>System Operacyjny: ${product.operatingSystem}</h4>
                        <h4>Przednia Kamera: ${product.primaryCameraMp}</h4>
                        <h4>Tylna Kamera: ${product.secondaryCameraMp}</h4>
                        <h1></h1>
                    </div>
                    <div id="fourthColumn" class="col-sm-2">

                        <fmt:setLocale value="pl_PL"/>
                        <h5><fmt:formatNumber value="${product.price}" type="currency" minFractionDigits="2"/></h5>

                        <form action="/dodaj-do-koszyka" method="POST">
                            <button type="submit" class="btn btn-default" name="productId" value="${product.id}">Do
                                koszyka
                            </button>
                        </form>
                        <form action="/kup-teraz" method="POST">
                            <button type="submit" class="btn btn-default" name="productId" value="${product.id}">Kup
                                teraz
                            </button>
                        </form>
                    </div>

                </div>
            </c:forEach>
        </div>
    </div>


</div>

<script src="webjars/jquery/3.4.1/jquery.min.js"/>
<script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>
</body>
</html>
