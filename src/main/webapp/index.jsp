<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

#bg {
  position: fixed;
  top: -50%;
  left: -50%;
  width: 200%;
  height: 200%;
  z-index: -1;
}
#bg img {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  min-width: 50%;
  min-height: 50%;
  filter: blur(2px);
  -webkit-filter: blur(2px);
}
</style>
</head>
<body>
<nav>
	<ul class="nav1">
		<li class="nav2"><a class="nav3" href="index.jsp">ABC</a></li>
		<li class="nav2"><a  class="nav3"  href="index.jsp">Home</a></li>
		<li class="nav2"><a class="nav3" href="login.jsp"><b>Login</b></a></li>
		<li class="nav2"><a class="nav3" href="register.jsp"><b>Register</b></a></li>
	</ul>
</nav>

<div id="bg">
    <img class="bg-image" src="img/pexels-photo-2246476.jpeg" alt="bg img">
  </div>
  
<footer>
	<a href="#" class="fa fa-facebook"></a>
	<a href="#" class="fa fa-twitter"></a>
	<a href="#" class="fa fa-linkedin"></a>
  	<h6>&copy; Copyright ABC Job Portal. All Rights Reserved</h6>
</footer>
</body>
</html>