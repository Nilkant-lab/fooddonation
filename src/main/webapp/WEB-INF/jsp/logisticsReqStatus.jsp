<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Logistics request status</title>
        <link rel="stylesheet" href="/style/viewreq.css">
    </head>
	<body>
        <div class="show"></div>
        <div class="content">
        <div class="Shubham">
        </div>
		<header id="header" class="fixed-top ">
		    <div class="container1">
		      <h1 class="logo"><center>Transport request status</center></h1>
			 
		  <section id="res" class="d">
		    <div class="container">       
					<table id="result" class="list" border="4" cellspacing="0" width="90%">
					  <thead>
					    <tr>
					      <th class="th">Request Id</th>
					      <th class="th">Location</th>
                          
					      <th class="th">Status</th>			      
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="logisdonar" items="${view}">
                          <tr>
								<td class="td">${logisdonar.userId}</td>
                                <td class="td">${logisdonar.location}</td>
                                
								<td class="td">${logisdonar.status}</td>
								
                          </tr>	
                          </c:forEach>	
					  </tbody>
                    </table> 
		        </div>
		          <p>
                    <input type="submit" value="submit">
                <a href="./backtoLogisticsPage"><button class="button">Back</button></a>
		      </p>
		  </section>
            </div>
        </header>
	</body>
</html>