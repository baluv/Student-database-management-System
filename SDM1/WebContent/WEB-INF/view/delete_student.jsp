<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student Details</title>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
<jsp:include page="admin_home.jsp"></jsp:include>
	<form action="delete_student.htm" method="post">
		<table border="1" align="center">
			<tr>
				<th colspan="2">Delete Student</th>
			</tr>
			<tr>
				<th>Enter Student id</th>
				<td><input type="text" name="studId"></td>
			</tr>
			<tr>
				<th>${message}</th>				
				<td><input type="submit" value="DELETE STUDENT"></td>
			</tr>
		</table>
	</form>

</body>
</html>