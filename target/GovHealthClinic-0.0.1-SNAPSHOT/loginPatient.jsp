<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Patient Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
            <form action="PatientLoginController" method="get" >
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="form-content" >
							<div class="form-header">
								<h3>Patient Login</h3>
						</div>
					<p>Enter patient detail</p>
							<div class="form-row">
								<div class="form-holder">
									<br>ID: <br>
									<input type="text" name="patientid" placeholder="Patient ID" class="form-control">
								</div>
								<div class="form-holder">
									<br>Password : <br>
									<input type="password" name="patientpassword" placeholder="Patient Password" class="form-control">
								</div>
							</div>
							<br>
							<div class="form-row">
								<div class="form-holder">
									<input type="submit" value="Submit" class="button">
									<input type="reset" value="Reset" class="button">	
								</div>
							</div>			
						</div>
					</div>
                </section>
 			</form>
		<!-- Template created and distributed by Colorlib -->
</body>
</html>