<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GetOnRent</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/Mainstyle.css" />
<link rel="stylesheet" type="text/css" href="css/rent.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
function validate()
{
	if((document.getElementById("frst_usr_name").value)=="")
	{
		alert("Name should not empty");
		return false;	
	}
	
	if((document.getElementById("lst_usr_name").value)=="")
	{
		alert("Last name should not empty");
		return false;	
	}
//--------------------------------------------------------------------------------------	
	var inputText=document.getElementById("usr_email").value;
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(!(inputText.match(mailformat)))
	{
		alert("You have entered an invalid email address!");
		return false;
	}
	
	if((document.getElementById("usr_email").value)=="")
	{
		alert("Email should not empty");
		return false;	
	}
	//------------------------------------------------------------------------------
	var mob=document.getElementById("usr_mobile").value;
	
	var phoneno = /^\d{10}$/;
		if(!(mob.match(phoneno)))
	{
		 	alert("Not a valid Phone Number");
		return false;
	}
	
	if(mob.length!=10)
	{
		alert("Enter valid mobile number");
		return false;	
	}
	
	if((document.getElementById("usr_mobile").value)=="")
	{
		alert("Mobile Number should not empty");
		return false;	
	}
	
//-------------------------------------------------------------------------------------------	
	var pass=document.getElementById("usr_passwd").value;
	var co_pass=document.getElementById("cnf_usr_passwd").value;
	
	if(pass!=co_pass)
		{
			alert("Password does not match");
			return false;
		}
	
	
	if((document.getElementById("usr_passwd").value)=="")
	{
		alert("Password should not empty");
		return false;	
	}
	
	
	
//----------------------------------------------------------------------------------	
	if((document.getElementById("use_address").value)=="")
	{
		alert(" should not empty");
		return false;	
	}
	
	
	
}

$(document).ready(function () {

    //call function
    $("#outer_house").hide();
    $("#house_detail").hide();
    
    $( "#register_type").click(function() {
        var val=$("#register_type").val();
        if(val=="Landlord")
          {
            $("#outer_house").show();
            $("#house_detail").show();      
          }
        if(val=="tenant")
          {
            $("#outer_house").hide();
            $("#house_detail").hide();
          }
    });
});
</script>
</head>
<body onload="PageLoad()">
<div id="main_container">
  <div id="header">
    <%@include file="includes/Header.jsp" %>
     </div>
  <div id="main_content">
    <div class="column1">
      <%@include file="includes/LeftColumn.jsp" %>
    </div>
    <!-- end of column one -->
     
    <div>
    <form method="post" action="RegisterLandlord" onsubmit="return validate()">
     <div class="column4">
    
      <div class="title">Personal Details</div>
     
      <div class="outer">
        <table class="row">
        <tr>
          <td class="indivisual"><label> First name : </label></td>
          <td class="indivisual"><input type="text" maxlength="30" name="frstname" id="frst_usr_name"/><sup style="color: red">*</sup></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Last name : </label></td>
          <td class="indivisual"><input type="text" maxlength="30" name="lstname" id="lst_usr_name"/></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Email id : </label></td>
          <td class="indivisual"><input type="email" maxlength="40" name="mail_id" id="usr_email"/><sup style="color: red">*</sup></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Mobile no : </label></td>
          <td class="indivisual"><input type="number" maxlength="12" name="mobile" id="usr_mobile"/></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Password : </label></td>
          <td class="indivisual"><input type="password" maxlength="20" name="passwd" id="usr_passwd"/></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Confirm password : </label></td>
          <td class="indivisual"><input type="password" maxlength="20" name="passwd" id="cnf_usr_passwd"/></td>
        </tr>
    <tr>
          <td class="indivisual"><label>Current address : </label></td>
          <td class="indivisual"><textarea rows="4" cols="15" name="use_add" id="use_address"></textarea> </td>
        </tr>
        
        <tr>
          <td class="indivisual"><label>Register As : </label></td>
          <td class="indivisual">
            <select name="register_type" id="register_type" style="width: 100px;" onchange="typeSelect()">
              <option value="tenant" selected="selected">Tenant</option>
              <option value="Landlord">Landlord</option>
            </select>
          </td>
        </tr>
        
        
        
        </table>
      </div>
     
      </div>
      
      
      
      <div class="column4">
      
      
    <div class="outer" id="outer_house">
        <table class="row">
               
         
        <tr>
          <td class="indivisual"><label>Membership  : </label></td>
          <td class="indivisual">
            <select name="register_type" id="register_type" style="width: 100px;" onchange="typeSelect()">
              <option value="onemonth" selected="selected">One Month</option>
              <option value="twomonth">Two Month</option>
            </select>
          </td>
        </tr>
        
       
        </table>
      </div>
      </div>
      <div class="column3" style="float: right;">
        <input type="submit" name="submit" id="edit_sub"/><input type="reset" name="reset" id="edit_reset"/>
      </div>
      
      
      
      
      
      
      
      
      
    
    
    </form>
</div>
        <!-- end of column four -->
      
</div>  
  <!-- end of main_content -->
  <div id="footer">
    <%@include file="includes/Footer.jsp" %>
    
</div>
<!-- end of main_container -->
</body>
</html>
