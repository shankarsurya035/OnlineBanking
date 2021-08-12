<%@ page language="java" pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>EarthlingTwo by Free CSS Templates</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="images/datetimepicker_css.js"></script>
<script type="text/javascript">
function formvalidation(frm)
{
  var nm=frm.name.value;
  var add=frm.address.value;
  var phon=frm.phone.value;
  var email=frm.email.value;
  var ocp=frm.occupation.value;
  var ani=frm.income.value;
  var uname=frm.uname.value;
  var password=frm.password.value;
  var cpwd=frm.pwd.value;
  var date=frm.date.value;
  
  if(nm.length==0)
  {
  alert("enter U R name");
  frm.name.focus();
  return false;
  }
  if(add.length==0)
  {
  alert("ENTER U R ADDRESS");
  frm.address.focus();
  return false;
  }
  if(phon.length==0)
  {
  alert("ENTER VALID NUMBER");
  frm.phone.focus();
  return false;
  }
  if(email.length==0)
  {
  alert("ENTER VALID email");
  frm.email.focus();
  return false;
  }
  if(ocp.length==0)
  {
  alert("ENTER U R OCCUPATION");
  frm.occupation.focus();
  return false;
  }
  if(ani.length==0)
  {
  alert("ENTER U R ANNUAL INCOME");
  frm.income.focus();
  return false;
  }
  if(uname.length==0)
  {
  alert("ENTER U R username");
  frm.uname.focus();
  return false;
  }
  if(password.length==0)
  {
  alert("enter u r password");
  frm.password.focus();
  return false;
  }
  if (cpwd.length==0)
  {
  alert("enter ur cpassword");
  frm.pwd.focus();
  return false;
  }
  if(date.length==0){
  alert("enter ur date");
  frm.date.focus();
  return false;
  }
  if(password!=cpwd)
  {
  alert ("password mismatch");
  return false;
  
  }
  var apos=email.indexOf("@");
  var dpos=email.lastIndexOf(".");
  if(apos<1 || dpos-apos<2)
  {
  alert("invalid email");
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
			<li><a href="#">logout</a> </li> 
 <%
 	String s=(String) request.getSession().getAttribute("ID");
  
  %>
  
 	 <%
 	 if(s!=null)
	
 	 	{
 	 	
 	  %>
			
			 <br/>
         <font size="6"><strong><%=s %></strong></font>
    
      <%} %>
			
			
			
			
			
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
				<form method="post" action="login" onsubmit="return formvalidation(this)">
				<table>
				<tr>
				<td>Name:</td><td><input type="text" name="name"  onkeypress="return CharcterValidation(event)"></td>
				</tr>
				<tr>
				<td>Address:</td><td><input type="text" name="address"></td>
				</tr>
				<tr>
				<td>Phone No:</td><td><input type="text" name="phone" onkeypress="return NumberValidation(event)" maxlength="10"></td>
				</tr>
				<tr>
				<td>Email:</td><td><input type="text" name="email"></td>
				</tr>
				<tr>
				<td>occupation:</td><td><input type="text" name="occupation"></td>
				</tr>
				<tr>
				<td>Annual Income:</td><td><input type="text" name="income" onkeypress="return NumberValidation(event)"></td>
				</tr>
				<tr>
				<td>User Name:</td><td><input type="text" name="uname"></td>
				</tr>
				<tr>
				<td>Password:</td><td><input type="password" name="password"></td>
				</tr>
				<tr>
				<td>Confirm Password:</td><td><input type="password" name="pwd"></td>
				</tr>
				</table>
				<table width="387" height="34">
				<tr>
				<td>Having Any Previous Account ?:</td><td><input type="radio" name="previousaccount" value="Yes">Yes</td>
				<td><input type="radio" name="previousaccount" value="No">No</td>
				</tr>
				<tr>
				<td></td>
				<td></td>
				
				<tr>
				<td>Date Of Registration:</td><td><input type="text" name="date"/><a href="javascript:NewCssCal('date','ddmmmyyyy')"><img src="images/cal.gif" width="16" height="16" alt="Pick a date" style="vertical-align:text-bottom"></a>          </td>
				
				</tr>
				<tr>
				<td>Gender:</td><td><input type="radio" name="gender" value="Male">Male</td>
				<td><input type="radio" name="gender" value="Female"/>Female</td>
				</tr>
				<td><input type="submit" name="reg" value="Submit"/></td>
				
				</table>
				</form>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li><h2><a href="#">Registration</h2>
				
				</li>
				<li>
					<h2>Links</h2>
					<ul>
						<li><span></span><a href="Home.jsp">Home</a></li>
						<li><span></span><a href="Login.jsp">Login</a></li>
						<li><span></span><a href="#">New User</a></li>
						<li><span></span><a href="#">Help</a></li>
					
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
