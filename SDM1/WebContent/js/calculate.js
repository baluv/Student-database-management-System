var messages = new Array(5); 
messages[0] = "";
messages[1] = "219000";
messages[2] = "214000";    
messages[3] = "252000";
messages[4] = "239000";

function messageReveal() 
{
var messageindex = document.myform.Year.selectedIndex;
document.myform.totalamount.value = messages[messageindex];
document.myform.dueamount.value = messages[messageindex];
}

function calculate() 
{
    var tf = document.getElementById('TF').value;
    var DMFF = document.getElementById('DMF').value;
    var UFF = document.getElementById('UF').value;
    var CF = document.getElementById('CF').value;
    var PA=  document.getElementById('paidamount');
      var PA1=(parseInt(tf)+parseInt(DMFF)+parseInt(UFF)+parseInt(CF));
    PA.value=parseInt(PA1);
   
    var totalfee=document.getElementById('totalamount').value;
    var PA=  document.getElementById('paidamount').value;
    var da = document.getElementById('dueamount');
    var da1=(parseInt(totalfee)-parseInt(PA));
    da.value=parseInt(da1);
   
}
    