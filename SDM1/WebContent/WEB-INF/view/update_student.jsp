<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update Student</title>
</head>
<body>
<jsp:include page="admin_home.jsp"></jsp:include>
	<form action="update_student.htm" method="post">
		<table border="1" align="center" cellpadding="1" cellspacing="1">
			<tr>
				<th colspan="2">UPDATE STUDENT DETAILS</th>
			</tr>
			<tr>
				<th>Enter Student id:</th>
				<td><input type="text" name="studId" value="${studObject.studId}" readonly="readonly"></td>
			</tr>
			<tr>
				<th>Enter Student Name:</th>
				<td><input type="text" name="studName" value="${studObject.studName}"></td>
			</tr>
			<tr>
				<th>Enter Student Marks:</th>
				<td><input type="text" name="studMarks" value="${studObject.studMarks}"></td>
			</tr>
			<tr>
				<th>Enter Student EmailId:</th>
				<td><input type="text" name="studEmail" value="${studObject.studEmail}"></td>
			</tr>
			<tr>
				<th>Enter Student PhNO:</th>
				<td><input type="text" name="studphNo" value="${studObject.studphNo}"></td>
			</tr>
			<tr>
				<th>${message}</th>
				<td><input type="submit" value="UPDATE-STUDENT"/></td>
			</tr>
		</table>
	</form>

</body>
</html>