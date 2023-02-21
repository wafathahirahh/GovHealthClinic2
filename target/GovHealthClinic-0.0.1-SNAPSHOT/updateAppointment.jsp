<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Appointment</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<form action="UpdateAppController" method="post">
		Date: <br>
		<input type="text" id="appdate" name="appdate" value="<c:out value="${app.appdate}"/>"/><br>
		<br>Time: <br>
		<input type="radio" id="apptime" name="apptime" value="8:00 am to 10:00 am" value="<c:out value="${app.apptime}"/>"/>8:00 am to 10:00 am<br>
		<input type="radio" id="apptime" name="apptime" value="10:00 am to 12:00 pm" value="<c:out value="${app.apptime}"/>"/>10:00 am to 12:00 pm<br>
		<input type="radio" id="apptime" name="apptime" value="12:00 pm to 2:00 pm" value="<c:out value="${app.apptime}"/>"/>12:00 pm to 2:00 pm<br>
		<input type="radio" id="apptime" name="apptime" value="2:00 pm to 4:00 pm" value="<c:out value="${app.apptime}"/>"/>2:00 pm to 4:00 pm<br>
		<br>Department: <br>
		<input type="radio" id="appdepartment" name="appdepartment" value="Paediatrics" value="<c:out value="${app.appdepartment}"/>"/>Paediatrics<br>
		<input type="radio" id="appdepartment" name="appdepartment" value="Gynaecologist" value="<c:out value="${app.appdepartment}"/>"/>Gynaecologist<br>
		<input type="radio" id="appdepartment" name="appdepartment" value="General" value="<c:out value="${app.appdepartment}"/>"/>General<br>
		<br>Doctor incharge: <br>
		<input type="radio" id="docincharge" name="docincharge" value="Dr.Nizamuddin bin Mansor" value="<c:out value="${app.docincharge}"/>"/>Dr.Nizamuddin bin Mansor<br>
		<input type="radio" id="docincharge" name="docincharge" value="Dr.Hafizuddin Rifdi bin Rahdzi" value="<c:out value="${app.docincharge}"/>"/>Dr.Hafizuddin Rifdi bin Rahdzi<br>
		<input type="radio" id="docincharge" name="docincharge" value="Dr.Aina Thahirah binti Ali" value="<c:out value="${app.docincharge}"/>"/>Dr.Aina Thahirah binti Ali<br>
		<input type="hidden" id="appid" name="appid" value="<c:out value="${app.appid}"/>"/><br>
		
		<input type="submit" value=Update>
		<input type="reset" value="Reset">
	</form>
</body>
</html>
