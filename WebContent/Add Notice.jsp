<%@ page language="java" pageEncoding="ISO-8859-1"%>




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
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>EarthlingTwo by Free CSS Templates</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript">
function Formvalid(frm)
{
var subject=frm.subject.value;
var content=frm.content.value;
var account=frm.account.value;
var from=frm.from.value;

if(subject.length==0)
{
alert("enter ur subject");
frm.subject.focus();
return false;
}
if(content.length==0)
{
alert("add ur content");
frm.content.focus();
return false;
}
if(account.length==0)
{
alert("enter u r account no.");
frm.account.focus();
return false;
}
if(from.length==0)
{
alert("enter u r address from");
frm.from.focus();
return false;
}

return true;
}


</script>


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
				<form action="login" method="post" onsubmit="return Formvalid(this)">
				<table>
				<tr>
				<td>Notice Subject:</td><td><input type="text" name="subject"/></td>
				</tr>
				<tr>
				<td>Content:</td><td><input type="text" name="content"/></td>
				</tr>
				<tr>
				<td>Receiver's Account No:</td><td><input type="text" name="account"></td>
				</tr>
				<tr>
				<td>From:</td><td><input type="text" name="from"></td>
				</tr>
				
				<td><input type="submit" name="AddNotice" value="AddNotice"></td>
				</table>
				</form>
			<!--  <bean:write name="loginForm" property="msg"/>-->	
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li><h2><a href="#">Add Notice</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="#">Home</a></li>
						<li><span></span><a href="#">Login</a></li>
						<li><a href="login.do?submit=Noticedetail">Delete Notice </a></li>
						
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

