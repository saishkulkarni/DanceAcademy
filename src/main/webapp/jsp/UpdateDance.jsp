<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../css/insert.css">
</head>
<body>
	<nav id="rr">
		<div id="aa">
			<div class="ma">Home</div>

			<div class="ma">
				<a href="http://127.0.0.1:5500/project/admin.html">Admin
					Dashboard</a>
			</div>

		</div>
	</nav>


	<div class="details">
		<h1>Insert Dance Details</h1>
	</div>
	<div class="main">
		<form action="/admin/dance/update" class="form" method="post">
			<div class="Group">
				<label for="Email">Dance Id</label> <input placeholder="" name="id"
					id="Email" type="text">
			</div>
			<div class="Group">
				<label for="Password">New Price</label> <input id="image" name="price"
					type="number">
			</div>
			<div class="Group">
				<button class="btn">Submit</button>
			</div>
		</form>
	</div>

</body>
</html>