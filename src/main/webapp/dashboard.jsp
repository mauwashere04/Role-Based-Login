<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
$font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

.user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
     margin: 0;
  position: absolute;
  top: 35%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  }
  
  .container-btn {
 	 margin: 0;
  position: absolute;
  top: 110%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  
  }


.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title{
    font-size: $font-size;
    margin-bottom:50px;
    font-weight: 500;
    color: white;
	text-align: center;
}

}

.btn {
    
}

 .btn:hover {
       opacity: 0.5;
    }

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}
</style>
</head>
<nav>
	<ul class="nav1">
		<li class="nav2"><a class="nav3" href="index.jsp">ABC</a></li>
		<li class="nav2"><a  class="nav3"  href="index.jsp">Logout</a></li>
	</ul>
</nav>
<body>
<div class="user">
<div id="bg">
 <img class="bg-image" src="img/istockphoto-476085198-612x612.jpg" alt="bg img" style="
 display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
"/>
 </div>
<h2 class="user__title"><s:property value="uname"/></h2>
<h2 class="user__title"><s:property value="uemail"/></h2>
<h2 class="user__title"><s:property value="udep"/></h2>
<div class="container-btn">
<a href="updatedetails.action?submitType=updatedata&uemail=<s:property value="uemail"/>"><button class="btn" type="button" value="Login" style="display: block;
    width: 150px;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: white;
    background: rgb(188,143,143);
    transition: 0.3s;">Update</button></a>
</div>
</div>
</body>
<footer>
	<a href="#" class="fa fa-facebook"></a>
	<a href="#" class="fa fa-twitter"></a>
	<a href="#" class="fa fa-linkedin"></a>
  	<h6>&copy; Copyright ABC Job Portal. All Rights Reserved</h6>
</footer>
</html>