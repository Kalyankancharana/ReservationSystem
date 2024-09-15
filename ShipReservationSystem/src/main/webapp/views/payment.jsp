<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
</head>
<body>
 <%@include file="header.jsp" %>
<h1 style="margin-left:530px;margin-top:100px;color:green">Payment done Succesfully</h1>
<% int id1=(int) request.getAttribute("bid"); %>
<form action="/view/<%=id1%>" method="get">
<button type="submit" class="btn btn-primary" Style="margin-top:10px;margin-left:670px">view ticket</button></form>
</body>
</html>