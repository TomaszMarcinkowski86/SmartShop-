<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
    <title>Koszyk</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <%@include file="/WEB-INF/view/components/header.jsp" %>
    </div>
    <div class="row" style="padding-top: 20px">
        <div class="col-sm-9"><h3>Twoje zakupy</h3></div>
        <div class="col-sm-3"><h3>Cena</h3></div>
    </div>
    <div class="row" style="padding-top: 20px">
        <div class="col-sm-12">
            <c:forEach items="${products}" var="product">
                <div class="row" style="padding-top: 10px">
                    <div class="col-sm-2">
                        <img src="${product.imagePath}" alt="${product.brand} ${product.model} picture"
                             width="134"
                             height="192">
                    </div>
                    <div class="col-sm-7">
                        <h1><a style="color: #404040;"
                               href="/produkt?id=${product.id}">${product.brand} ${product.model}</a></h1>

                    </div>
                    <div class="col-sm-3">
                        <fmt:setLocale value="pl_PL"/>
                        <h4><fmt:formatNumber value="${product.price}" type="currency" minFractionDigits="2"/></h4>
                        <form action="/usun-z-koszyka" method="POST">
                            <button type="submit" class="btn btn-default" name="productId" value="${product.id}">USUN Z
                                KOSZYKA
                            </button>
                        </form>
                    </div>
                </div>
            </c:forEach>
            <div class="row" style="padding-top: 20px">
                <div class="col-md-3">
                    <h3> Razem do zapłaty : <fmt:formatNumber value="${toPay}" type="currency"
                                                              minFractionDigits="2"/></h3>
                </div>
            </div>


        </div>
    </div>
        <script src="webjars/jquery/3.4.1/jquery.min.js"/>
        <script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>

</body>
</html>