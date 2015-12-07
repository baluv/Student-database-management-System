/**
 * 
 */
function validateform(){  
var userName=document.loginform.userName.value;  
var password=document.loginform.password.value;  
  
if (userName==null || userName==""){  
  alert("Name can't be blank");  
  return false;  
}else if(password.length<4){  
  alert("Password must be at least 4 characters long.");  
  return false;  
  }  
}  