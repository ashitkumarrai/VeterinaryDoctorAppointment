<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details</title>

<style type="text/css">
.container {
	border-radius: 20px;
	background-color: #f2f2f2;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	padding: 2px;
}

  .container th	{
	     	width: 140px;
	     	background-color:#2874A6;
	     	height: 25px;
	     	color: white;
	     	font-size: 20px;
  		   }	
	.container td	{
		   		text-align: center;
		   		font-size:20px ;
		   }
	.container tr:nth-child(even)	{
		background-color: white;
		}


		.roundbox 	{
			display: inline-block;
			height: 40px;
			background-color: rgb(50, 108, 195);
			width: 180px;
			text-align: center;
			line-height: 40px;
			border-radius:30px;
			cursor: pointer;
			text-decoration: none;
		color:white;
		}
  .welcome	{
   		display: inline-block;
   		float: right;
   		width: 365px;
		line-height: 40px;
   		border-radius:30px;
  	 	cursor: pointer;
    }
     body {
  background-color : #ADD8E6;
}
</style>
</head>

	<%@page import="beans.PatientBean,daofiles.PatientDao,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<jsp:include page="Header.jsp" />
	<br>
	<div class="container">
	<ul>
		<a href="AdminHome.jsp"><li class="roundbox">Doctor's Details</li></a>
		<a href="AddDoctor.jsp"><li class="roundbox">Add Doctor</li></a>
		<a href="AdPatientDetails.jsp"><li class="roundbox">Patient Details</li></a>
		<a href="Logout"><li class="roundbox">Logout</li></a>
		<li class="welcome"><marquee>
		<% 

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        response.setHeader("Pragma", "no-cache");	  //HTTP 1.0    
        response.setHeader("Expires", "0");  	//	Proxies 	
				
			       if(session.getAttribute("email")==null){
					response.sendRedirect("AdminLogin.jsp");
					}
			       else if(session!=null)	{
					String email=(String) session.getAttribute("email");
					out.println("Hello ,  "+email);
					}
				
		
				%> </marquee></li>
	</ul>
			
		<%  
			List<PatientBean> list=PatientDao.getAllPatient();  
			request.setAttribute("list",list);  
		%>  
		<center>
			
			<table border="1px solid black">
			<caption><h1>Patient Detail's
			</h1>
			</caption>
				<tr>
				<th>Id</th>
				<th>Pet Name</th>
				<th>Age</th>
				<th>Animal Species</th>
				<th>Onwer Name</th>			
				<th>Owner Contact</th>
				<th>Email</th>	
				</tr>
				<c:forEach items="${list}" var="p">  
				<tr>
				<td>${p.getId()}</td>
				<td>${p.getName()}</td>
				<td>${p.getAge()}</td>
				<td>${p.getAnimalSpecies()}</td>
				<td>${p.getOwnerName()}</td>
				<td>${p.getOwnerContactNum()}</td>
				<td>${p.getEmail()}</td>
				  
				</tr>
				</c:forEach>
			</table>
		</center>
		<br>
	</div>
	<br>
	<jsp:include page="Footer.jsp" />
</body>
</html>