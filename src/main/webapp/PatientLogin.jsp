<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient login</title>
<style>

/* Full-width input fields */
.reg input[type=email], input[type=password] {
	width: 300px;
	height: 30px;
	padding: 10px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
	border-radius:15px; 
}
input[type=email]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}
/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border-radius:15px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}
/* Float signup buttons width */
.signupbtn {
	float: left;
	width: 50%;
}
/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

.reg table {
	width: 300px;
	height: 35px;
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
<body bgcolor="#ADD8E6">
	<jsp:include page="Header.jsp" />
	<div class="topnav" class="containerh">
		<a href="Home.jsp">Home</a> 
		<a href="Contact.jsp">Contact</a> <a href="About.jsp">About</a>
	</div>
	<script>
function myFunction() {
    var x = document.getElementById("mypassword");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>

		<center>
			<h1>Patient Login</h1>
		
		<hr>
		<div class="reg">
			<form action="PatientLogin" method="post">
				<table>
					<tr>
						<td><b>Email</b></td>
						<td><input type="email" placeholder="Enter Email" name="email"
							required></td>
					</tr>
					<tr>
						<td><b>Password</b></td>
						<td><input type="password" placeholder="Enter Password"
							name="password" required id="mypassword"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" onclick="myFunction()">Show
							Password</td>
					</tr>

					<tr>
						<td></td>
						<td><button class="clearfix" type="submit" class="signupbtn">Login</button></td>
					</tr>
					<tr>
					<td></td>
						<td><a href="PatientRegister.jsp" style="text-decoration: none; text-color: white;">
				<button	type="button" class="clearfix" class="signupbtn">Get Register</button></a></td>
					</tr>
				</table>
			</form>
			
		</div>
	</center>
	
	<jsp:include page="Footer.jsp" />

</body>
</html>