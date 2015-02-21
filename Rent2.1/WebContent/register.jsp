<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GetOnRent</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/Mainstyle.css" />
<link rel="stylesheet" type="text/css" href="css/rent.css" />
</head>
<body>
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
      		<td class="indivisual"><label>Enter first name : </label></td>
      		<td class="indivisual"><input type="text" maxlength="30" name="frstname" id="frst_usr_name"/><sup style="color: red">*</sup></td>
      	</tr>
      	<tr>
      		<td class="indivisual"><label>Enter last name : </label></td>
      		<td class="indivisual"><input type="text" maxlength="30" name="lstname" id="lst_usr_name"/></td>
      	</tr>
      	<tr>
      		<td class="indivisual"><label>Enter email id : </label></td>
      		<td class="indivisual"><input type="email" maxlength="40" name="mail_id" id="usr_email"/><sup style="color: red">*</sup></td>
      	</tr>
      	</table>
      </div>
      </div>
    </div>
    <div class="column4">
      <div class="title">House Details</div>
      </div>
    </div>
    <div class="column4">
      <div class="title">Admin Details</div>
      </div>
        <!-- end of column four -->
  
  <!-- end of main_content -->
  <div id="footer">
    <%@include file="includes/Footer.jsp" %>
    
</div>
<!-- end of main_container -->
</body>
</html>
