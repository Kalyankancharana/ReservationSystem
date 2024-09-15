<%@page import="com.wipro.ShipReservationSystem.Entities.ShipDetails"%>
<%@page import="java.util.List,com.wipro.ShipReservationSystem.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>	
body{
		background-image:url('/images/pic21.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
.login{
		width: 450px;
        margin-left: 500px;
    margin-top: 0px;
    border-radius: 20px;
    padding: 20px;
    color:slateblue"	
    
	}
	select
	{
		border: 10px solid;
  padding: 10px;
  box-shadow: 3px 8px 6px 3px grey;
}
	}
	</style>
</head>
<body style="color:white;" >
 <%@include file="header.jsp" %>
 <h2 style="color:black;text-align:center;background-color:white">${msg23}</h2>
 <div class="login" >
	<h1 style="margin-left:90px;color:#0a58ca">Search Ships</h1>
<form method ="post" action="/ships">
	<div class="form-group" >
    <label for="exampleInputPassword1" style="color:#0a58ca;font-size:25px;margin-left:170px">From </label>
    <%-- <input type="text" class="form-control"  id="exampleInputPassword1" placeholder="Source" required>--%>
     <select class="form-control" name="source" id="exampleFormControlSelect1">
      <option>Visakhapatnam</option>
      <option>Goa</option>
      <option>Chennai</option>
      <option>Kerala</option>
      <option>Mumbai</option>
      <option>Kolkata</option>
            <option>Maldives</option>
      
    </select>
    </div>
    
    <div class="form-group">
    <label for="exampleInputPassword1" style="color:#0a58ca;font-size:25px;margin-left:180px;margin-top:0px">To </label>
     <select class="form-control" name="destination" id="exampleFormControlSelect1">
     <option>Maldives</option>
      <option>Goa</option>
      <option>Chennai</option>
      <option>Kerala</option>
      <option>Mumbai</option>
      <option>Kolkata</option>
            <option>Visakhapatnam</option>
      
    </select>
    </div>
    <button type="submit" class="btn btn-primary mt-4 btn-block " style="margin-left:135px">Search Ships</button>
     
  </div>
  </form>
  
</body>
</html>