
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="shortcut icon" href="images/1.png">
 --><title>Student DataBase Management System </title>
<link href="css/main.css" rel="stylesheet" type="text/css">

<link href="css/menu.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript" src="js/ga.js">
</script>
<script type="text/javascript" src="js/script.js"></script>
<script src="js/swfobject_modified.js" type="text/javascript"></script>

<style type="text/css" media="screen">
#FlashID {
	visibility: hidden
}
</style>
<link href="css/tooltip.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!--Header-->

	<div class="header">
		<table>
			<tr>
				<left>
				<td><img src="images/homelogo.jpg" height="57" width="70">&nbsp;
					&nbsp;</td>
				<td><font size="6" color="red">Student Database
						Management System</font></td>
				</left>
			</tr>
		</table>
		</div><br>
		
		<div class="menuarea">
			<ul class="menu" id="menu">
				<li><a href="#">BasicInformation</a>
					<ul>
						
						<li><a href="Registration1.htm">StudentEntry</a></li>
						<li><a href="Registration-list.htm">RegistrationList</a></li>
						<li><a href="insert_student.htm">InsertStudent</a></li>
						<li><a href="delete_student.htm">DeleteStudent</a></li>
						<li><a href="update_student.htm">UpdateStudent</a></li>
						<li><a
							href="update_student_page.htm?studId=${items.studId}&studName=${items.studName}&studMarks=${items.studMarks}&studphNo=${items.studphNo}&studEmail=${items.studEmail}">ListStudent</a></li>
					</ul></li>
				
				<li><a href="#">FeeDetails</a>
					<ul>
						<li><a href="BdsFee.htm">BdsFeeDetails</a></li>
						<li><a href="BdsFee-list.htm">BdsFeeList</a></li>
					</ul></li>

				<li><a href="#">ExamDetails</a>
					<ul>
						<li><a href="exam.htm">EnterDetails</a></li>
						<li><a href="Examdetails-list.htm">StudentList</a></li>
					</ul></li>

				<li><a href="#">Original Documents</a>
				<ul>
						<li><a href="doc.htm">EnterDetails</a></li>
						<li><a href="Document-list.htm">DocumentList</a></li>
					</ul></li>

				<li><a href="check_logout.htm">Logout</a>
			</ul>
		</div>
		
		<br><br><br><br><br><br><br><br>

		<script language="javascript" type="text/javascript">
	var menu2=new menu2.dd("menu2");
	menu2.init("menu2","menu2hover");
</script>

		<script language="javascript" type="text/javascript">
	var menu=new menu.dd("menu");
	menu.init("menu","menuhover");
</script>
</body>
</html>