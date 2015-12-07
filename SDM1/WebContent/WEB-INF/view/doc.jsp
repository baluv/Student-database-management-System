<jsp:include page="menu.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="./design/1.png">
<title>docmentslist</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/new.css" rel="stylesheet" type="text/css">

<style type="text/css">
.styled-button-10 {
	background: #5CCD00;
	background: -moz-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #5CCD00),
		color-stop(100%, #4AA400));
	background: -webkit-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: -o-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: -ms-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#5CCD00',
		endColorstr='#4AA400', GradientType=0);
	padding: 6px 30px;
	color: #fff;
	font-family: 'Helvetica Neue', sans-serif;
	font-size: 16px;
	border-radius: 5px;
	-moz-border-radius: 9px;
	-webkit-border-radius: 5px;
	border: 1px solid blue
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<form name="myform" action="saveDoc.htm" method="post"
		onsubmit="return validate()">
		<div align="center">
			<div class="field">
				<table bgcolor="#E0FFFF" align="center" width="70%" cellspacing="5"
					cellpadding="5">
					<tr>
						<td>
							<fieldset>
								<legend align="center">
									<font size="5"><font color=green><b> Student
												Document Details</b></font></font>
								</legend>


								<table align="center" cellspacing="5" cellpadding="10">
									<tr>
										<td><font size="3"><b>Student Name:</b></font>:</td>
										<td><input class="td" type=text name="studentname"
											id="studentname" size="20"></td>
									</tr>
									<tr>
										<td><font size="3"><b>Registration No:</b></font>:</td>
										<td><input class="td" type=text name="registrationno"
											id="registrationno" size="20" oninput="calculate()">
										</td>
									</tr>
									<tr>
										<td><label for="simple-input"><font size="3"><b>Seat:</b></font></label></td>
										<td><select class="td1" name="seat">
												<option value="-" selected>-----------Select-----------</option>
												<option value="NRI">NRI</option>
												<option value="Management">Management</option>
												<option value="CET">CET</option>
												<option value="Camed.K">Camed.K</option>
										</select><span id="c" style="color: red"></span></td>
									</tr>
									<tr>
										<td><font size="3"><b>Academic year:</b></font>:</td>
										<td><input class="td" type=text name="academicyear"
											id="academicyear" size="20"></td>
									</tr>
									<tr>
										<td><font size="3"><b>joining Date:</b></font>:</td>
										<td><input class="td" type=date name="joiningdate"
											id="joiningdate" size="20"></td>
									</tr>
									<tr>
										<td><font size="3"><b>DOC Submitted Date:</b></font> :</td>
										<td><input class="td" type=date name="docsubmitteddate"
											id="docsubmitteddate" size="20"></td>
									</tr>

									<tr>
										<td><font size="3"><b>List Of Submitted
													Documents:</b></font></td>



										<td><table align="center" border="1">
												<tr>
													<td width="80%">SSLC</td>
													<td width="30%"><input type="radio" value="yes"
														name="sslc" />YES</td>
													<td><input type="radio" value="no" name="sslc" />NO</td>
												</tr>
												<tr>
													<td width="80%">PUC</td>
													<td width="30%"><input type="radio" value="yes"
														name="puc" />YES</td>
													<td><input type="radio" value="no" name="puc" />NO</td>
												</tr>
												<tr>
													<td width="80%">Degree</td>
													<td width="30%"><input type="radio" value="yes"
														name="degree" />YES</td>
													<td><input type="radio" value="no" name="degree" />NO</td>
												</tr>
												<tr>
													<td width="80%">Provisional Certificate</td>
													<td width="30%"><input type="radio" value="yes"
														name="pc" />YES</td>
													<td><input type="radio" value="no" name="pc" />NO</td>
												</tr>
												<tr>
													<td width="80%">Transfer Certificate</td>
													<td width="30%"><input type="radio" value="yes"
														name="tc" />YES</td>
													<td><input type="radio" value="no" name="tc" />NO</td>
												</tr>
												<tr>
													<td width="80%">Migration</td>
													<td width="30%"><input type="radio" value="yes"
														name="migration" />YES</td>
													<td><input type="radio" value="no" name="migration" />NO</td>
												</tr>
												<tr>
													<td width="80%">NRI</td>
													<td width="30%"><input type="radio" value="yes"
														name="nri" />YES</td>
													<td><input type="radio" value="no" name="nri" />NO</td>
												</tr>
												<tr>
													<td width="80%">Caste Certificate</td>
													<td width="30%"><input type="radio" value="yes"
														name="castecertificate" />YES</td>
													<td><input type="radio" value="no"
														name="castecertificate" />NO</td>
												</tr>
												<tr>
													<td width="80%">Income Certificate</td>
													<td width="30%"><input type="radio" value="yes"
														name="incomecertificate" />YES</td>
													<td><input type="radio" value="no"
														name="incomecertificate" />NO</td>
												</tr>
												<tr>
													<td width="80%">Rank Card</td>
													<td width="30%"><input type="radio" value="yes"
														name="rankcard" />YES</td>
													<td><input type="radio" value="no" name="rankcard" />NO</td>
												</tr>


											</table></td>
									</tr>






									<tr>
										<td></td>
										<td><input type="submit" value="submit"
											class="styled-button-10">
									</tr>
								</table>







							</fieldset>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</form>



</body>
</html>