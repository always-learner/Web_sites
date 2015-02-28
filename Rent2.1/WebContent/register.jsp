<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GetOnRent</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/Mainstyle.css" />
<link rel="stylesheet" type="text/css" href="css/rent.css" />
<script>
$(document).ready(function(){
        $("#outer_house").hide();
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
      		<td class="indivisual"><input type="cnf_password" maxlength="20" name="passwd" id="cnf_usr_passwd"/></td>
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
    </div>
    <div class="column4">
      <div class="title" id="house_detail">House Details</div>
      
      <div class="outer" id="outer_house">
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
      		<td class="indivisual"><input type="cnf_password" maxlength="20" name="passwd" id="cnf_usr_passwd"/></td>
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
      
      </div>
    
    
        <!-- end of column four -->
  
  <!-- end of main_content -->
  <div id="footer">
    <%@include file="includes/Footer.jsp" %>
    
</div>
<!-- end of main_container -->
</body>
</html>