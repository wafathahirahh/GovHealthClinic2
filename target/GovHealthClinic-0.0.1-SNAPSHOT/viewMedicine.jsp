<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine Info</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<a href="listMedicine">List Medicine</a><br><br>

	<h1>Medicine Info</h1>
	Id: <c:out value="${m.medid}"/> <br>
	Name: <c:out value="${m.medname}"/> <br>
	Description: <c:out value="${m.meddesc}"/> <br>
	Expired Date: <c:out value="${m.expireddate}"/> <br>
	Registration Time: <c:out value="${m.medtime}"/> <br>
	Registration Date: <c:out value="${m.meddate}"/> <br>
	Type: <c:out value="${m.medtype}"/> <br>
	Medicine weight: <c:out value="${m.medweight}"/> <br>
	Medicine volume: <c:out value="${m.medvolume}"/> <br>
</body>
</html>