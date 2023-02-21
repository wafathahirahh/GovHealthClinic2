<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Patient List</title>
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
					<h3>Patient List</h3>
				</div>
					<div class="form-row">
						<div class="form-holder">
							<a href="addPatient.jsp" class="button">New Patient</a>
						</div>
					</div>
						<table style="width:100%;text-align:left;">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Age</th>
								<th>Email</th>
								<th>Race</th>
								<th>Gender</th>
								<th>Phone Number</th>
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${patients}" var="patient">
								<tr>
									<td><c:out value="${patient.patientid}" /></td>
									<td><c:out value="${patient.patientname}" /></td>
									<td><c:out value="${patient.patientage}" /></td>
									<td><c:out value="${patient.patientemail}" /></td>
									<td><c:out value="${patient.patientrace}" /></td>
									<td><c:out value="${patient.patientgender}" /></td>
									<td><c:out value="${patient.patientphonenum}" /></td>
									<td><a href="PatientController?action=view&patientid=<c:out value="${patient.patientid}"/>" class="button">View</a>
									<a href="PatientController?action=delete&patientid=<c:out value="${patient.patientid}" />" class="button">Delete</a>
									<a href="UpdatePatientController?action=update&patientid=<c:out value="${patient.patientid}"/>" class="button">Update</a>
									</td>
							</c:forEach>
						</table>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>