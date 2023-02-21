<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>View Appointment</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="colorlib.com">

<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

<!-- STYLE CSS -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- SECTION 1 -->
	<section>
		<div class="inner">
			<div class="form-content">
				<div class="form-header">
					<h3>View Appointment</h3>
				</div>
				<div class="form-row">
						<div class="form-holder">
							<a href="AppointmentController?action=list" class="button">Appointment List</a>
						</div>
					</div>
					<p>Appointment Info</p>
					<div class="form-row">
						<div class="form-holder">
							ID: <c:out value="${app.appid}" />
						</div>
						<div class="form-holder">
							Date: <c:out value="${app.appdate}" />
						</div>
						<div class="form-holder">
							Time: <c:out value="${app.apptime}" />
						</div>
						<div class="form-holder">
							Department: <c:out value="${app.appdepartment}" />
						</div>
						<div class="form-holder">
							Doctor incharge: <c:out value="${app.docincharge}" />
						</div>
					</div>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>