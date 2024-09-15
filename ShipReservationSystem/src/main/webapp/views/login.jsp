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
    margin-top: 199px;
    border-radius: 20px;
    padding: 20px;	
	}
	.button
	{
		margin-left:60px
	}
</style>
</head>
<body style="background-color:#1146617d;">

<form  action="/search" method="post" >
<nav class="navbar navbar-light" style="background-color: #314974;">
     <a class="navbar-brand" href="/views/about.jsp" style="margin-left:615px;font-size:30px;color:white">Cruise Sea Travels </a>
     
</nav>
<div class="login" style="background-color:lightgray">
<h1 class="text-center" >Login Here</h1>
<h3 Style="text-align:center">${message}</h3>

<h3 Style="text-align:center">${msg}</h3>
<h3 Style="text-align:center">${msg1}</h3>
	 <div class="form-group" >
    <label for="exampleInputEmail1">Username</label><br>
    <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Username" required>
   
    
    
    <label class=" mt-3"for="exampleInputEmail1">Password</label><br>
    <input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
   	    <a href="/views/forgotpassword.jsp">Forgot Password</a>
   	
    </div>
    <button type="submit" class="btn btn-primary mt-4 btn-block form-control"  >Login</button><br><br>
    <div style="margin-left: 187px;">
    <a  href="/views/Register.jsp" >NewUser? Then Click Here...</a>
    </div>
   
</form>
</body>
</html>