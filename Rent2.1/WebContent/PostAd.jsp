<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GetOnRent</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/Mainstyle.css" />
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
    <div class="title">Advertisement detail</div>
    <form action="SendAd" method="post">
    	<table>
    		<tr>
    			<td>Enter Tag line for AD:</td>
    			<td><input type="text" name="addesc" id="addescid"/> </td>
    		</tr>
    		<tr>
	    		<td>Ad post Date:</td>
	    		<td><input type="text" name="date"/> </td>
	    	</tr>
	    	<tr><td colspan="2"><input type="submit"/></td></tr>
    	</table>
    	</form>
    	</div>
    <!-- end of column four -->
  </div>
  <!-- end of main_content -->
  <div id="footer">
    <%@include file="includes/Footer.jsp" %>
</div>
<!-- end of main_container -->

</html>
