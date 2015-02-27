<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GetOnRent</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/Mainstyle.css" />
<link rel="stylesheet" type="text/css" href="css/rent.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
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
    <form method="post" action="RegisterLandlord">
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
    
    <div class="column4">
      <div class="title" id="house_detail">House Details</div>
      
      <div class="outer" id="outer_house">
        <table class="row">
        <tr>
          <td class="indivisual"><label>Build Type </label></td>
          <td class="indivisual">
            <select name="build_type" id="id_house_type">
              <option value="1room">Single Room</option>
              <option value="1rk">1 RK</option>
          <option value="1bhk">1 BHK</option>
          <option value="2bhk">2 BHK</option>
          <option value="3bhk">3 BHK</option>
          <option value="more_bhk">Larger</option>
            </select>
          </td>
        </tr>
        <tr>
          <td class="indivisual"><label>House Type : </label></td>
          <td class="indivisual">
            <select name="House_tyep">
              <option value="individual">Individual</option>
              <option value="individual">Flat</option>
            </select>
          </td>
        </tr>
        <tr>
          <td class="indivisual"><label>House no : </label></td>
          <td class="indivisual"><input type="number" name="house_no" id="id_house_no"/></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Address : </label></td>
          <td class="indivisual"><textarea rows="3" cols="15" name="home_address" id="id_home_address"></textarea></td>
        </tr>
        <tr>
          <td class="indivisual"><label>Taluka : </label></td>
          <td class="indivisual"><input type="text" maxlength="20" name="home_taluka" id="id_home_taluka"/></td>
        </tr>
        <tr>
          <td class="indivisual"><label>District : </label></td>
          <td class="indivisual"><input type="text" maxlength="20" name="home_district" id="id_home_district"/></td>
        </tr>
    <tr>
          <td class="indivisual"><label>Pincode : </label></td>
          <td class="indivisual"><input type="number" maxlength="6" name="home_pin" id="id_home_pin"/></td>
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
