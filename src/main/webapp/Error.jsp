<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<style>
.top-left {
    position: absolute;
    top: 15px;
    left: 50px;
	color: red;
	font-size: 30px;
	font-weight: bold; 
}	
blink {
           color:red;
           font-size:30px;
           -webkit-animation: blink 1s step-end infinite;
           animation: blink 1s step-end infinite
         }
 @keyframes blink {
         67% { opacity: 0 }
        }

</style>
</head>
<body >
<div >
<img src="Img/error.jpg" alt="Error image" style="width:100%; height:620px">
  <div class="top-left"><blink>Email or Password incorrect !!! <br> Go to Login Page</blink></div>
  </div>



<audio hidden="true" autoplay loop controls>
    <source src="sound/Buzzer.mp3">
</audio>

</body> 	
</html>