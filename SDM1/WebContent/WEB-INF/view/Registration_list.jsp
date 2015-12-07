<jsp:include page="menu.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="./design/1.png">
<title>Studentlist</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
	
</head>
<link href="css/demo_page.css" rel="stylesheet"
	type="text/css" />
<link href="css/demo_table.css" rel="stylesheet"
	type="text/css" />
<link href="css/demo_table_jui.css" rel="stylesheet"
	type="text/css" />
<link href="css/jquery-ui.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="css/jquery-ui-1.7.2.custom.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="jquery/jquery.js" type="text/javascript"></script>
<script src="jquery/jquery.dataTables.min.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#companies").dataTable({
			"sPaginationType" : "full_numbers",
			"bJQueryUI" : true
		});
	});
</script>

</head>
<%-- <form action="getpdfreceived.html">
	<tr>
		<div id="admissions_length" class="dataTables_length"></div>
	</tr>
</form>
<left> <c:url var="getpdfreceivedURL" value="getpdfreceived.html" />

<a id="admissions_length" target="_blank" href="getpdfreceived.html"><img
	alt="Download" src="images/5.jpg"> </a>
</th>
<th>&nbsp;</th>
<th width="28%" align="left"> --%>

	<body id="dt_example">
		<br>
		<br>
		<br>
		<div id="container">
			<div id="links">

				<br />
			</div>
			<div id="demo_jui">
				<c:if test="${!empty registrationList}">
					<div class="searchdata">
						<table id="companies" class="display">
							<thead>
								<tr style="backgroud-color: #fff; color: black;">
									<th>sno</th>
									<th>Course</th>
									<th>StudentName</th>
									<th>FatherName</th>
									<th>Rgsno</th>
									<th>Nationality</th>
									<th>Date</th>
									<th>Passportno</th>
									<th>Pid</th>
									<th>Validtill</th>
									<th>Vid</th>
									<th>DOB</th>
									<th>Dept</th>
									<th>Update</th>
									<th>view</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${registrationList}" var="received">
									<tr style="cursor: pointer"
										onmouseover="this.background='#C0C0C0'"">

										<td align="center"><c:out value="${received.sno}" /></td>
										<td align="center"><c:out value="${received.course}" /></td>
										<td align="center"><c:out value="${received.studentname}" /></td>
										<td align="center"><c:out value="${received.fathername}" /></td>
										<td align="center"><c:out value="${received.rgsno}" /></td>
										<td align="center"><c:out value="${received.nationality}" /></td>
										<td align="center"><c:out value="${received.date}" /></td>
										<td align="center"><c:out value="${received.passportno}" /></td>
										<td align="center"><c:out value="${received.pid}" /></td>
										<td align="center"><c:out value="${received.validtill}" /></td>
										<td align="center"><c:out value="${received.vid}" /></td>
										<td align="center"><c:out value="${received.dob}" /></td>
										<td align="center"><c:out value="${received.department}" /></td>
										<td align="center"><a
											href="update.htm?sno=${received.sno}"><font color="green">update</font></a></td>
										<td align="center"><a
											href="view.htm?sno=${received.sno}" target="_blank"><font
												color="green">Print</font></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
				</c:if>
			</div>
		</div>

	</body>
</html>