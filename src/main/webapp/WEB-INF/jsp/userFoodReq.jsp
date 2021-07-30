<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>Food Donor Registration</title>
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
<style>
    .register-form {
        background-color: #87CEFA;
    }
    
    
</style>
<div class="container">
<div class="row">
<div class="col-md-10 offset=md-1">
<div class="row">

</div>
<font color="green">
<h2>Register to Donate</h2>
</font>
<form action="./raiserequest" method="post">
<div class="register-form">
<div class="form-group">
<input type="text" class="form-control" placeholder="Name" name="name" required oninvalid="this.setCustomValidity('Please fill Your Name')"
    oninput="this.setCustomValidity('')">
</div>

<div class="form-group">
<select size="1" name="location">
	<option value="">--Location--</option>
	<option value="Chennai">Chennai</option>
	<option value="Coimbatore">Coimbatore</option>
	<option value="Kolkata">Kolkata</option>
	<option value="Bangalore">Bangalore</option>
	<option value="Mumbai">Mumbai</option>
	<option value="Pune">Pune</option>
	</select>
</div>

<div class="form-group">
<input type="text" class="form-control" placeholder="Contact Number" name="conno" required oninvalid="this.setCustomValidity('Please fill Contact Number')"
    oninput="this.setCustomValidity('')">
</div>

<div class="form-group">

<input type="number" class="form-control" placeholder="Number of food packets" name="servings" required oninvalid="this.setCustomValidity('Please fill No of Servings  Here')"
    oninput="this.setCustomValidity('')"> 
<p class="card-text"><small class="text-muted">*Mention if any special instruction.</small></p>
</div>

<p>

   <button type="submit" class="btm btn-primary" >Request</button> 
   <button onclick="history.back(-1)" class="btm btn-primary" id="btn">Back</button>
</p>

      </div>
      </form>
       
    </div>
   </div>
     </div>
    </div>
   </div>
</body>