<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body background="images/page_bg.jpg">
<jsp:include page="logout.jsp"></jsp:include>
	<h1>WELCOME TO ADMIN HOME PAGE</h1>
		<div style="background-image: url(images/url.jpg); height: 200px; width: 1500px; margin-top: 0px; padding-left: 35px; padding-top: 50px;">
		<marquee behavior="scroll" direction="right" scrollamount="50%"  ><h2>STUDENT DATABASE MANAGEMENT SYSTEM</h2></marquee>
		<br> <br><br>
		<a class="left" href="insert_student_page.htm" >Insert Student</a> <br>
		<a class="left" href="update_student_page.htm">Update Student</a> <br>
		<a class="left" href="list_student_page.htm">List Student</a> <br>
		<a class="left" href="delete_student_page.htm">Delete Student</a>
	</div>

</body>
</html>