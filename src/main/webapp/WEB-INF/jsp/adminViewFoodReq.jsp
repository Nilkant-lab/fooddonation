<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View food request</title>
        <link rel="stylesheet" href="/style/viewreq.css">
    </head>
	<body>
        <div class="show"></div>
        <div class="content">
        <div class="Shubham">
        </div>
		<header id="header" class="fixed-top ">
		    <div class="container1">
		      <h1 class="logo"><center>xPress Food:View food request</center></h1>
			 <form action="./updateStatus" method="post">
		  <section id="res" class="d">
		    <div class="container">       
					<table id="result" class="list" border="4" cellspacing="0" width="90%">
					  <thead>
					    <tr>
					      <th class="th">Request Id</th>
					      <th class="th">Name </th>
					      <th class="th">Location </th>
					      <th class="th">Contact No</th>
					      <th class="th">Purpose</th>
					      <th class="th">No of Servings</th>
					      <th class="th">Status</th>
					      <th class="th"> Accept </th>
					      <th class="th"> Reject</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="AVfoodReq" items="${foodRequest}">
                          <tr>
								<td class="td">${AVfoodReq.userId}</td>
								<td class="td">${AVfoodReq.name}</td>
								<td class="td">${AVfoodReq.location}</td>
								<td class="td">${AVfoodReq.contactNo}</td>
								<td class="td">${AVfoodReq.purposeOfDonation}</td>
								<td class="td">${AVfoodReq.noOfServings}</td>
                                <td class="td">${AVfoodReq.status}</td>
                                <td class="td"><input type="checkbox" name=${foodReq.userId} value="accept" requied></td>
                                <td class="td"><input type="checkbox" name=${foodReq.userId} value="reject" requied></td>
                              
                          </tr>	
                          </c:forEach>	
					  </tbody>
                    </table> 
                    
		        </div>
		  </section>
		  </form><p>
		  <input type="submit" value="submit">
		  <a href="./backtoAdminPage"><button class="button">Back</button></a>
		  </p>
            </div>
        </header>
        </div>
	</body>
</html>