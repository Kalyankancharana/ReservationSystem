<%@page import="com.wipro.ShipReservationSystem.Entities.Booking,java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body style="background-color:#1146617d;">
 <%@include file="header.jsp" %>

<h1 style="margin-left:550px;margin-top:50px">Tickets Booked By You</h1>
<h3 style="margin-left:600px">${message}</h3>
<table class="table table-dark" style="margin-top:50px">
 <thead>
    <tr>
    <th>PassengerName</th>
    <th>BookingId</th>
      <th>ShipId</th>
      <th>Shipname</th>
      <th>Source</th>
      <th>Destination</th>
      <th>DateOfJourney</th>
      <th>Time</th>
      <th>CustomerId</th>
      <th>seats</th>
      <th>Total price</th>
      <th >Action1</th>
      <th >Action2</th>
    </tr>
  </thead>
  <tbody>
 
<% List<Booking> ticket=(List<Booking>) request.getAttribute("bookings"); %>
<% for(int i=0;i<ticket.size();i++) {%>
   <tr>
   		<td><%= ticket.get(i).getPassengername() %></td>
   		<td><%= ticket.get(i).getBookingid() %></td>
	 <td><%= ticket.get(i).getSid() %></td>
	  <td><%= ticket.get(i).getShipname() %></td>
	    <td><%= ticket.get(i).getSource() %></td>
	    <td><%= ticket.get(i).getDestination() %></td>
	    <td><%= ticket.get(i).getDateofjourney() %></td>
	    <td><%= ticket.get(i).getTime() %></td>
	    <td><%= ticket.get(i).getPid() %></td>
	    <td><%= ticket.get(i).getSeats() %></td>
	    <td><%= ticket.get(i).getPrice()*ticket.get(i).getSeats() %></td>
		
		    <td> <a  href="/view/<%=ticket.get(i).getBookingid() %>" >ViewTicket</a></td>
		    		    <td> <a  href="/cancel/<%=ticket.get(i).getBookingid() %>" >cancel</a></td>
		    
		
    </tr>
    <% } %>
    </tbody>
    </table>
</body>
</html>