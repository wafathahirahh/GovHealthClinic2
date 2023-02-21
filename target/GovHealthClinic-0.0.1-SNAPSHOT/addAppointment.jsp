<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Appointment Registration</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
            <form action="AppointmentController" method="post" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="form-content" >
							<div class="form-header">
								<h3>Appointment Sign Up</h3>
						</div>
					<p>Enter appointment detail</p>
							<div class="form-row">
								<div class="form-holder">
									ID : <br>
									<input type="text" name="appid" placeholder="ID" class="form-control">
								</div>
								<div class="form-holder">
									<br>Date : <br>
									<input type="text" name="appdate" placeholder="DD/MM/YYYY" class="form-control">
								</div>
								<div class="form-holder">
									<br>Time : <br>
									<input type="radio" name="apptime" value="8:00 am to 10:00 am" class="form-control"/>8:00 am to 10:00 am<br>
									<input type="radio" name="apptime" value="10:00 am to 12:00 pm" class="form-control"/>10:00 am to 12:00 pm<br> 
									<input type="radio" name="apptime" value="12:00 pm to 2:00 pm" class="form-control"/>12:00 pm to 2:00 pm<br> 
									<input type="radio" name="apptime" value="2:00 pm to 4:00 pm" class="form-control"/>2:00 pm to 4:00 pm<br> 
								</div>
								<div class="form-holder">
									<br>Department : <br>
									<input type="radio" name="appdepartment" value="Paediatrics" class="form-control"/>Paediatrics<br>
									<input type="radio" name="appdepartment" value="Gynaecologist" class="form-control"/>Gynaecologist<br>
									<input type="radio" name="appdepartment" value="General" class="form-control"/>General <br>
								</div>
								<div class="form-holder">
									<br>Doctor incharge : <br>
									<input type="radio" name="docincharge" value="Dr.Nizamuddin bin Mansor" class="form-control"/>Dr.Nizamuddin bin Mansor<br>
									<input type="radio" name="docincharge" value="Dr.Hafizuddin Rifdi bin Rahdzi" class="form-control"/>Dr.Hafizuddin Rifdi bin Rahdzi<br>
									<input type="radio" name="docincharge" value="Dr.Aina Thahirah binti Ali" class="form-control"/>Dr.Aina Thahirah binti Ali<br>
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