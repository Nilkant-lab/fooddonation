<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Admin Log In</title>
<style>
body
{
	background: url("/resource/images/food3.jpg");
font-family:Arial,Helvetica,sans-serif;
}
h4{
	text-align: center;
	color: white;
}

.login-form{
width: 300px;
padding:20px;
text-align: center;
background:green;
position: absolute;
top:50%;
left: 50%;
transform: translate(-50%,-50%);
overflow:hidden;
border-radius: 10px;
}
.login-form h1{
margin-top: 100px;

color: #fff;
font-size:40px;
}
.login-form input{
display: block;
width: 100%;
padding: 0 16px;
height: 44px;
text-align: center;
box-sizing:border-box;
outline: none;
border: none;
}
.login{
margin:20px 0;
background:rgba(255,255,255,.5);
border-radius: 6px;
}
.login-btn{
margin-top:60px;
margin-bottom:20px;
background: #ff3d00;
color:#fff;
border-radius:44px;
cursor:pointer;
transition:.8s;
}
.login-btn:hover{
transform:scale(0.96);
background: #fff;
color: #000000;
}
.login-form{
text-decoration:none;
color:#fff;
font-family:"montserrat",sans-serif;
font-size:14px;
padding: 10px;
transition: 0.8s;
display: block;
}

.container{
width:90%;
margin:auto;
overflow:hidden;
}
#main-header{
background-color:black;
color:#fff;
}
#main-footer{
background:green;
color:#fff;
text-align: center;
padding:20px;
margin-top:470px;
}
</style>
</head>
<body>
<header id="main-header">
<div class="container">
<center><h1 style="font-size: 250%;"> Food Seva</h1></center>
</div>
</header>
<div class="login-form">
       <form class="main" action="./userloginpage" method="post">
              <h1>Admin Log In</h1>
              <h4><c:out value="${message}"></c:out></h4>
              <input type="text" placeholder="Enter UserId" class="txtb" name="userId" required oninvalid="this.setCustomValidity('Please Enter your User Id Here')"
    oninput="this.setCustomValidity('')">
              <input type="password" placeholder="Enter Password" class="txtb" name="password" required oninvalid="this.setCustomValidity('Please Enter your Password Here')"
    oninput="this.setCustomValidity('')">
              <input type="submit" value="Log In" class="login-btn">
       </form>
</div>
</body>
</html>
