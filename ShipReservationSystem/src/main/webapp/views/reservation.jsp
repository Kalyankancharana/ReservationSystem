<%@page import="com.wipro.ShipReservationSystem.Entities.Booking"%>
<%@page import="com.wipro.ShipReservationSystem.Entities.ShipDetails"%>
<%@page import="com.wipro.ShipReservationSystem.Repositories.ShipRepository"%>
<%@page import="com.wipro.ShipReservationSystem.Controller.ReservationController"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>

	.login{
		width: 600px;
        margin-left: 436px;
    margin-top: 10px;
    border-radius: 20px;
    padding: 20px;
    	
	}
	body{
		background-image:url('/images/images12.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
	
</style>
</head>
<body>
	 <%@include file="header.jsp" %>
	 <%int id2=(int) request.getAttribute("id1"); %>
	<% String name2=(String) request.getAttribute("name1"); %>
	<% ShipDetails ships1=(ShipDetails) request.getAttribute("ships12"); %>
	<h2 style="margin-left:560px;margin-top:20px;font-size:50px;color:#24458bf2">Booking Page</h2>
	
	<form action="/booking/<%=ships1.getSid() %>" method="post" >	
	<div class="login" style="color:#ffffffc7">
	
	
	 
<div class="col">
    <h3></h3>
     <b> <input type="hidden" value="<%=name2 %>" class="form-control" placeholder="Enter Name" readOnly></b>
    </div>

  <div class="row">
    
     <div class="col">
    <h3>PassengerName:</h3>
     <b> <input type="text" pattern="[a-zA-Z]+" title="must be alphabets only" name="passengername" class="form-control" placeholder="Enter PassengerName" required></b>
    </div>
    <div class="col">
    <h3>PassId:</h3>
     <b> <input type="number" value="<%=id2 %>" class="form-control" placeholder="Enter your Id" readOnly></b>
    </div>
    </div>

	
  <div class="row">
    <div class="col">
    <h3>ShipId:</h3>
    <b>  <input type="text" value="<%=ships1.getSid() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
    </div>
    <div class="col">
    <h3>ShipName:</h3>
     <b> <input type="text" value="<%=ships1.getShipname()  %>" class="form-control" placeholder="Enter your Id" readOnly></b>
    </div>
  </div>

  <div class="row">
    <div class="col">
    <h3>Source:</h3>
     <b> <input type="text" value="<%=ships1.getSource()  %>"  class="form-control" placeholder="Enter Name" readOnly></b>
    </div>
    <div class="col">
    <h3>Destination:</h3>
     <b> <input type="text" value="<%=ships1.getDestination()  %>" class="form-control" placeholder="Enter your Id" readOnly></b>
    </div>
  </div>



  <div class="row">
    <div class="col">
    <h3>DateOfJourney:</h3>
     <b> <input type="text" value="<%=ships1.getDateofjourney()  %>" class="form-control" placeholder="Enter Name" readOnly></b>
    </div>
    <div class="col">
    <h3>Time:</h3>
     <b> <input type="text" value="<%=ships1.getTime()  %>" class="form-control" placeholder="Enter your Id" readOnly></b>
    </div>
  </div>

<div class="row">
    <div class="col">
    <h3>TotalSeats:</h3>
     <b> <input type="text" value="<%=ships1.getTotalseats()  %>" class="form-control" placeholder="Enter Name" readOnly></b>
    </div>
    <div class="col">
    <h3>AvailableSeats:</h3>
     <b> <input type="text" value="<%=ships1.getAvailable() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
    </div>
  </div>

<div class="row">
   
    <div class="col">
    <h3>Price:</h3>
    <b>  <input type="text" value="<%=ships1.getCost() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
    </div>
  </div>

<div class="row">
   
    <div class="col">
    <h3>SeatsRequired:</h3>
     <b> <input type="number" name="seats" class="form-control" placeholder="Enter No Of Seats" min="1" required></b>
    </div>
  </div>

 
	    <button type="submit" class="btn btn-primary" Style="margin-top:10px;margin-left:230px">Payment</button>
	    </div>
    </form>
</body>
</html>