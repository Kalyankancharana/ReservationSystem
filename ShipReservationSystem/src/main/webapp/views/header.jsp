<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>

</head>
<body>
	<% String name21=(String) request.getAttribute("name123"); %>

	<nav class="navbar navbar-light" style="background-color: #314974;">
     <a class="navbar-brand" href="/views/about.jsp" style="margin-left:50px;font-size:30px;color:white">Cruise Sea Travels </a>
      <a class="navbar-brand" href="/home12" style="margin-left:50px;font-size:25px;color:white">Search</a>
  <!-- Example single danger button 
  <form action="/tickets/<%=name21%>">
      <button type="submit" class="btn btn-secondary  " style="margin-left:20px"  >Your Tickets</button><br><br>
  </form>-->
        <a class="navbar-brand" href="/tickets/<%=name21%>" style="font-size:25px;color:white">Your Tickets</a>
          <a class="navbar-brand" href="/viewall" style="font-size:25px;color:white">ViewShips</a>
  
 
<!-- <div class="dropdown" style="margin-left:300px">
  <button class="btn btn-secondary dropdown-toggle" style="background-color: white;color:black"data-bs-toggle="dropdown" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Offers
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">SummerTour</a>
    <a class="dropdown-item" href="#">TripToGoa</a>
    <a class="dropdown-item" href="#">StayInMaldives</a>
  </div>
</div> -->

<div class="dropdown" style="margin-right:56px;">
  <button class="btn btn-secondary dropdown-toggle" style="background-color: white;color:black" data-bs-toggle="dropdown" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Settings
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="/views/password.jsp">ChangePassword</a>
    <a class="dropdown-item" href="#">Contact</a>
    <a class="dropdown-item" href="#">About</a>
     <a class="dropdown-item" href="/logout" style="color:black">SignOut</a>
  </div>
</div>

 
     
</nav>
 
</body>
</html>