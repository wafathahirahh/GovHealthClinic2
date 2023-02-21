<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Medicine</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<a href="addMedicine.jsp">Add Medicine</a>
	<br>
	<br>
	<table border="1">
		<tr>
			
			<th>Medicine ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Expired Date</th>
			<th>Registration Time</th>
			<th>Registration Date</th>
			<th>Type</th>
			<th>Medicine Weight</th>
			<th>Medicine Volume</th>
			<th colspan="3">Action</th>
		</tr>
		<c:forEach items="${medicines}" var="m" varStatus="medicines">
			<tr>
				<td><c:out value="${m.medid}" /></td>
				<td><c:out value="${m.medname}" /></td>
				<td><c:out value="${m.meddesc}" /></td>
				<td><c:out value="${m.expireddate}" /></td>
				<td><c:out value="${m.medtime}" /></td>
				<td><c:out value="${m.meddate}" /></td>
				<td><c:out value="${m.medtype}" /></td>
				<td><c:out value="${m.medweight}" /></td>
				<td><c:out value="${m.medvolume}" /></td>
				
				<td><a class="btn btn-primary" href="viewMedicine?medid=<c:out value="${m.medid}"/>">View</a></td>
				<td><a class="btn btn-primary" href="editMedicine?medid=<c:out value="${m.medid}"/>">Update</a></td>
            <td><button class="btn btn-danger" id="<c:out value="${m.medid}"/>" onclick="confirmation(this.id)">Delete</button></td>    
							</c:forEach>
						</table>
						<script>
	function confirmation(id){					  		 
		  console.log(id);
		  var r = confirm("Are you sure you want to delete?");
		  if (r == true) {				 		  
			  location.href = 'deleteMedicine?medid=' + id;
			  alert("Medicine successfully deleted");			
		  } else {				  
		      return false;	
		  }
	}
	</script>
</body>
</html>