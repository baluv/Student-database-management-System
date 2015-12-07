<jsp:include page="menu.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/new.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="images/1.png">
<title>StudentList</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript" src="js/calculate.js"></script>
<script type="text/javascript" src="jquery/jquery.datepick.js"></script>
<style type="text/css">
@import "css/jquery.datepick.css";
</style>

<script type="text/javascript">
	$(function() {
		$(".hajanDatePicker").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : "-50:2015",

		});
	});
</script>

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

	<form name="myform" action="saveBdsFee.htm" method="post"
		onsubmit="return validate()">
		<div align="center">
			<div class="field">
				<table bgcolor="#E0FFFF" align="center" width="70%" cellspacing="5"
					cellpadding="5">
					<tr>
						<td>
							<fieldset>
								<legend align="center">
									<font size="5"><font color=green><b>BDS
												Students Fee Details</b></font></font>
								</legend>


								<table align="center" cellspacing="5" cellpadding="10">
									<tr>
										<td><font size="3"><b>Year</b></font> <font color="red">*</font>:</td>
										<td><select class="td1" name="Year" id="Year"
											onchange="messageReveal()">
												<option value="0">-------------select--------------</option>
												<option>BDS-I</option>
												<option>BDS-II</option>
												<option>BDS-III</option>
												<option>BDS-IV</option>
										</select></td>
									</tr>
									<tr>
										<td><font size="3"><b>Date</b></font><font color="red">*</font>:</td>
										<td><input type=date name="date" id="date" size="20"
											class="td" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>Student Name</b></font><font
											color="red">*</font>:</td>
										<td><input class="td" type=text name="studentname"
											id="studentname" size="20" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>Tuition Fees</b></font>:</td>
										<td><input class="td" type=text name="TF" id="TF"
											size="20" oninput="calculate()" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>Clinical Fees</b></font>:</td>
										<td><input class="td" type=text name="CF" id="CF"
											size="20" oninput="calculate()" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>Dental Material Fees</b></font>:</td>
										<td><input class="td" type=text name="DMF" id="DMF"
											size="20" oninput="calculate()" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>University Fees</b></font>:</td>
										<td><input class="td" type=text name="UF" id="UF"
											size="20" oninput="calculate()" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>Total Amount</b></font> :</td>
										<td><input class="td" type=text name="totalamount"
											id="totalamount" size="20" required></td>
									</tr>
									<tr>
										<td><font size="3"><b>Paid Amount</b></font>:</td>
										<td><input class="td" type=text name="paidamount"
											id="paidamount" size="20" oninput="calculate()" required>
										</td>
									</tr>
									<tr>
										<td><font size="3"><b>Due Amount</b></font>:</td>
										<td><input class="td" type=text name="dueamount"
											id="dueamount" size="20" required></td>
									</tr>
									<tr>
										<td><label for="dropdown-actions"><font size="3"><b>Status</b></font></label></td>
										<td><select class="td1" name="status" id="status">
												<option value="select">--------------Select-------------</option>
												<option value="NODUE">NO DUE</option>
												<option value="DUE">DUE</option>

										</select></td>
									</tr>

									<tr>
										<td><label for="dropdown-actions"><font size="3"><b>Paymode</b></font></label></td>
										<td><select id="opts" class="td1" name="paymode"
											id="paymode" onchange="showForm()">
												<option value="Select">--------------Select-------------</option>
												<option value="Cash">Cash</option>
												<option value="DD">DD</option>
												<option value="Cheque">Cheque</option>
												<option value="RTGS">RTGS</option>
										</select></td>
									</tr>
								</table>

								<table align="center" cellspacing="5" cellpadding="10">
									<tr>
										<td>

											<p id="f1" style="display: none">
												<font size="3"><b>Payable Amount</b></font>:<input
													class="td2" type="text" name="amount" />
											</p>

											<p id="f2" style="display: none">
												<font size="3"><b>BankName</b></font>:<input type="text"
													class="td2" name="bankname" /> <font size="3"> <b>DD
														Number</b></font>:<input type="text" class="td2" name="ddnumber" />
												<font size="3"> <b>Amount</b></font>:<input type="text"
													class="td2" name="amount1" />
											</p>

											<p id="f3" style="display: none">
												<font size="3"> <b>BankName&ADDRS</b></font>:<input
													type="text" class="td2" name="bankname1" />&nbsp;
												&nbsp;&nbsp; &nbsp; &nbsp; <font size="3"> <b>A/C
														No</b></font>:<input type="text" class="td2" name="acnumber" /><br>
												<br> <font size="3"> <b>IFSC Code</b></font>:&nbsp;
												&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" class="td2" name="ifsc" /> &nbsp; &nbsp;
												&nbsp; &nbsp;<font size="3"> <b>Amount</b></font>:<input
													type="text" class="td2" name="amount2" />
											</p>

											<p id="f4" style="display: none">
												<font size="3"> <b>A/C No.</b></font>:<input type="text"
													class="td2" name="acnumber1" /> <font size="3"> <b>A/C
														HolderName</b></font>:<input type="text" class="td2"
													name="acholdername" /> <font size="3"> <b>Amount</b></font>:<input
													type="text" class="td2" name="amount3" />
											</p>

										</td>
									</tr>
								</table>
								<table align="center" cellspacing="5" cellpadding="10">

									<tr>
										<td></td>
										<td></td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
											type="submit" value="submit" class="styled-button-10">

										</td>
									</tr>
								</table>
							</fieldset>
						</td>
					</tr>
				</table>

			</div>
		</div>
	</form>

	<script type="text/javascript">
		function showForm() {
			var selopt = document.getElementById("opts").value;

			if (selopt == "Cash") {
				document.getElementById("f1").style.display = "block";
				document.getElementById("f2").style.display = "none";
				document.getElementById("f3").style.display = "none";
				document.getElementById("f4").style.display = "none";
			}
			if (selopt == "DD") {
				document.getElementById("f2").style.display = "block";
				document.getElementById("f1").style.display = "none";
				document.getElementById("f3").style.display = "none";
				document.getElementById("f4").style.display = "none";
			}
			if (selopt == "Cheque") {
				document.getElementById("f3").style.display = "block";
				document.getElementById("f1").style.display = "none";
				document.getElementById("f2").style.display = "none";
				document.getElementById("f4").style.display = "none";
			}
			if (selopt == "RTGS") {
				document.getElementById("f4").style.display = "block";
				document.getElementById("f1").style.display = "none";
				document.getElementById("f2").style.display = "none";
				document.getElementById("f3").style.display = "none";
			}
		}
	</script>


</body>
</html>