<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Appointment List</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
        		<!-- SECTION 1 -->
                <h2></h2>
	<section>
		<div class="inner">
			<div class="form-content">
				<div class="form-header">
					<h3>Appointment List</h3>
				</div>
					<div class="form-row">
						<div class="form-holder">
							<a href="addAppointment.jsp" class="button">New Appointment</a>
						</div>
					</div>
						<table style="width:100%;text-align:left;">
							<tr>
								<th>ID</th>
								<th>Date</th>
								<th>Time</th>
								<th>Department</th>
								<th>Doctor incharge</th>
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${appointments}" var="app">
								<tr>
									<td><c:out value="${app.appid}" /></td>
									<td><c:out value="${app.appdate}" /></td>
									<td><c:out value="${app.apptime}" /></td>
									<td><c:out value="${app.appdepartment}" /></td>
									<td><c:out value="${app.docincharge}" /></td>
									<td><a href="AppointmentController?action=view&appid=<c:out value="${app.appid}"/>" class="button">View</a>
									<a href="AppointmentController?action=delete&appid=<c:out value="${app.appid}" />" class="button">Delete</a>
									<a href="UpdateAppController?action=update&appid=<c:out value="${app.appid}"/>" class="button">Update</a>
									</td>
							</c:forEach>
						</table>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>