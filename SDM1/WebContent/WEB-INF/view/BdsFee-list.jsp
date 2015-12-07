<jsp:include page="menu.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/1.png">
<title>BdsFeeList</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table_jui.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/jquery-ui-1.7.2.custom.css" rel="stylesheet"
	type="text/css" media="all" />
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
<%-- <form action="getpdfstudentfee.htm">
	<tr>
		<div id="admissions_length" class="dataTables_length"></div>
	</tr>
</form> --%>
<%-- <left> <c:url var="getpdfstudentfeeURL"
	value="getpdfstudentfee.htm" /> <br>
<br>
<a id="admissions_length" target="_blank" href="getpdfstudentfee.htm"><img
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
			<c:if test="${!empty studentfeeList}">
				<div class="searchdata">
					<table id="companies" class="display">
						<thead>
							<tr style="backgroud-color: #fff; color: black;">
								<th>sno</th>
								<th>Year</th>
								<th>Date</th>
								<th>StudentName</th>
								<th>Total Amount</th>
								<th>Paid Amount</th>
								<th>Due Amount</th>
								<th>Pay Mode</th>
								<th>Status</th>
								<th>Edit</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${studentfeeList}" var="studentfee">
								<tr style="cursor: pointer"
									onmouseover="this.background='#C0C0C0'"">

									<td align="center"><c:out value="${studentfee.sno}" /></td>
									<td align="center"><c:out value="${studentfee.year}" /></td>
									<td align="center"><c:out value="${studentfee.date}" /></td>
									<td align="center"><c:out
											value="${studentfee.studentname}" /></td>
									<td align="center"><c:out
											value="${studentfee.totalamount}" /></td>
									<td align="center"><c:out value="${studentfee.paidamount}" /></td>
									<td align="center"><c:out value="${studentfee.dueamount}" /></td>
									<td align="center"><c:out value="${studentfee.paymode}" /></td>
									<td align="center"><c:out value="${studentfee.status}" /></td>
									<td align="center"><a href="edit.htm?sno=${received.sno}">Edit</a></td>
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