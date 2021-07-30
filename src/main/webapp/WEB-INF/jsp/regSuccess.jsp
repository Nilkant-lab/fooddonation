<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
    <style>
    
        body{
            background: url(/resource/images/OIP4.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container1{
            background-color: aliceblue;
            width: 60%;
            margin-left: 250px;
        }
        h2{
            margin-top: 200px;
        }
    </style>
</head>
<body>
    <div class="container1">
        <center>
	<h2><c:out value="${alert}"></c:out></h2>
	<br>
	<br>
	<a href="./returnhome" >Go Back to HomePage</a></center>
        </div>
</body>
</html>