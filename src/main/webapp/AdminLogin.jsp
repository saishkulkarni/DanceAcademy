<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./css/login1.css">
</head>
<body>
	<div class="login-form-container">
		<i class="fas fa-time" id="form-close"></i>
		<h1>${pass}</h1>
		<form action="admin/login" method="post">
			<h3>login</h3>
			<input type="email" class="box" placeholder="Email" name="email"> <input
				type="password" class="box" placeholder="Password" name="password"> <input
				type="submit" value="Login Now" class="btn"> <input
				type="checkbox" id="remember"> <label for="remember">Remember
				me</label>
			<p>
				Dont't have an account?<a href="/AdminRegister.jsp">Register Now</a>
			</p>
			<button class="back">
				<a href="/Dance.jsp">Back</a>
			</button>


		</form>
	</div>

</body>
</html>