<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>Logistics Request</title>
<link rel="stylesheet" href="/style/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
        #btn{
            margin-left: 70%;
            margin-right: 6%;
        }
    </style>
</head>
<body>

<div class="container">
<div class="row">
<div class="col-md-10 offset=md-1">
<div class="row">
<div class="col-md-15 register-left">
</div>
<div class="col-md-17 register-right">
<h2>Fill the request form</h2>
<form action="./raiselogistics" method="post">
<div class="register-form">
<div class="form-group">
<input type="text" class="form-control" placeholder="Name" name="name" required oninvalid="this.setCustomValidity('Please Enter Your Name Here')"
    oninput="this.setCustomValidity('')">
</div>

<div class="form-group">
<select size="1" name="slocation">
	<option value="">--Source Location--</option>
	<option value="chennai">Chennai</option>
	<option value="Coimbatore">Coimbatore</option>
	<option value="Kolkata">Kolkata</option>
	<option value="Bangalore">Bangalore</option>
	<option value="Mumbai">Mumbai</option>
	<option value="Pune">Pune</option>
	</select>
</div>
<div class="form-group">
<select size="1" name="dlocation">
	<option value="">--Destination Location--</option>
	<option value="Chennai">Chennai</option>
	<option value="Coimbatore">Coimbatore</option>
	<option value="Kolkata">Kolkata</option>
	<option value="Bangalore">Bangalore</option>
	<option value="Mumbai">Mumbai</option>
	<option value="Pune">Pune</option>
	</select>
</div>

<div class="form-group">
<input type="text" class="form-control" placeholder="Contact Number" name="conno" required oninvalid="this.setCustomValidity('Please Enter Your Contact Number Here')"
    oninput="this.setCustomValidity('')">
</div>

<div class="form-group">
<input type="text" class="form-control" placeholder="Purpose of donation" name="purpose" required oninvalid="this.setCustomValidity('Please Enter the Purpose of donation Here')"
    oninput="this.setCustomValidity('')"><br>
</div>
<p>
   <button type="submit" class="btm btn-primary" >Request</button> 
  
</p>
 </div>
      </form>
    <button onclick="history.back(-1)" class="btm btn-primary" id="btn">Back</button>
    </div>
   </div>
     </div>
    </div>
   </div>
</body>
</html>