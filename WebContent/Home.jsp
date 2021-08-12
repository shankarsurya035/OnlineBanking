
<html>
<head>
<title>Surya Shankar</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

	<script type="text/javascript">
function submitForm()
{
window.document.submitFrm.submit();
}
</script>
</head>
<body >
	<%
		String output = (String) (request.getAttribute("strOut"));
		String hookUrl = (String) (request.getAttribute("hookUrl"));
	%>
	<form method="post" action="login.jsp" name="submitFrm" 
		id="submitFrm">
		<input type="hidden" name="cxml-urlencoded" value='<%=output%>' />
	</form>
	<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		session.removeValue("domineName");
		session.invalidate();
	%>
	
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><b><font color="#FF0000">Online Banking</font></b></h1>
			
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li><a href="#">AboutUs</a></li>
			<li><a href="#">ContactUs</a></li>
			<li><a href="#">Feedback</a></li>
			<li><a href="#">What's New</a></li>
			<li><a href="#">Notice Board</a></li>
		</ul>
	</div>
	<!-- end #menu -->
		<div id="page">
		<div id="content">
			<div id="banner"><img src="images/img16.jpg" alt="" /></div>
			<div class="post">
				<h2 class="title">
				<p class="meta"></p>
				<div class="entry">
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2><a href="#">Home Page</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="#">Home</a></li>
						<li><span></span><a href="Login.jsp">Login</a></li>
						<li><span></span><a href="Registration.jsp">New User</a></li>
						<li><span></span><a href="#">Help</a></li>
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
		<h2 style="color:white";>Volutpat quisque sed et aliquam</h2>
		<p style="color:white";><strong>Maecenas ut ante</strong> eu velit laoreet tempor accumsan vitae nibh. Aenean commodo, tortor eu porta convolutpat elementum. Proin fermentum molestie erat eget vehicula. Aenean eget tellus mi. Fusce scelerisque odio quis ante bibendum sollicitudin. Suspendisse potenti. Vivamus quam odio, facilisis at ultrices nec, sollicitudin ac risus. Donec ut odio ipsum, sed tincidunt. <a href="#">Learn more&#8230;</a></p>
	</div>
	<div class="column2">
		<ul style="color:white"; class="list">
			<li><a href="#">Tempor accumsan vitae sed nibh dolore</a></li>
			<li><a href="#">Aenean commodo, tortor eu porta veroeros</a></li>
			<li><a href="#">Fermentum molestie erat eget consequat</a></li>
			<li><a href="#">Donec vestibulum interdum diam etiam</a></li>
			<li><a href="#">Vehicula aenean eget sed tellus blandit</a></li>
		</ul>
	</div>
</div>
<div id="footer">
	<p style="color:white";> (c) 2021 Sitename.com. Design by <a href="#">SURYA SHANKAR</a> and <a href="http://www.freecsstemplates.org">Free CSS Templates</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
