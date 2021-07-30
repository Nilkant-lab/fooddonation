<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Log In</title>
<style>
body
{
	background-image: linear-gradient(to right,#000000,#808080);
	
font-family:Arial,Helvetica,sans-serif;
}

.login-form{
width: 300px;
padding:20px;
text-align: center;
background-color: seagreen;
position: absolute;
top:57%;
left: 80%;
transform: translate(-50%,-50%);
overflow:hidden;
border-radius: 10px;
box-shadow:0 5px 8px 0 rgba(0,0,0,0.2), 0 7px 20px 0 rgba(0,0,0,0.17),0 5px 8px 0 rgba(0,0,0,0.2);
}
.login-form h1{
margin-top: 100px;

color: white;
font-size:40px;
}
.login-form input{
display: block;
width: 100%;
padding: 0 16px;
height: 38px;
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
transition:0.8s;
}
.login-btn:hover{
transform:scale(0.96);
background: #fff;
color: #000000;
}
.login-form a{
text-decoration:none;
color:#fff;
font-family:"montserrat",sans-serif;
font-size:14px;
padding: 7px;
transition: 0.8s;
display: block;
}

.login-form a:hover{
background: rgba(0,0,0,.3);
}
h4{
	text-align: center;
	color: white;
}
.container{
width:90%;
margin:center;
overflow:hidden;
}
#main-header{
background-color:blank;
color:Seagreen;
}
#main-footer{
background:blue;
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
<center><h1 style="font-size: 250%;"> xPress Food</h1></center>
</div>
</header>
<div class="login-form">
       <form class="" action="./userloginpage" method="post">
             
              <h1>User Log In</h1>
              <h4><c:out value="${message}"></c:out></h4>
              <input type="text" placeholder="Enter UserID" class="txtb" name="userId" required>
              <input type="password" placeholder="Enter Password" class="txtb" name="password" required>
              <input type="submit" value="Log In" class="login-btn">
           <p><a href="./forgetPassword">Forgot Password</a><a href="./forgetUserId">Forgot User Id</a></p>
       </form>
</div>
</body>
</html>
