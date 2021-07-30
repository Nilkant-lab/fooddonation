<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sign Up and Registration</title>
    <style type="text/css">
    *{
  margin: 0;
  padding: 0;
  font-family: "montserrat",sans-serif;
}
        body{
            background: url("/resource/images/OIP4.jpg");
            background-repeat: no-repeat;
            background-position: center;
			background-attachment: fixed;
			background-size: cover;
        }
.contact-section h1{
  text-align: center;
  color:brown;
}
.border{
  width: 500px;
  height: 10px;
  background: #ff3d00;
  margin: 40px auto;
}

.contact-form{
  max-width: 600px;
  margin: auto;
  padding: 0 10px;
  overflow: hidden;
}

.contact-form-text{
  display: block;
  width: 100%;
  box-sizing: border-box;
  margin: 16px 0;
  border:10;
  padding: 20px 40px;
  outline: none;
  transition: 0.5s;
  text-align:center;
}
.contact-form-text:focus{
  box-shadow: 0 0 10px 4px #34495e;
}
textarea.contact-form-text{
  resize: none;
  height: 120px;
}
.contact-form-btn{
  float: right;
  border:10;
  background: #ff3d00;
  color: #fff;
  padding: 12px 50px;
  border-radius: 20px;
  cursor: pointer;
  transition: 0.5s;
}
.contact-form-btn:hover{
  background:blue;
  color: hotpink;
}
        #cat{
            display: flex;
            align-items: center;
            justify-content: center;
        }
    
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  
  <body>

<div class="contact-section">

  <h1>Register with your details</h1>
  <div class="border"></div>
  <form class="contact-form" action="./registration" method="post">
    <input type="text" class="contact-form-text" placeholder="First Name*" name="Fname" required oninvalid="this.setCustomValidity('Please Enter Your First Name  Here')"
    oninput="this.setCustomValidity('')">
    <input type="text" class="contact-form-text" placeholder="Last Name*" title="Your username should be unique" name="Lname" required oninvalid="this.setCustomValidity('Please Enter Your Last Name Here')"
    oninput="this.setCustomValidity('')">
       <select name="gender" id="ip" class="contact-form-text">
           <option value="gender">Select Gender</option>
                 <option value="male">Male</option>
                 <option value="female">Female</option>
                 </select>

      <input type="date" class="contact-form-text" placeholder="date of birth*" title="date of birth" name="dob" required>
             <input type="email" class="contact-form-text" placeholder="Your email*" name="email" required oninvalid="this.setCustomValidity('Please Enter Your Email Id  Here')"
    oninput="this.setCustomValidity('')">   
    <input type="text" class="contact-form-text" placeholder="contact number*" name="contactNo" minlength="10" pattern="[1-9]{1}[0-9]{9}" required>
    <input type="password" class="contact-form-text" placeholder="Enter password*" name="password" pattern="/^(?=.\d)(?=.[a-z])(?=.[A-Z])(?=.[^a-zA-Z0-9])(?!.*\s).{6, }$/" title="Must contain special characters and at least 6 or more characters" required>
      <select name="category" id="ip" class="contact-form-text" id="cat">
                     <option value="Select Category" class="cat">Select Category</option>
                 <option value="Food_donor" class="cat">Food donor</option>
                 <option value="QR_Poc" class="cat">Quick Response POC</option>
                 <option value="packers_Poc" class="cat">Food Packers</option>
                 <option value="Logistics_sponsor" class="cat">Transport sponsor</option>
                 </select>
      <input type="text" class="contact-form-text" placeholder="What is your Pet Name ?" name="sq1"required>
    <input type="submit" class="contact-form-btn" value="submit">
  </form>
</div>

  </body>
</html>
