<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine</title>
</head>
<body>
<form action="medicineController" method="post">
<br><label>Medicine ID:</label><br>
<input type="text" id ="medid" name="medid"/><br> 

<label>Medicine Name:</label><br>
<input type="text" id ="medname" name="medname"/><br> 

<label>Description:</label><br>
<input type="text" id="meddesc" name="meddesc"/><br> 

<label>Expired Date:</label><br>
<input type="date" id="expireddate" name="expireddate"/><br> 

<label>Registration time:</label><br>
<input type="time" id="medtime" name="medtime"/><br> 

<label>Registration Date:</label><br>
<input type="date" id="meddate" name="meddate"/><br> 

<label>Medicine Type:</label><br><br>
  <input type="radio" id="medtype" name="medtype" value="Volume">Volume<br><br>
  <input type="radio" id="medtype" name="medtype" value="Non Volume">Non Volume<br><br>

<label>Medicine Weight:</label><br>
<input type="number" id="medweight" name="medweight"/><br> 

<label>Medicine Volume:</label><br>
<input type="number" id="medvolume" name="medvolume"/><br><br> 

<input type="submit" value="Add Orderlist" class="button2"/> 
</form>  
</body>
</html>