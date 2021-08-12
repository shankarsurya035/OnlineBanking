<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>EarthlingTwo by Free CSS Templates</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
function formvalidation(frm)

{
var cat=frm.category.value;
var rate=frm.rate.value;
var date=frm.date.value;
var amount=frm.amount.value;

if(cat.length==0)
{
alert("enter the category");
frm.category.focus();
return false;
}
 
if(rate.length==0)
{
alert("enter the rate");
frm.rate.focus();
return false;
}
if(date.length==0)
{
alert("enter u r limited year");
frm.date.focus();
return false;
}
if(amount.length==0)
{
alert("enter the amount");
frm.amount.focus();
return false;
}

return true;
}

 //CharcterValidation(event)
function CharcterValidation(event)
{
var charcode=event.keyCode;
//alert("hello nk "+charcode);
if(charcode<65 || charcode>90 && charcode<97 || charcode>122 )
{ 
alert("enter charcter only");
return false;
}
return true;
}
//NumberValidation(event)

function NumberValidation(event)
{
   var charcode=event.keyCode;
   if(charcode<48 || charcode>57)
   {
   alert("enter numbers only");
   
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
				<form action="login" onsubmit="return formvalidation(this)">
				<table>
				<tr>
				<td>Category:</td><td><input type="text" name="category" onkeypress="return CharcterValidation(event)"></td>
				</tr>
				<tr>
				<td>Rate Of Intrest:</td><td><input type="text" name="rate" onkeypress="return NumberValidation(event)"></td>
				</tr>
				<tr>
				<td>Maximum Time Limit(In Years):</td><td><input type="text" name="date" onkeypress="return NumberValidation(event)"></td>
				</tr>
				<tr>
				<td>Maximum Loan Amount(In Lakh):</td><td><input type="text" name="amount" onkeypress="return NumberValidation(event)"></td>
				</tr>
				
				<td><input type="submit" name="AddLoan" value="AddLoan"></td>
				</table>
				</form>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li><h2><a href="#">Add Loan</h2>
				
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
						
						<li><span></span><a href="#">Add Loan</a></li>
						<li><span></span><a href="login?EditLoan=EditLoan">Edit Loan</a></li>
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
