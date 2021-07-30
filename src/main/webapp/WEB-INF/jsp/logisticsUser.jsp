<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>xPress Food :Transports</title>
<link rel="stylesheet" href="/style/logistics.css">
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
    }
</style>
</head>
<body>
<div class="content">
<div class="Shubham">
</div>
<center><div class="food">
    <center><h2><b>xPress Food Transports</b></h2>
    <form align="right"  action="/logout"> 
<label> <input  type="submit" class="button" value="Log out"> </label> </form>
    <br><br><h2>Source to Destination</h2></center><br>
</div></center>
<center>
<a href="./donatevehicle"><button class="button">Raise Transport request</button></a>
<a href="./viewlog"><button class="button">Check request</button></a>
</center>
    </div>
</body>

</html>