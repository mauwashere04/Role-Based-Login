<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Update</title>
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
<div class="user">
	<header class="user__header">
			<h1 class="user__title">Update</h1>
			 </header>
	<form action=updatedetails method="post" class="form">
		<pre>
<input class="form__input" type="text" name="uname" value='<s:property value="uname"/>'>
<input class="form__input" type="email"  name="uemail" value='<s:property value="uemail"/>'>
		            <input type="hidden" name="uemailhidden" value='<s:property value="uemail"/>'>            
<input class="form__input" type="text" name="udep" value='<s:property value="udep"/>'>		      
<input class="form__input" type="password" name="upass" value='<s:property value="upass"/>'>
<input class="form__input" type="text" name="urole" value='<s:property value="urole"/>'>
		<button class="btn" name="submitType" value="update" type="submit">Update</button>
		</pre>
	</form>
 </div>
</body>
</html>