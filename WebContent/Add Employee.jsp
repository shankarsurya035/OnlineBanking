<%@ page language="java" pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>EarthlingTwo by Free CSS Templates</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
function ValidateForm(frm)
{

var nm=frm.name.value;
var add=frm.address.value;
var phone=frm.phone.value;
var email=frm.email.value;
var designation=frm.designation.value;
var grade=frm.grade.value;
var sal=frm.sal.value;

 if(nm.length==0)
  {
  alert("enter U R name");
  frm.name.focus();
  return false;
  }
  if(add.length==0)
  {
  alert("enter ur address");
  frm.address.focus();
  return false;
  }
  if(phone.length==0)
  {
  alert("enter u r phone no.");
  frm.phone.focus();
  return false;
  }
  if(email.length==0)
  {
  alert("enter u r  valid email");
  frm.email.focus();
  return false;
  }
  
  var apos=email.indexOf("@");
  var dpos=email.lastIndexOf(".");
  if(apos<1 || dpos-apos<2)
  {
  alert("invalid email");
  return false;
  }
  if(designation.length==0)
  {
  alert("enter u r designation");
  frm.designation.focus();
  return false;
  }
  if(grade.length==0)
  {
  alert("enter u r grade");
  frm.grade.focus();
  return false;
  }
  if(sal.length==0)
  {
  alert("enter ur salary");
  frm.sal.focus();
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
			<li><a href="AboutUs.jsp">AboutUs</a></li>
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
				<form method="post" action="login" onsubmit="return ValidateForm(this)" >
				<table>
				<tr>
				<td>Name:</td><td><input type="text" name="name" onkeypress="return CharcterValidation(event)"></td>
				</tr>
				<tr>
				<td>Address:</td><td><input type="text" name="address"></td>
				</tr>
				<tr>
				<td>Gender:</td><td><input type="radio" name="gender" value="Male"/>Male</td>
				<td><input type="radio" name="gender" value="Female"/>Female</td>
				</tr>
				<tr>
				<td>Phone No:</td><td><input type="text" name="phone" onkeypress="return NumberValidation(event)" maxlength="10"></td>
				</tr>
				<tr>
				<td>Email:</td><td><input type="text" name="email"></td>
				</tr>
				<tr>
				<td>Designation:</td><td><input type="text" name="designation"></td>
				</tr>
				<tr>
				<td>Grade:</td><td><input type="text" name="grade"></td>
				</tr>
				<tr>
				<td>Salary:</td><td><input type="text" name="sal" onkeypress="return NumberValidation(event)"></td>
				</tr>
				<tr>
				<td>Department:</td><td><select name="dept"><option value="HR">HR</option><option value="MARKETING">MARKETING</option></select></td>
				</tr>
				
				<td><input type="submit" name="AddEmployee" value="AddEmployee"></td>
				
				</table>
				</form>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li><h2><a href="#">Add Employee</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="#">Add Employee</a></li>
						<li><span></span><a href="#">Edit Employee</a></li>
						<li><span></span><a href="#">Delete Employee</a></li>
			<li><span></span><a href="#">Approve N Reject Customer For Account</a></li>
						<li><span></span><a href="#">Approve N Reject Customer for Loan</a></li>
						<li><span></span><a href="#"></a></li>
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
