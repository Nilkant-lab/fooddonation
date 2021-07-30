<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>xPress Food Userpage</title>
<link rel="stylesheet" href="/style/userstyle.css">
<style>
.f1{
	background: black;
	color: black;
	padding:5px;
	}
    h2{
        color: white;
    }
        .button{
        margin-right: 20px;
        margin-bottom:80px;
    }
</style>
</head>
<body>
<div class="content">
<center><div class="food">
    <center><h2><b>xPress Food Userpage</b></h2>
    <form align="right"  action="logout"> 
<label> <input  type="submit" class="button" value="Log out"> </label> </form>
    <br><br><h2></h2></center>    
<br><br>
</div>
    </center>
<center>
<a href="./donatefood"><button class="button">Fill food request</button></a>
<a href="./viewfood"><button class="button">Check Status</button></a>

</center>
    </div>
</body>

</html>