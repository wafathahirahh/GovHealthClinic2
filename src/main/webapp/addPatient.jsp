<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Patient Sign Up</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
            <form action="PatientController" method="post" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="form-content" >
							<div class="form-header">
								<h3>Patient Sign Up</h3>
						</div>
					<p>Enter patient detail</p>
							<div class="form-row">
								<div class="form-holder">
									ID : <br>
									<input type="text" name="patientid" placeholder="ID" class="form-control">
								</div>
								<div class="form-holder">
									<br>Name : <br>
									<input type="text" name="patientname" placeholder="Ali bin Ahmad" class="form-control">
								</div>
								<div class="form-holder">
									<br>Age : <br>
									<input type="number" min = "0.00" step = "0.01" value = "0.00" name="patientage" placeholder="1-100" class="form-control">
								</div>
								<div class="form-holder">
									<br>Email : <br>
									<input type="text" name="patientemail" placeholder="ali123@gmail.com" class="form-control">
								</div>
								<div class="form-holder">
									<br>Race : <br>
									<input type="radio" name="patientrace" value="Malay" class="form-control"/>Malay 
									<input type="radio" name="patientrace" value="Chinese" class="form-control"/>Chinese
									<input type="radio" name="patientrace" value="India" class="form-control"/>India
									<input type="radio" name="patientrace" value="Others" class="form-control"/>Others 
								</div>
								<div class="form-holder">
									<br>Gender : <br>
									<input type="radio" name="patientgender" value="Male" class="form-control"/>Male 
									<input type="radio" name="patientgender" value="Female" class="form-control"/>Female 
								</div>
								<div class="form-holder">
									<br>Phone number : <br>
									<input type="text" name="patientphonenum" placeholder="010-1233456" class="form-control">
								</div>
								<div class="form-holder">
									<br>Password : <br>
									<input type="password" name="patientpassword" placeholder="Password" class="form-control">
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