<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View logistics request</title>
        <link rel="stylesheet" href="/style/viewreq.css">
    </head>
	<body>
        <div class="show"></div>
        <div class="content">
        <div class="Shubham">
        </div>
		<header id="header" class="fixed-top ">
		    <div class="container1">
		      <h1 class="logo"><center>xPress Food:View logistics request</center></h1>
			 
		  <section id="res" class="d">
		    <div class="container">       
					<table id="result" class="list" border="4" cellspacing="0" width="90%">
					  <thead>
					    <tr>
					      <th class="th">Request Id</th>
					      <th class="th">Name </th>
					      <th class="th">Location </th>
					      <th class="th">Contact No</th>
					      <th class="th">Status</th>
					      <th class="th"> Accept </th>
					      <th class="th"> Reject</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="AVlogisReq" items="${logisticRequest}">
                          <tr>
								<td class="td">${AVlogisReq.userId}</td>
								<td class="td">${AVlogisReq.name}</td>
								<td class="td">${AVlogisReq.location}</td>
								<td class="td">${AVlogisReq.contactNo}</td>
								<td class="td">${AVlogisReq.purposeOfDonation}</td>
								<td class="td">${AVlogisReq.status}</td>
								 <td class="td"><input type="checkbox" name=${logReq.userId} value="accept" requied></td>
                                <td class="td"><input type="checkbox" name=${logReq.userId} value="reject" requied></td>
                          </tr>		
                          </c:forEach>
					  </tbody>
                    </table> 
		        </div>
		  </section>
		  <p>
		  <input type="submit" value="submit">
		  <a href="./backtoAdminPage"><button class="button">Back</button></a>
		  </p>
            </div>
        </header>
        </div>
	</body>
</html>