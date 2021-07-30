<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>xPress Food:Feedback</title>
<link rel="stylesheet" href="/style/stylehp.css">
<style>
.login-form{
width: 400px;
padding:5px;
text-align: center;
background-color:teal;
position: fixed;
top:57%;
left: 50%;
transform: translate(-50%,-50%);
overflow:hidden;
border-radius: 10px;
box-shadow:0 5px 8px 0 rgba(0,0,0,0.2), 0 7px 20px 0 rgba(0,0,0,0.17),0 5px 8px 0 rgba(0,0,0,0.2);
color: white;
}
.login-form h1{
margin-top: 20px;

color: #fff;
font-size:40px;
}
.login-form input{
display: block;
width: 20%;
margin-left: 150px;
height: 34px;
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
margin-top:20px;
margin-bottom:10px;
background: #ff3d00;
color:#fff;
border-radius:44px;
cursor:pointer;
transition:0.8s;
width: 40px; 
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
padding: 10px;
transition: 0.8s;
display: block;
}

.login-form a:hover{
background: rgba(0,0,0,.3);
}
#textarea{
padding-top: 60px;        
}
    #btn{
       padding-left: 8%;
        padding-right: 15%;
        padding-bottom: 3%;
        padding-top: 3%;
    }
</style>
</head>
<body>
<div class="slideshow"></div>
<div class="content">
<div class="Shubham">
<center><div class="food">
<center><h2><b>XPress Food and logistics:Feedback</b></h2><br><br></center>
<center>
<div class="login-form">
       <form class="" action="./feed" method="post">
              <h1>Feedback</h1>
          
           <tr>
                <td>
                    <label>1.How likely are you to donate to our organization again?</label><br><br>
                <select value="val" required oninvalid="this.setCustomValidity('Please Choose Your Feedback Here')"
    oninput="this.setCustomValidity('')">
                    <option value="Extremely likely">Extremely likely</option>
                    <option value="Very likely">Very likely</option>
                    <option value="Somewhat likely">Somewhat likely</option>
                    <option value="Not so likely">Not so likely</option>
                    <option value="Not at all likely">Not at all likely</option>
                </select>
                </td>
           </tr> <br> <br>   
    
           <tr>
                <td>
                    <label>2.Mention two aspects that you like about our organization.</label><br><br> 
                <textarea value="descr" id="textarea" cols="50" rows="1" name="description" required oninvalid="this.setCustomValidity('Please Enter Your Experience  Here')"
    oninput="this.setCustomValidity('')"></textarea>
                </td>
           </tr> <br> 
           
            <tr>
                <td>
                    <label>3.Mention two aspects that our organization should improve.</label><br><br> 
                <textarea value="descr" id="textarea" cols="50" rows="1" name="description" required oninvalid="this.setCustomValidity('Please Enter Your Experience  Here')"
    oninput="this.setCustomValidity('')"></textarea>
                </td>
           </tr> <br> 
          
           <input type="submit" value="Submit" class="login-btn">
       </form>
       <a href="./skipFeedback"><button class="login-btn" id="btn">Skip</button></a>
    </div>
</center></center>
</body>

</html>