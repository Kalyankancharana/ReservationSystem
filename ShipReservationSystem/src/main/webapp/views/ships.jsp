<%@page import="com.wipro.ShipReservationSystem.Entities.ShipDetails"%>
<%@page import="java.util.List,com.wipro.ShipReservationSystem.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
body{
		background-image:url('/images/ship4.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
	</style>
</head>
<body>
 <%@include file="header.jsp" %>

<form style="margin-top:50px">
<h2 style="margin-left:600px;color:white">Ships to your Destination</h2>
  <table class="table table-dark table-striped">
  <thead>
    <tr>
    <th>ShipId</th>
      <th>Name</th>
      <th>Source</th>
      <th>Destination</th>
      <th>Date</th>
      <th>Time</th>
      <th>TotalSeats</th>
      <th>AvailableSeats</th>
      <th>cost</th>
      <th >action</th>
    </tr>
  </thead>
 
  <tbody>
  <% List<ShipDetails> ships1=(List<ShipDetails>) request.getAttribute("ships"); %>
  <% for(int i=0;i<ships1.size();i++) {%>
   <tr>
   		<td><%= ships1.get(i).getSid() %></td>
	 <td><%= ships1.get(i).getShipname() %></td>
	    <td><%= ships1.get(i).getSource() %></td>
	    <td><%= ships1.get(i).getDestination() %></td>
	     <td><%= ships1.get(i).getDateofjourney() %></td>
	      <td><%= ships1.get(i).getTime() %></td>
	    <td><%= ships1.get(i).getTotalseats() %></td>
	    <td><%= ships1.get(i).getAvailable() %></td>
	    <td><%= ships1.get(i).getCost() %></td>
		
		    <td> <a  href="/book/<%=ships1.get(i).getSid() %>" >Book Ticket</a></td>
		
    </tr>
    <% } %>
  </tbody>
  
</table>
</form>
</body>
</html>