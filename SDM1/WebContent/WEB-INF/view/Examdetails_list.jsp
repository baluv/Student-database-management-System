<jsp:include page="menu.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
        $(document).ready(function () {
            $("#companies").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true
            });
        });
        </script> 
</head><!-- <form action="getpdfstudentfee.html">
<tr>
<div id="admissions_length" class="dataTables_length">
  </div>
  </tr>
   </form>
<left>
<c:url var="getpdfstudentfeeURL" value="getpdfstudentfee.html" /> 

<a id="admissions_length" target="_blank" href="getpdfstudentfee.html" ><img alt="Download" src="images/download.jpg"> </a></th>
		<th>&nbsp;</th><th width="28%" align="left"> -->
<body id="dt_example">
<br><br><br><br><br><br><br>
<div id="container">
<div id="links">
        	  
        		<br/>
        	</div>
<div id="demo_jui">
<c:if test="${!empty examdetailsList}">
<div class="searchdata">	
  <table id="companies" class="display">
	<thead>
		<tr style="backgroud-color:#fff;color:black; ">
    <th >sno</th>
     <th >Year</th>
     <th >Course</th>
     <th >Date</th>
     <th >Student Name</th>
     <th>Registration No</th>
     <th >Exam Appeared</th>
     <th >Result</th>
<!--    <th>Edit</th> -->
     
  
     </tr>
     </thead>
     <tbody>
    <c:forEach items="${examdetailsList}" var="examdetails">
   <tr style="cursor: pointer" onmouseover="this.background='#C0C0C0'"">
  
      <td align="center"><c:out value="${examdetails.sno}"/></td>
      <td align="center"><c:out value="${examdetails.year}"/></td>
      <td align="center"><c:out value="${examdetails.course}" /></td>
      <td align="center"><c:out value="${examdetails.date}"/></td>
      <td align="center"><c:out value="${examdetails.studentname}"/></td>
      <td align="center"><c:out value="${examdetails.registrationno}"/></td>
      <td align="center"><c:out value="${examdetails.exam}"/></td>
      <td align="center"><c:out value="${examdetails.result}"/></td>
    
     <%--  <td><a href="edit.html?sno=${received.sno}">edit</a></td> --%>
     </tr>
    </c:forEach>
    </tbody>
   </table>
    </c:if>
    </div>
    </div>

</html>