function validate()
{
	var sname=document.myform.studentname.value;
	var rgsno=document.myform.rgsno.value;
	var dob=document.myform.dob.value;
    var rpv=document.myform.rpv.value;
	var status=false;
	/*if(document.myform.course.selectedIndex==0)
	{ //alert("Please select your member type");
	//document.myform.course.focus();
	document.getElementById("course").innerHTML="please select your course";
	status=false;
	}
	else
		{
		document.getElementById("course").innerHTML="";
		status=true;
		}
		
	
	if(document.myform.year.selectedIndex==0)
	{ //alert("Please select your member type");
	//document.myform.year.focus();
	document.getElementById("year").innerHTML="please select your year";
	status=false;
	}	
	else
		{
		document.getElementById("year").innerHTML="";
		status=true;
		}
	if(document.myform.department.selectedIndex==0)
	{ //alert("Please select your member type");
	//document.myform.department.focus();
	document.getElementById("dpt").innerHTML="please select your department";
	status=false;
	}	
	else
		{
		document.getElementById("dpt").innerHTML="";
		status=true;
		}*/
	if(sname==null||sname=="")
		{
		document.getElementById("sname").innerHTML="please enter your name";
		status=false;
		}	
		else
			{
			document.getElementById("sname").innerHTML="";
			status=true;
			}
	if(rgsno==null||rgsno=="")
	{
	document.getElementById("rgs").innerHTML="Please Enter your registration";
	status=false;
	}
	else
	{
	document.getElementById("rgs").innerHTML="";
	status=true;
	}/*
	if(document.myform.nationality.seletedIndex==0)
	{
	document.getElementById("nat").innerHTML="Please select your nationality";
	status=false;
	}
	else
	{
	document.getElementById("nat").innerHTML="";
	status=true;
	}*/
	if(dob==null||dob=="")
	{
	document.getElementById("dob1").innerHTML="Please select your DateOfBirth";
	status=false;
	}
	else
	{
	document.getElementById("dob1").innerHTML="";
	status=true;
	}
	if(document.myform.gender.selectedIndex==0)
	{ //alert("Please select your member type");
	//document.myform.course.focus();
	document.getElementById("gen").innerHTML="please select your Gender";
	status=false;
	}
	else
		{
		document.getElementById("gen").innerHTML="";
		status=true;
		}
	if(document.myform.category.selectedIndex==0)
	{ //alert("Please select your member type");
	//document.myform.course.focus();
	document.getElementById("c").innerHTML="please select your category";
	status=false;
	}
	else
		{
		document.getElementById("c").innerHTML="";
		status=true;
		}

	if(rpv==null||rpv=="")
	{
	document.getElementById("cmnts").innerHTML="Please enter your Address";
	status=false;
	}
	else
	{
	document.getElementById("cmnts").innerHTML="";
	status=true;
	}
	return status;
	
}