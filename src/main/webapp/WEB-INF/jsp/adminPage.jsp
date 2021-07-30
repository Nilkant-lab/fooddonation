<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Food Seva:Admin page</title>
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
    }
</style>
</head>
<body>
<div class="slideshow"></div>
<div class="content">
<div class="Shubham">
</div>
<center><div class="food">
<center><h2><b>Food Seva:Admin Page</b><h2>
<form align="right"  action="alogout"> 
<label> <input  type="submit" class="button" value="Log out"> </label> </form>    
<br><br>
<h2>Lend a hand, give a can</h2></center><br><br>

</div></center>
<center>
<a href="./viewhelpReq"><button class="button">Help Request</button></a>
<a href="./viewAFood"><button class="button">Food Donation Request</button></a>
<a href="./raisefreq"><button class="button">Food Request</button></a><br><br>
<a href="./viewALogistic"><button class="button">Logistics Donation Request</button></a>
<a href="/raiselreq"><button class="button">Logistics Request</button></a>
</center>
	
</body>

</html>