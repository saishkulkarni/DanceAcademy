<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<style>
.login-form-container {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 10000;
	min-height: 100vh;
	width: 100%;
	background: rgb(195, 195, 243);
	display: flex;
	justify-content: center;
	align-items: center;
}

.login-form-container form {
	border: 1px solid black;
	box-shadow: -1px 0px 10px 0px black;
	height: 450px;
	margin: 1rem;
	padding: 0.1rem 1rem;
	border-radius: .5rem;
	background: #ffff;
	width: 25rem;
	align-items: center;
}

.login-form-container form h3 {
	font-size: 2rem;
	color: rgb(15, 119, 151);
	text-transform: uppercase;
	text-align: center;
	/* padding: 0rem 0; */
}

.login-form-container form .box {
	width: 320px;
	padding: 0.8rem;
	font-size: 1.0rem;
	color: #333;
	margin: .6rem 0;
	border: .1rem solid rgba(0, 0, 0, .3);
	text-transform: none;
}

.login-form-container form .box:focus {
	border-color: var(--orange);;
}

.login-form-container form #remember {
	margin: 1rem 0;
}

.login-form-container form label {
	font-size: 1.2rem;
}

.btn {
	display: inline-block;
	margin-top: rem;
	background: var(--orange);
	color: #ffff;
	padding: 0.2rem 2rem;
	border: 2rem solid var(--orange);
	cursor: pointer;
	font-size: 1.5rem;
}

.btn {
	background-color: rgba(130, 106, 251);
	color: white;
}

.btn:hover {
	background-color: rgb(88, 56, 250);
}

.login-form-container form .btn {
	display: block;
	width: 88%;
}

.login-form-container form p {
	padding: .5rem 0;
	font-size: 1.4rem;
	color: black;
}

.login-form-container form p a {
	color: lightslategray;
}

.login-form-container form p a:hover {
	color: blue;
	text-decoration: underline;
}

.login-form-container form #form-close {
	position: absolute;
	top: 2rem;
	right: 3rem;
	font-size: 5rem;
	color: #ffff;
	cursor: pointer;
}

button a {
	height: 200px;
	width: 200px;
}

.back {
	height: 35px;
	width: 350px;
	color: white;
	background-color: rgba(130, 106, 251);
}
</style>

</head>
<body>
	<div class="login-form-container">
		<i class="fas fa-time" id="form-close"></i>
		<h1>${pass}  ${fail}</h1> <%--This is the Response Line --%>
		<form action="/admin/login" method="post">
			<h3>login</h3>
			<input type="email" class="box" placeholder="Email" name="email">
			<input type="password" class="box" placeholder="Password"
				name="password"> <input type="submit" value="Login Now"
				class="btn"> <input type="checkbox" id="remember"> <label
				for="remember">Remember me</label>
			<p>
				Dont't have an account?<a href="/jsp/AdminRegister.jsp">Register Now</a>
			</p>
			<button class="back">
				<a href="/jsp/Home.jsp">Back</a>
			</button>


		</form>
	</div>

</body>
</html>