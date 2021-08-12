<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<jsp:directive.page import="bank.form.*"/>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : EarthlingTwo  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20090918
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>EarthlingTwo by Free CSS Templates</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><font color="#001177">Online Banking</font></h1>
			
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li><a href="#">AboutUs</a></li>
			<li><a href="#">ContactUs</a></li>
			<li><a href="#">Feedback</a></li>
			<li><a href="#">What's New</a></li>
			 <li><a href="login?Logout=Logout">Logout</a></li>
			<li><a href="Admin Home.jsp">Home</a></li>
            
		</ul>
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="content">
			<div id="banner"><img src="images/img07.jpg" alt="" /></div>
			<div class="post">
				<h2 class="title">
				<p class="meta"></p>
				<div style="font-size:20px">
				<form action="login" >
				<table>
				<%
				LoginForm lg=(LoginForm)request.getAttribute("key");
				if(lg!=null)
				System.out.println("helo");%>
   <% ArrayList<String> id =(ArrayList<String>)session.getAttribute("ID4");
   
   %>
 <tr><td><font color="blue" size="5">Choose Notice No Here </font></td><td><select name="noticeid">
 <% 
 for(int i=0;i<id.size();i++)
 {
 %>
 <option value="<%=id.get(i)%>"><%=id.get(i)%></option>
 <%} %></select></td></tr>
  
   <tr><td colspan="2" align="right"><input type="submit" name="ViewNoticeDetails" value="ViewNoticeDetails"/></td></tr>
<%if(lg!=null){System.out.println("entry"); %>  
  <tr><td>Subject</td><td><input type="text" name="subject" value="<%=lg.getSubject()%>"/></td></tr> 
<tr><td>Content</td><td><input type="text" name="content" value="<%=lg.getContent()%>"/></td></tr> 
    <tr><td>Receiver Account No</td><td><input type="text" name="account" value="<%=lg.getAccount()%>" /></td></tr> 
    <tr><td>Notice Date</td><td><input type="text" name="date" styleId="ldate" readonly="true" size="20" value="<%=lg.getDate() %>">&nbsp;<img src="cal/cal.gif" alt="" onclick="GetDate('ldate');"/></td></tr>
  <tr><td colspan="2" align="right"><input type="submit" name="DelNotice" value="DelNotice"/></td></tr><%}else{} %>
</table>
</form>

				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li><h2><a href="#">Delete Notice</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="#">Home</a></li>
						<li><span></span><a href="#">Login</a></li>
						<li><span></span><a href="#">Add New Notice</a></li>
						
				</li>
				<li>
					
					<ul>
						
					</ul>
				</li>
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer-content">
	<div class="column1">
		<h2>Volutpat quisque sed et aliquam</h2>
		<p><strong>Maecenas ut ante</strong> eu velit laoreet tempor accumsan vitae nibh. Aenean commodo, tortor eu porta convolutpat elementum. Proin fermentum molestie erat eget vehicula. Aenean eget tellus mi. Fusce scelerisque odio quis ante bibendum sollicitudin. Suspendisse potenti. Vivamus quam odio, facilisis at ultrices nec, sollicitudin ac risus. Donec ut odio ipsum, sed tincidunt. <a href="#">Learn more&#8230;</a></p>
	</div>
	<div class="column2">
		<ul class="list">
			<li><a href="#">Tempor accumsan vitae sed nibh dolore</a></li>
			<li><a href="#">Aenean commodo, tortor eu porta veroeros</a></li>
			<li><a href="#">Fermentum molestie erat eget consequat</a></li>
			<li><a href="#">Donec vestibulum interdum diam etiam</a></li>
			<li><a href="#">Vehicula aenean eget sed tellus blandit</a></li>
		</ul>
	</div>
</div>
<div id="footer">
	<p> (c) 2009 Sitename.com. Design by <a href="http://www.nodethirtythree.com">nodethirtythree</a> and <a href="http://www.freecsstemplates.org">Free CSS Templates</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
