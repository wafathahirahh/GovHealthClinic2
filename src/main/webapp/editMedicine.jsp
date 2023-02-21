<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Medicine</title>
</head>
<body>
<%@page import="govclinic.dao.medicineDAO,govclinic.model.Medicine"%>  
  
<%  
Integer medid=Integer.parseInt(request.getParameter("medid"));  
Medicine m=medicineDAO.getMedicineById(Integer.parseInt(request.getParameter("medid")));  
%>  
  
<h1>Update Medicine</h1>  
	<a href="listMedicine.jsp">list Medicine</a>

<form action="editMedicine" method="post"> 
<label for="medid">Medicine ID:</label><br>
<input type="text" name="medid" disabled value="${m.medid}"/><br>  

<label for="medname">Medicine Name:</label><br>
<input type="text" name="medname" value="${m.medname}"/><br> 

<label for="meddesc">Description:</label><br>
<input type="text" name="meddesc" value="${m.meddesc}"/><br> 

<label for="expireddate">Expired Date:</label><br>
<input type="date" name="expireddate" value="${m.expireddate}"/><br> 

<label for="medtime">Registration Time:</label><br>
<input type="text" name="medtime" readonly value="${m.medtime}"/><br> 

<label for="meddate">Registration Date:</label><br>
<input type="text" name="meddate" readonly value="${m.meddate}"/><br> 

<label>Medicine Type:</label><br><br>
   <input type="radio" id="medtype" name="medtype" value="Volume">Volume<br><br>
  <input type="radio" id="medtype" name="medtype" value="Non Volume">Non Volume<br><br>

<label for="medweight">Medicine Weight:</label><br>
<input type="number" name="medweight" value="${m.medweight}"/><br> 

<label for="medvolume">Medicine Volume:</label><br>
<input type="number" name="medvolume" value="${m.medvolume}"/><br> 

<input type="hidden" name="medid" value="<c:out value="${m.medid}"/>"/><br><br>
		<input type="submit" value="Submit">
		<input type="reset" value="Reset"></form>  
</body>
</html>