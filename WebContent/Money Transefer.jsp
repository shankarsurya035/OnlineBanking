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
			<li><a href="UserHome.jsp">Home</a></li>
			<li><a href="#">Login</a></li>
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
				<tr>
				<td>Enter source Account No:</td><td><input type="text" name="saccno" ></td>
				</tr>
				<tr>
				<td>Enter Destinated Account No:</td><td><input type="text" name="daccno"></td>
				</tr>
				<tr>
				<td>Amount To be Transeffered:</td><td><input type="text" name="amount"></td>
				</tr>
				
				
				<tr>
				<td>
				</td>
				<td><input type="submit" name="Transfer" value="Transfer"></td>
				</tr>
				<%if(lg!=null){
				System.out.println("in jsp"+lg.getBalance());
				System.out.println("in jsp"+lg.getMsg());
				
				 %>
				<tr>
				<td>Your Current Account Balance is:</td><td><input type="text" name="balance" value="<%=lg.getBalance() %>"></td></tr>
				<tr><td>Your money transfer is:</td><td><input type="text" name="msg" value="<%=lg.getMsg() %>"></td>
				</tr>
				<% }else {%>
				<tr>
				</tr>
				<%} %>
				</table>
				</form>
				<font color="red"></font>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			
					<ul>
				<li>
					<h2><a href="#">Money Transfer</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="#">Delete Account</a></li>
						<li><span></span><a href="#">Cash Deposite</a></li>
						<li><span></span><a href="#">Cash Withdrawal</a></li>
						<li><span></span><a href="#">View Balance</a></li>
						<li><span></span><a href="#">Money Transefer</a></li>
						<li><span></span><a href="#">Apply For Loan</a></li>
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