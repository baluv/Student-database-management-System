<jsp:include page="menu.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="css/new.css" rel="stylesheet" type="text/css">
 <script>
function formReset() {
    document.getElementById("myform").reset();
}
</script>
<style type="text/css"> 
.styled-button-10 {
	background:#5CCD00;
	background:-moz-linear-gradient(top,#5CCD00 0%,#4AA400 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#5CCD00),color-stop(100%,#4AA400));
	background:-webkit-linear-gradient(top,#5CCD00 0%,#4AA400 100%);
	background:-o-linear-gradient(top,#5CCD00 0%,#4AA400 100%);
	background:-ms-linear-gradient(top,#5CCD00 0%,#4AA400 100%);
	background:linear-gradient(top,#5CCD00 0%,#4AA400 100%);
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#5CCD00', endColorstr='#4AA400',GradientType=0);
	padding:6px 30px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:16px;
	border-radius:5px;
	-moz-border-radius:9px;
	-webkit-border-radius:5px;
	border:1px solid blue
}
</style>
</head>
<body>
<br><br><br><br>
<form  name="myform" action="saveExam.htm" method="post" onsubmit="return validate()">
<table bgcolor="#E0FFFF" align="center" width="45%"  cellspacing="5" cellpadding="5"><tr><td>
 <fieldset><legend align="center"><font size="5"><font color=green><b>Exam Details</b></font></font></legend>
  
  
    <table align="center"  cellspacing="5" cellpadding="10"><tr><td>
   <font size="3"><b>Year</b></font> :</td>
      <td ><select class="td1" name="Year" id="Year" onchange="messageReveal()" >
           <option value="0"  >-------------select--------------</option>
           <option>BDS-I</option>
           <option>BDS-II</option>
            <option>BDS-III</option>
            <option>BDS-IV</option>
          </select>
        </td>
   </tr>
    <tr>
          <td ><label><font size="3"><b>Course</b></font></font></label></td>
    <td><select class="td1" name="course" id="course"  onchange="setYear();"  >
    
             <option value="selected" selected >-------------Select--------------</option>
           <option value="BDS">BDS</a></option>
           <option value="MDS">MDS</option>
           
          </select><span id="crse" style="color:red"></span>
        </td>
   </tr>
   <tr>
     <td><font size="3"><b>Date</b></font>:</td>
        <td>
        <input type=date name="date" id="date" size="20"  class="td" required>
        </td>
</tr>
 <tr>
     <td> <font size="3"><b>Student Name</b></font>:</td>
        <td>
        <input  class="td" type=text name="studentname" id="studentname" size="20" required>
        </td>
</tr>
<tr>
     <td> <font size="3"><b>Registration No</b></font>:</td>
        <td>
        <input  class="td" type=text name="registrationno" id="registrationno" size="20" required>
        </td>
</tr>
<tr>
     <td> <font size="3"><b>Exam Appeared</b></font>:</td>
        <td>
        <input  class="td" type=text name="exam" id="exam" size="20"    required>
        </td>
</tr>
<td ><label><font size="3"><b>Result</b></font></font></label></td>
    <td><select class="td1" name="result" id="result"  onchange="setYear();"  >
    
             <option value="selected" selected >-------------Select--------------</option>
           <option value="Pass"  >Pass</a></option>
           <option value="Fail" >Fail</option>
           
          </select><span id="crse" style="color:red"></span>
        </td>
   </tr>
   <tr>
   <td></td>
     <td>
     <input type="submit" class="styled-button-10" value="submit" >
   <!--  <input type="reset"   class="styled-button-10" value="Reset" onclick="formReset()" > -->
        </td>
      </tr>
</body>
</html>