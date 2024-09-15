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
		background-image:url('/images/ship2.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
	.sent
	{
	margin-top:40px;
		color:navy;
		
	}
	.msg
	{
		margin-top:10px;
		color:navy;
	}
</style>
</head>
<body  >

<nav class="navbar navbar-light" style="background-color:#314974;">

  <a class="navbar-brand" href="#" style="margin-left:100px;font-size:30px;color:white">Cruise Sea Travels</a>
   <a class="navbar-brand" href="/views/login.jsp" style="margin-right:50px;font-size:25px;color:white">SignIn</a>
</nav>
<h3 class="text-center msg">${msg }</h3>
<h1 class="text-center sent">ENJOY THE OCEAN WITH YOUR FAMILY</h1>
<h3 class="text-center msg">Make time for travel.The memories will last lifetime  </h3>






</body>
</html>