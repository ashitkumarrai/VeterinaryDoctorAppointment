<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home</title>
<style>
.cent {
	position: relative;
	text-align: center;
}

.top-left {
	position: absolute;
	top: 15px;
	left: 100px;
	color: black;
	font-size: 40px;
}

.text-block {
	position: absolute;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.99);
	border-radius:30px;
	bottom: 680px;
	left: 100px;
	background-color: darkgray;
	color: white;
	padding-left: 80px;
	padding-right: 80px;
}
 .text-block a	{
 	color: blue;
	 	
 }		
.topnav {
	overflow: hidden;
	background-color: #109f55;
}

.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: rgb(255, 255, 255);
	color: black;
}
 blink {
           color:red;
           -webkit-animation: blink 1s step-end infinite;
           animation: blink 1s step-end infinite
         }
 @keyframes blink {
         67% { opacity: 0 }
        }
	 
</style>
</head>
<body bgcolor="#ADD8E6">
	<jsp:include page="Header.jsp" />

	<div class="topnav" class="containerh">
		<a href="Home.jsp">Home</a> 
		<a href="Contact.jsp">Contact</a> <a href="About.jsp">About</a>
	</div>
	
<marquee style="font-size: 24px; color: red;" onmouseover="this.stop();" onmouseout="this.start();"><blink> &#9733</blink>  Need an appointment ?  <a href="PatientRegister.jsp" style="color: black;"> Get Registered</a>
	</marquee>

	
	<div class="cent">
		<img src="Img/home.jpg" alt="Doctor Appointment System">
		<div class="top-left">Choose your login</div>
		<div class="text-block">
			<a href="AdminLogin.jsp">
				<h2>Admin Login</h2>
			</a> <a href="DoctorLogin.jsp">
				<h2>Doctor Login</h2>
			</a> <a href="PatientLogin.jsp">
				<h2>Patient Login</h2>
				
			</a>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />

</body>

</html>