<%@ page language="java" pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>EarthlingTwo by Free CSS Templates</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
/*function formvalidation(frm)
{
var uname=frm.uname.value;
var pass=frm.password.value;

if(uname.length==0)
{
alert("enter user name");
frm.uname.focus();
return false;
}
if(pass.length<4)
{
alert("enter password within 8 character");
frm.password.focus();
return false;
}
return true;
}*/
</script>




</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1>
			
			<font color="#001177">Online Banking</font></h1>
			
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li><a href="#">AboutUs</a></li>
			<li><a href="#">ContactUs</a></li>
			<li><a href="#">Feedback</a></li>
			<li><span></span><a href="Registration.jsp">New User</a></li>
			<li><span></span><a href="Home.jsp">Home</a></li>
			<li><a href="#">Notice Board</a></li>
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
				<form method="post"   action="login"  onsubmit="return formvalidation(this)">
				<table>
				<tr>
				<td>Username:</td><td><input type=text name="uname"/></td>
				</tr>
				<tr>
				<td>Password:</td><td><input type=password name="password"/></td>
				</tr>
				</table>
				<table width="387" height="34">
				<tr>
				<td>Type:</td><td><input type="radio" name="type" value="customer"/>Customer</td>
				<td><input type="radio"  name="type" value="admin"/>Admin</td>
				</tr>
				<tr>
				<td></td>
				<td></td>
				<td><input type="submit" name="Login" value="Login"/></td>
				</tr>
				</table>
				</form>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2><a href="#">Login page</h2>
				
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
