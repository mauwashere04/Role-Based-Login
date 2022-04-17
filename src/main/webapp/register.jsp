<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Register</title>
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
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

.user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title, .container-register{
    font-size: $font-size;
    margin-bottom:50px;
    font-weight: 500;
    color: white;
	text-align: center;
}
.container-register a {
	color: rgb(188,143,143);
}

.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}

.btn {
    display: block;
    width: 380px;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: white;
    background: rgb(188,143,143);
    transition: 0.3s;
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
<body>
<nav>
	<ul class="nav1">
		<li class="nav2"><a class="nav3" href="index.jsp">ABC</a></li>
		<li class="nav2"><a  class="nav3" href="index.jsp">Home</a></li>
		<li class="nav2"><a class="nav3" href="login.jsp"><b>Login</b></a></li>
		<li class="nav2"><a class="nav3" href="register.jsp"><b>Register</b></a></li>
	</ul>
</nav>

<div class="user">
<header class="user__header">
			<h1 class="user__title">Register</h1>
			 </header>
	<s:form action="registeruser.action" method="post" cssClass="form">
		<s:textfield cssClass="form__input" placeholder="Full Name" name="uname" />
		<s:textfield cssClass="form__input" placeholder="Email" name="uemail" />
		<s:textfield cssClass="form__input" placeholder="Department" name="udep" />
		<s:password cssClass="form__input" placeholder="Password" name="upass" />
		<s:textfield  cssClass="form__input" placeholder="Role" name="urole" />
		<s:submit cssClass="btn" value="Register" />
	</s:form>
	
	<div class="container-register">
    	<p>Have an account already? <a class="login" href="login.jsp">Login</a>.</p>
  	</div>
 </div>
 <footer>
	<a href="#" class="fa fa-facebook"></a>
	<a href="#" class="fa fa-twitter"></a>
	<a href="#" class="fa fa-linkedin"></a>
  	<h6>&copy; Copyright ABC Job Portal. All Rights Reserved</h6>
</footer>
</body>
</html>