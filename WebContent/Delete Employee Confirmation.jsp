<jsp:directive.page import="bank.form.*"/>
<html>
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
            <li><a href="#">Login</a></li>
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
				<%LoginForm lg=(LoginForm)request.getAttribute("key");%>
				<input type="hidden" name="Id1" value="<%=lg.getId1() %>"/>
				<tr>
				<td>Name:</td><td><input type="text" name="name" value="<%=lg.getName() %>"></td>
				</tr>
				<tr>
				<td>Address:</td><td><input type="text" name="address" value="<%=lg.getAddress() %>"></td>
				</tr>
				<tr>
				<td>Gender:</td><td><input type="text" name="gender" value="<%=lg.getGender() %>"></td>
				</tr>
				<tr>
				<td>Phone No:</td><td><input type="text" name="phone" value="<%=lg.getPhone() %>"></td>
				</tr>
				<tr>
				<td>Email:</td><td><input type="text" name="email" value="<%=lg.getEmail() %>"></td>
				</tr>
				<tr>
				<td>Designation:</td><td><input type="text" name="designation" value="<%=lg.getDesignation() %>"></td>
				</tr>
				<tr>
				<td>Grade:</td><td><input type="text" name="grade" value="<%=lg.getGrade() %>"></td>
				</tr>
				<tr>
				<td>Salary:</td><td><input type="text" name="sal" value="<%=lg.getSal() %>"></td>
				</tr>
				
				<td><input type="submit" name="ConfirmationDelete" value="ConfirmationDelete"></td>
				</table>
				</form>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li><h2><a href="#">Delete Employee Confirmation</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="#">Add Employee</a></li>
						<li><span></span><a href="#">Edit Employee</a></li>
						<li><span></span><a href="#">Delete Employee</a></li>
						<li><span></span><a href="#">Approve N Reject Customer For</a></li>
						<li><span></span><a href="#">Account</a></li>
						<li><span></span><a href="#">Approve N Reject Customer for</a></li>
						<li><span></span><a href="#">Loan</a></li>
						<li><span></span><a href="#">Delete Customer Account</a></li>
						<li><span></span><a href="#">Add Loan</a></li>
						<li><span></span><a href="#">Edit Loan</a></li>
						<li><span></span><a href="#">Delete Loan</a></li>
					
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
