
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/insert.js"></script>
<title>Insert Student</title>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
	<jsp:include page="admin_home.jsp"></jsp:include>

	<form name="insertform" onsubmit="return validateForm()"
		action="insert_student.htm" method="get">
		<table border="1" align="center">
			<tr>
				<th colspan="2">ENTER STUDENT DETAILS</th>
			</tr>
			<tr>
				<th>Enter Student id:</th>
				<td><input type="text" name="studId"></td>
			</tr>
			<tr>
				<th>Enter Student Name:</th>
				<td><input type="text" name="studName"></td>
			</tr>
			<tr>
				<th>Enter Student Marks:</th>
				<td><input type="text" name="studMarks"></td>
			</tr>
			<tr>
				<th>Enter Student PhNo:</th>
				<td><input type="text" name="studphNo"></td>
			</tr>
			<tr>
				<th>Enter Student EmailId:</th>
				<td><input type="text" name="studEmail"></td>
			</tr>
			
			</tr>
			<tr> -->
			<tr>
				<th>Enter Student Marks:</th>
				<td><input type="text" name="studMarks"></td>
			</tr>
			<tr>
				<td>${message}</td>
				<td><input type="submit" value="INSERTSTUDENT" /></td>
			</tr>
		</table>
	</form>

</body>
</html>