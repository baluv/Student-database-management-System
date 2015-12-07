/**
 * 
 */

function validateForm() 
{

    var studId = document.insertform.userName.value;
    var studName = document.insertform.userName.value;
    var studMarks = document.insertform.userName.value;
    var studEmail =document.insertform.userName.value;
    var studphNo = document.insertform.userName.value;
   

    if (studId == "") 
    {
        alert("Enter studId");
        return false;
    }
    if (studName == "") {
        alert("Enter studName");
        return false;
    }
    
    if (studMarks == "") {
        alert("Enter studMarks");
        return false;
    }
    
    if (studEmail == "") {
        alert("Enter studEmail");
        return false;
    }
    
    if (studphNo == "") {
        alert("Enter studphNo");
        return false;
    }
    
 /*  
    var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/
    var EmailmatchArray = studEmail.match(emailPat);
    if (EmailmatchArray == null) {
        alert("Your email address seems incorrect. Please try again.");
        return false;
    }*/
}

    
