<%--  <jsp:include page="menu.jsp"/>  --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="./design/1.png">
<title>Student Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/regstyle.css" type="text/css">
<link rel="stylesheet" href="css/tablestyle.css" type="text/css">
<link rel="stylesheet" href="css/fieldset1.css" type="text/css">

<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="jquery/jquery.validationEngine-en.js"
	type="text/javascript"></script>
<script src="jquery/jquery.validationEngine.js" type="text/javascript"></script>

<style>
fieldset {
	border: 2px solid black;
	background:;
	border-radius: 5px;
	padding: 15px;
}

fieldset legend {
	background: Green;
	color: black;
	padding: 4px 8px;
	font-size: 16px;
	border-radius: 2px;
	box-shadow: 0 0 0 2px #bf9543;
	margin-left: 30px;
}

.float--right {
	float: right !important;
	margin-left: 1em;
}

.float--left {
	float: left !important;
	margin-right: 1em;
}

.clearfix:after {
	content: "";
	display: table;
	clear: both;
}

.app {
	width: 1000px;
	margin: 0 auto;
	padding: -1em;
	padding-top: 1em;
	background:;
}

h2 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 160%;
	font-weight: normal;
	margin-bottom: .6em;
	color:;
}

h4 {
	font-family: 'Lucida Grande', Lucida Sans, Verdana, sans-serif;
	font-weight: bold;
	font-size: 13px;
	line-height: 19px;
	color:;
	margin-bottom: 1px;
}

.black {
	color: maroon;
}

p {
	color: maroon;
	font-size: 1.2em;
	margin-bottom: 1.0em;
	font-family: Arial, Helvetica, sans-serif;
	line-height: 1.5;
	text-align: justify;
}
</style>
<script>
	$(document).ready(function() {
		// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 

		$("#formID").validationEngine()

	});

	// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
	function validate2fields() {
		if ($("#firstname").val() == "" || $("#lastname").val() == "") {
			return true;
		} else {
			return false;
		}
	}
</script>
<link type="text/css"
	href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
	rel="Stylesheet" />
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.min.js"></script>
<script src="js/jquery-1.4.min.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$(".hajanDatePicker").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : "-50:2015",

		});
	});
</script>

<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#img_prev').attr('src', e.target.result).width(130).height(
						180);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>


</head>
<body style="background-color:;">
	<div class="app">
		<div>
			<form action="update.htm" name="myform" method="post"
				onsubmit="return validate();">
				<div align="center">
					<div class="field">

						<fieldset style="color:;">
							<legend align="center">
								<font face="Courier New" size="+2"><b>${received.studentname}&nbsp;&nbsp;Detalis</b></font>
							</legend>
							<br> <br>
							<table cellpadding="12" cellspacing="12">
								<tr>
									<td></td>
									<td><input class="td" type="hidden" name="sno"
										value="${received.sno}" size="20"></td>
								</tr>

								<tr>
									<td width="170px"><label>Course <span
											style="color: #C80815;">*</span>:
									</label></td>
									<td>
										<div id="wwgrp_regCourse" class="wwgrp">
											<div id="wwctrl_regCourse" class="wwctrl">
												${received.course}</div>
										</div>
									</td>


									<tr>
									<td width="170px"><label>Year<span
											style="color: #C80815;">*</span>:
									</label></td>
									<td>
										<div id="wwgrp_regYear" class="wwgrp">
											<div id="wwctrl_regYear" class="wwctrl">
												${received.year}</div>
										</div>
									</td>



									<td width="170px"><label>Department: </label></td>
									<td>
										<div id="wwgrp_regDepartment" class="wwgrp">
											<div id="wwctrl_regDepartment" class="wwctrl">
												${received.department}</div>
										</div>
									</td>
								</tr>


								<tr>
									<td width="150px"><label>Student Name: </label></td>
									<td>
										<div id="wwgrp_formID_regName" class="wwgrp">
											<div id="wwctrl_formID_regName" class="wwctrl">
												${received.studentname}</div>
										</div>
									</td>


									<td width="170px"><label> Gender: </label></td>
									<td>
										<div id="wwgrp_regGender" class="wwgrp">
											<div id="wwctrl_regGender" class="wwctrl">
												${received.gender}</div>
										</div>
									</td>
								</tr>


								<tr>
									<td width="150px"><label> Father Name: </label></td>
									<td>
										<div id="wwgrp_formID_regName" class="wwgrp">
											<div id="wwctrl_formID_regName" class="wwctrl">
												${received.fathername}</div>
										</div>
									</td>


									<td width="170px"><label> Mother Name: </label></td>
									<td>
										<div id="wwgrp_formID_regName" class="wwgrp">
											<div id="wwctrl_formID_regName" class="wwctrl">
												${received.mothername}</div>
										</div>
									</td>

								</tr>


								<tr>
									<td width="150px"><label>Registration No:</label></td>
									<td>
										<div id="wwgrp_formID_regName" class="wwgrp">
											<div id="wwctrl_formID_regName" class="wwctrl">
												${received.rgsno}</div>
										</div>
									</td>


									<td width="170px"><label> Nationality: </label></td>
									<td>
										<div id="wwgrp_regNationality" class="wwgrp">
											<div id="wwctrl_regNationality" class="wwctrl">
												${received.nationality}</div>
										</div>
									</td>
								</tr>

								<tr>
									<td><label>Date of Admission:</label></td>
									<td>
										<div id="wwgrp_formID_regDOA" class="wwgrp">
											<div id="wwctrl_formID_regDOA" class="wwctrl">
												${received.date}</div>
										</div>
									</td>

									<td><label>Passport No:</label></td>
									<td>
										<div id="wwgrp_formID_regPassport No" class="wwgrp">
											<div id="wwctrl_formID_regPassport No" class="wwctrl">
												${received.passportno}</div>
										</div>
									</td>
								</tr>

								<tr>
									<td><label> Passport Issue date:</label></td>
									<td>
										<div id="wwgrp_formID_regPID" class="wwgrp">
											<div id="wwctrl_formID_regPID" class="wwctrl">
												${received.pid}</div>
										</div>
									</td>


									<td><label> Valid till:</label></td>
									<td>
										<div id="wwgrp_formID_regValidtill" class="wwgrp">
											<div id="wwctrl_formID_regValidtill" class="wwctrl">
												${received.validtill}</div>
										</div>
									</td>

								</tr>

								<tr>
									<td><label> Visa issue date:</label></td>
									<td>
										<div id="wwgrp_formID_regVID" class="wwgrp">
											<div id="wwctrl_formID_regVID" class="wwctrl">
												${received.vid}</div>
										</div>
									</td>

									<td><label> Date of Birth:</label></td>
									<td>
										<div id="wwgrp_formID_regDOB" class="wwgrp">
											<div id="wwctrl_formID_regDOB" class="wwctrl">
												${received.dob}</div>
										</div>
									</td>

								</tr>

								<tr>
									<td><label> Student Visa No:</label></td>
									<td>
										<div id="wwgrp_formID_regStudentVisa No" class="wwgrp">
											<div id="wwctrl_formID_regStudentVisa No" class="wwctrl">
												${received.studentvisano}</div>
										</div>
									</td>


									<td><label> Residential Permit Validity:</label></td>
									<td>
										<div id="wwgrp_formID_regRPV" class="wwgrp">
											<div id="wwctrl_formID_regRPV" class="wwctrl">
												${received.rpv}</div>
										</div>
									</td>

								</tr>


								<tr>
									<td><label> Category:</label></td>
									<td>
										<div id="wwgrp_regCategory:" class="wwgrp">
											<div id="wwctrl_regCategory:" class="wwctrl">
												${received.category}</div>
										</div>
									</td>


									<td><label>Whether the Institution is Recognized</label></td>
									<td>
										<div id="wwgrp_regWiR:" class="wwgrp">
											<div id="wwctrl_regWIR:" class="wwctrl">
												${received.wir}</div>
										</div>
									</td>
								</tr>

								<tr>
									<td><label> Course Period From:</label></td>
									<td>
										<div id="wwgrp_formID_regCp" class="wwgrp">
											<div id="wwctrl_formID_regCp" class="wwctrl">
												${received.cpfrom}</div>
										</div>
									</td>

									<td><label>To:</label></td>
									<td>
										<div id="wwgrp_formID_regCp" class="wwgrp">
											<div id="wwctrl_formID_regCp" class="wwctrl">
												${received.cpto}</div>
										</div>
									</td>

								</tr>


								<tr>
									<td><label> Intership Period From:</label></td>
									<td>
										<div id="wwgrp_formID_regIp" class="wwgrp">
											<div id="wwctrl_formID_regIp" class="wwctrl">
												${received.ipfrom}</div>
										</div>
									</td>

									<td><label>To:</label></td>
									<td>
										<div id="wwgrp_formID_regIp" class="wwgrp">
											<div id="wwctrl_formID_regIp" class="wwctrl">
												${received.ipto}</div>
										</div>
									</td>

								</tr>



								<tr>
									<td><label>Present Residential Address:</label></td>
									<td>
										<div id="wwgrp_formID_regAddress" class="wwgrp">
											<div id="wwctrl_formID_regAddress" class="wwctrl">
												${received.comments}</div>
										</div>
									</td>


									<td><label> Whether he/she Attending classes
											Regularly Or not:</label></td>
									<td>
										<div id="wwgrp_regWARN:" class="wwgrp">
											<div id="wwctrl_regWARN:" class="wwctrl">
												${received.warn}</div>
										</div>
									</td>
								</tr>

								<tr>
									<td><label>Attendance Percentage</label></td>
									<td>
										<div id="wwgrp_formID_regAP" class="wwgrp">
											<div id="wwctrl_formID_regregAP" class="wwctrl">
												${received.ap}</div>
										</div>
									</td>
							</table>
						</fieldset>
					</div>
				</div>
			</form>
			<br>


		</div>
	</div>
</body>
</html>