<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.wipro.ShipReservationSystem.Entities.Booking"%>
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
</style>
</head>
<body>

<% Booking ships1=(Booking) request.getAttribute("val"); %>


	<h2 style="margin-left:630px;margin-top:20px;font-size:50px;color:#24458bf2">E-Ticket</h2>
	
	
	
	
	
<div class="login">
<div class="row">
    <div class="col">
    <h3>BookingId:</h3>
    <b>  <input type="text" value="<%=ships1.getBookingid() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
    </div>
    </div>
  <div class="row">
    <div class="col">
    <h3>UserName:</h3>
     <b> <input type="text" value="<%=ships1.getName() %>" class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h3>PassId:</h3>
     <b> <input type="number" value="<%=ships1.getPid() %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
    </div>
 
	
  <div class="row">
    <div class="col">
    <h3>PassengerName:</h3>
    <b>  <input type="text" value="<%=ships1.getPassengername() %>"  class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h3>ShipName:</h3>
     <b> <input type="text" value="<%=ships1.getShipname()  %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
  </div>

  <div class="row">
    <div class="col">
    <h3>Source:</h3>
     <b> <input type="text" value="<%=ships1.getSource()  %>"  class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h3>Destination:</h3>
     <b> <input type="text" value="<%=ships1.getDestination()  %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
  </div>



  <div class="row">
    <div class="col">
    <h3>DateOfJourney:</h3>
     <b> <input type="text" value="<%=ships1.getDateofjourney()  %>" class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h3>Time:</h3>
     <b> <input type="text" value="<%=ships1.getTime()  %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
  </div>

<div class="row">
    <div class="col">
    <h3>NoOfSeats:</h3>
     <b> <input type="text" value="<%=ships1.getSeats()  %>" class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h3>Seats:</h3>
     <b> <input type="text" value="<%="S"%><%=ships1.getBookingid() %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
  </div>

<div class="row">
   
    <div class="col">
    <h3>Price:</h3>
    <b>  <input type="text" value="<%=ships1.getPrice()*ships1.getSeats() %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
  </div>

<div class="row">
   
    
  </div>

 <form action="/home123">
	    <button class="btn btn-primary mt-4 btn-block form-control" onclick="window.print()" >PrintTicket</button>
	    </form>
	    </div>
    
</div>
</body>
</html>