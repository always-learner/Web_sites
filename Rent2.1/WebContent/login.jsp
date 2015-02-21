<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BuildUp Real Estate - Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="css/Mainstyle.css" />
<link rel="stylesheet" type="text/css" href="css/admin.css" />
</head>
<body>
<div id="main_container">
  <div id="header">
    <%@include file="includes/Header.jsp" %>
  </div>
  <div id="main_content">
    <div class="admin_login">
      <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>Admin</span> login</div>
          <div class="form">
            <div class="form_row">
              <label class="left">Username: </label>
              <input type="text" class="form_input"/>
            </div>
            <div class="form_row">
              <label class="left">Password: </label>
              <input type="password" class="form_input"/>
            </div>
            <div class="form_row">
            <label class="left">User Role</label>
            <select id="usr_type" style="width: 160px;margin-left: -10px">
            	<option value="Admin">Admin</option>
            	<option value="Landlord">Landlord</option>
            	<option value="Tenant" selected="selected">Tenant</option>
            </select>
            </div>
            <div style="float:right; padding:10px 25px 0 0;">
            	<label style="margin-right: 20px"><a href="register.jsp">New User! Sign up Now</a></label>
                <input type="image" src="images/login.gif"/>
            </div>
          </div>
        </div>
        <div class="bottom_left_box"> </div>
      </div>
    </div>
  </div>
  <!-- end of main_content -->
  <div id="footer">
  <%@include file="includes/Footer.jsp" %>
  </div>
</div>
<!-- end of main_container -->
</body>
</html>
