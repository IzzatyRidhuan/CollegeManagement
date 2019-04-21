<%-- 
    Document   : AdminLogin
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Student Page</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
                <link rel="stylesheet" href="alpha/css/style.css">  
		<!--<link rel="stylesheet" href="alpha/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
	</head>
	<body class="landing">
		<div id="page-wrapper">

			
			<!-- Banner -->
				<h1 id="colorbox" align="center">College Accommodation System</h1>

<div id="box">
    
    
    <h2 color-font:"black"> Student Sign In </h2>
<form id="login1" method="post" action="StudentLogin">
<!------------------------------------[TABLE]------------------------------------>
<table>
	<tr>
		<td width="100" align="right">Student ID :</td> 
		<td><input type="text" name="studentID" id="studentID" value="" placeholder="Enter Username: " /></td> 
	</tr>
	<tr>
		<td width="100" align="right">Password :</td> 
		<td><input type="password" name="studentpassword" id="studentpassword" value="" placeholder="Enter Password: " /></td> 
	</tr>
	
</table>
<!------------------------------------------------------------------------------->
<br><button type="submit" value="Login" /><b>LOGIN</b></button>
</form>
</div>
				
			
	
		<!-- Scripts -->
			<script src="alpha/js/jquery.min.js"></script>
			<script src="alpha/js/jquery.dropotron.min.js"></script>
			<script src="alpha/js/jquery.scrollgress.min.js"></script>
			<script src="alpha/js/skel.min.js"></script>
			<script src="alpha/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="alpha/js/main.js"></script>

	</body>
</html>
