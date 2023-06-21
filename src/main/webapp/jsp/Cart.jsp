<%@page import="org.jsp.danceacademy.dto.Dance"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../css/cart.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<body>
	<%
	List<Dance> list = (List<Dance>) request.getAttribute("list");
	%>


	<div class="border">
		<table class="table">
			<thead>
				<tr class="heading">
					<th scope="col">ID</th>
					<th scope="col">Category Name</th>
					<th scope="col">Image</th>
					<th scope="col">Price</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Dance dance : list) {
				%>
				<tr>
					<th scope="row"><%=dance.getId()%></th>
					<td><%=dance.getFormName()%></td>
					<td>
						<%
						String base64 = Base64.encodeBase64String(dance.getImage());
						%> <img height="50px" width="50px" alt="unknown"
						src="data:image/jpeg;base64,<%=base64%>">
					</td>
					<td><%=dance.getPrice()%> &#8377</td>

				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<a href="/jsp/AdminHome.jsp"><button>Back</button></a>
	</div>

</body>
</html>