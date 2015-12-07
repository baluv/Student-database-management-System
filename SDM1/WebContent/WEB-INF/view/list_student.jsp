<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Students</title>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
<jsp:include page="admin_home.jsp"></jsp:include>
	<table id="object-list" class="display" border="1" align="center">
		<thead>
			<tr>
				<td colspan="6" align="center">List of Students</td>
			</tr>
			
			<tr>
				<td>Student ID</td>
				<td>Student Name</td>
				<td>Student Marks</td>
				<td>Student EmailId</td>
				<td>Student PhNo</td>
				<td>Update</td>				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="items" items="${listObject}">
				<tr style="cursor: pointer" onmouseover="this.background='#C0C0C0'">
					<td><c:out value="${items.studId}"></c:out></td>
					<td><c:out value="${items.studName}"></c:out></td>
					<td><c:out value="${items.studMarks}"></c:out></td>
					<td><c:out value="${items.studEmail}"></c:out></td>
					<td><c:out value="${items.studphNo}"></c:out></td>
					<td><a href="update_student_page.htm?studId=${items.studId}&studName=${items.studName}&studMarks=${items.studMarks}&studphNo=${items.studphNo}&studEmail=${items.studEmail}">Update</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>