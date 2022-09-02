<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
<style>
 body {
  background-color : #ADD8E6;
}
.topnav {
	overflow: hidden;
	background-color: #21618C;
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
	background-color: gray;
	color: black;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />

	<div class="topnav" class="containerh">
		<a href="Home.jsp">Home</a> 
		<a href="Contact.jsp">Contact</a> <a href="About.jsp">About</a>
	</div>

	<br>
	<h2>Introduction</h2>
	Veterinary  Hospital and Diagnostic Centre houses skilled vet technicians and office staff who are dedicated to the pet healthcare and lifestyle. Besides various medical services they provide, they also have grooming services for the pets. Additionally, this well-known veterinary center provides client education sessions. The center is equipped with modern testing instruments. 
	They maintain a clean and hygienic atmosphere.

<h3>SPECIALITY:</h3> Urology, Dental Care, Emergency Service, Diabetes Management, Gastroenteritis Treatment, Blood and Urine Test, Grooming, Dog Food and Nutrition, Caesarean Section (C Section), Etc.
<h3>TIMING:</h3> All Days : 9am - 9pm

	
	<jsp:include page="Footer.jsp" />
</body>
</html>