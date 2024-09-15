<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ Sea Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>	.login{
		width: 600px;
        margin-left: 436px;
    margin-top: 100px;
    border-radius: 20px;
    padding: 20px;
    	
	}
	
	</style>
</head>
<body style="background-color:#1146617d;" >
<form action="/login" method="post">
<nav class="navbar navbar-light" style="background-color: #314974;">
     <a class="navbar-brand" href="/views/about.jsp" style="margin-left:100px;font-size:30px;color:white">Cruise Sea Travels </a>
   <a class="navbar-brand" href="/views/login.jsp" style="margin-right:50px;font-size:25px;color:white">SignIn</a>
     
</nav>
<div class="login" style="background-color:LightSteelBlue">
	<h2 Style="text-align:center" >Provide your Credentials</h2>
	<h3  Style="text-align:center">${msg12}</h3>
	 <div class="form-group" >
    <label for="exampleInputEmail1">UserName</label>
    <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Username"  required>
    
    
    <label for="exampleInputEmail1">FirstName</label>
    <input type="text"  pattern="[a-zA-Z]+" title="must be alphabets only"  name="firstname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Firstname" required>
   
    
    <label for="exampleInputEmail1">LastName</label>
    <input type="text"  pattern="[a-zA-Z]+"  title="must be alphabets only"  name="lastname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Lastname" required>
    
     
    <label for="exampleInputEmail1">Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" title="Must be a mail" required>
  
  
    <label for="exampleInputEmail1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
     title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
   
    <label for="exampleInputEmail1">Phone</label>
    <input type="number" name="phno" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Phone" min="1000000000" max="9999999999" title="Must contain at least 10 digits" required>
    </div>
    
    <button type="submit" class="btn btn-primary mt-4 btn-block form-control" >Register</button>
    </div>
    </form>
    
</body>
</html>