<%@page import="org.jsp.danceacademy.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="./css/dance.css">
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

<Style>
/* #page1{
    top: -20px;
    margin-bottom: 100%;
    height: 600px;
    width: 100%;
} */

/* #carouselExampleCaptions{
    top: -85px;
    margin-bottom: 100%;
    height: 600px;
    width: 100%;
} */
/* body{overflow-x: hidden;} */
#se {
	border: 2px solid transparent;
	height: 100%;
}

.top-av {
	text-align: end;
	height: 40px;
	font-size: 30px;
	background-color: #9b5686;
	color: black;
	padding-right: 10%;
}

span:hover {
	background-color: white;
	color: black;
	border-radius: 5%;
}

#a {
	background-color: #1a1607;
	border: 2px solid #ffffff;
	height: 100px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

#Admin a {
	text-decoration: none;
	color: white;
	border-radius: 3px;
}

#Admin a:hover {
	background-color: white;
	color: black;
}

#a1 {
	border: 2px solid transparent;
	height: 80px;
	width: 500px;
	display: flex;
	justify-content: center;
	gap: 30px;
	align-items: center;
}

#a2 {
	border: 2px solid transparent;
	color: white;
	height: 80px;
	width: 500px;
	display: flex;
	justify-content: center;
	gap: 30px;
	align-items: center;
	font-size: 40px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#a3 {
	border: 2px solid transparent;
	height: 80px;
	width: 600px;
	display: flex;
	justify-content: center;
	gap: 50px;
	align-items: center;
}

#a0 a {
	border: 2px solid transparent;
	height: 30px;
	display: flex;
	color: white;
	/* font-size: larger; */
	font-size: 20px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-weight: bold;
}

#a0 a {
	text-decoration: none;
}

#a0 a:hover {
	background-color: white;
	color: black;
	border-radius: 4%;
}

#a4 {
	border: 2px solid transparent;
	height: 80px;
	width: 200px;
	display: flex;
	justify-content: center;
	gap: 50px;
	align-items: center;
}

#b a {
	border: 2px solid transparent;
	height: 30px;
	display: flex;
	color: white;
	font-size: larger;
	font-size: 20px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-weight: bold;
}

#b a:hover {
	background-color: white;
	color: black;
	border-radius: 4%;
}

#b a {
	text-decoration: none;
}

/* ...2nd page...... */
h6 {
	border: 1px solid transparent;
	color: black;
	font-size: x-large;
	font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI',
		Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue',
		sans-serif;
	font-weight: bold;
	text-align: center;
	letter-spacing: 1px;
	height: 20px;
}

.dance {
	border: 1px solid transparent;
	height: 500px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

.d1 button {
	background-color: rgb(61, 79, 185);
	margin-top: 4%;
	margin-left: 10%;
	margin-right: 10%;
	padding: 10px 10px;
	height: 40px;
	width: 220px;
	font-size: large;
	color: white;
	align-items: center;
	display: flex;
}

.d1 div, img {
	margin-top: 6%;
	text-align: center;
	font-size: larger;
	font-size: x-large;
}

.d1, .d2, .d3, .d4 {
	display: block;
	justify-content: center;
	gap: 30px;
	align-items: center;
	border: 1px solid black;
	height: 360px;
	width: 290px;
	padding-bottom: 2px;
	/* border-bottom-color: rgb(61, 79, 185); */
	border-bottom: 4px solid rgb(61, 79, 185);
	border-top: 4px solid goldenrod;
	box-shadow: -1px 0px 10px 0px black;
}

.d1>img {
	margin-left: 10%;
}

.dance1 {
	border: 1px solid transparent;
	height: 400px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

.dance2 {
	border: 1px solid transparent;
	height: 500px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

button a {
	text-decoration: none;
	color: white;
	width: 50%;
	margin: 0px auto;
}

button a:hover {
	color: white;
}

/* ........3rd page...... */
.side {
	display: flex;
	justify-content: center;
	text-align: center;
	right: 10px;
	gap: 30px;
	top: 40px;
	border-radius: 20px;
}

.side4 {
	font-weight: 600;
	margin-top: 100px;
	font-size: 20px;
	font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI',
		Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue',
		sans-serif;
}

.side2 {
	display: flex;
	justify-content: center;
	text-align: center;
	right: 10px;
	gap: 30px;
	top: 40px;
}

.side5 {
	font-weight: 600;
	margin-top: 100px;
	font-size: 20px;
	font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI',
		Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue',
		sans-serif;
}

.side1, .side3 {
	border-radius: 50%;
	box-shadow: -1px 0px 10px 3px black;
}

h2 {
	text-align: center;
	font-weight: 700;
}

/* ...........4th page............. */
.footer {
	background-color: #45536e;
	color: black;
	height: 300px;
	width: 100%;
	margin-top: 40px;
}

.footer, .footer a {
	color: #999;
	font-size: 20px;
	color: white;
}

.footer p {
	margin-bottom: 1.5rem;
}

.footer .footer-cols {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-gap: 6rem;
}

.footer li {
	line-height: 1.9;
	font-size: 20px;
	font-weight: 400;
	position: relative;
	top: 10px;
	left: 90px;
	gap: 10px;
}

.footer .lang-select {
	margin-top: 2rem;
	color: #999;
	background-color: #000;
	background-image: none;
	border: 1px solid #333;
	padding: 2rem 1.4rem;
	border-radius: 5px;
}

h3 {
	margin-top: 10px;
	margin-bottom: 20px;
	margin-left: 40px;
}

.icon1 {
	border-radius: 100px;
	gap: 3px;
	position: relative;
	left: 70px;
	top: -30px;
}

#about1 {
	height: 300px;
	width: 300px;
	/* justify-content:left ;
  display: flex; */
}

#abouttext {
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	font-size: small;
	display: flex;
	overflow: right;
}
</Style>

</head>
<body>
	<h1>${pass}</h1>
	<h1>${fail }</h1>
	<div class="top-av" style="width: 100%; border: 2px solid black;">
		<span id="Admin"><a href="/jsp/AdminLogin.jsp">Admin</a></span>
	</div>
	<section id="se">
		<nav id="a">
			<div id="a1">
				<div id="a2">Amazing Dance Academy</div>
			</div>
			<div id="a3">
				<div id="a0">
					<a href="/jsp/Home.jsp">Home</a>
				</div>
				<div id="a0">
					<a href="#page2">Our Services</a>
				</div>
				<div id="a0">
					<a href="#page3">About</a>
				</div>
				<div id="a0">
					<a href="">Contact Us</a>
				</div>
			</div>
			<div id="a4">
				<%
				Student student=(Student)session.getAttribute("student");
				if (student == null) {
				%>
				<div id="b">
					<a href="/jsp/StudentRegister.jsp">Register</a>
				</div>
				<div id="b">
					<a href="/jsp/StudentLogin.jsp">Login</a>
				</div>
				<%
				} else {
				%>
				<div id="b">
					<a href="/student/dance?id=<%=student.getId()%>">View Joined Courses</a>
				</div>
				<div id="b">
					<a href="/logout">Logut</a>
				</div>
				<%
				}
				%>
			</div>
		</nav>
	</section>
	<div id="nextpage"
		style="position: relative; bottom: 90px; z-index: -1;">
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../images/image1.jpeg" class="d-block w-100" alt="..."
						height="600px" width="600px">
					<div class="carousel-caption d-none d-md-block">
						<h1>WEL COME TO AMAZING DANCE ACADEMY</h1>
						<p>
						<h3>A place where Your Dreame Get Wings.</h3>
						</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/i2.jpeg" class="d-block w-100" alt="..."
						height="600px" width="600px">
					<div class="carousel-caption d-none d-md-block">
						<h1>EXCELLENT SUPPORT</h1>
						<h3>Get Guidance From Skilled Instrction</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/i3.jpeg" class="d-block w-100" alt="..."
						height="600px" width="600px">
					<div class="carousel-caption d-none d-md-block">
						<h1>TALENTED INSTRUCTORS</h1>
						<h3>Learn From Our Experience Instructors</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/kathakali.jpg" class="d-block w-100" alt="..."
						height="600px" width="600px">
					<div class="carousel-caption d-none d-md-block">
						<h1>Dance is the hidden language of the soul</h1>
						<h3>There are shortcuts to happiness and dancing is one of
							them</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/i5.jpeg" class="d-block w-100" alt="..."
						height="600px" width="600px">
					<div class="carousel-caption d-none d-md-block">
						<h1>DANCE</h1>
						<h3>Express Yourself In Dance</h3>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	</div>
	<!-- below carousel -->
	<div id="page2">
		<h6>DANCE CATEGORIES</h6>
		<div class="dance">
			<div class="d1">
				<img id="classical" src="../images/indian classical.jpg" alt=""
					height="200px" width="220px" class="image1">
				<div class="text">Indian classical</div>
				<button>
					<a href="/bookdance?name=Indian classical">Eroll Now</a>
				</button>
			</div>
			<div class="d1">
				<img id="classical" src="../images/bharthnatyam.jpg" alt=""
					height="200px" width="220px" class="image1">
				<div class="text">Bharthnatyam</div>
				<button>
					<a href="/bookdance?name=Bharthnatyam">Eroll Now</a>
				</button>
			</div>
			<div class="d1">
				<img id="classical" src="../images/kathakali.jpg" alt=""
					height="200px" width="220px" class="image1">
				<div class="text">Kathakali</div>
				<button>
					<a href="/bookdance?name=Kathakali">Eroll Now</a>
				</button>
			</div>
			<div class="d1">
				<img id="classical" src="../images/kathak.jpg" alt="" height="200px"
					width="220px" class="image1">
				<div class="text">Kathak</div>
				<button>
					<a href="/bookdance?name=Kathak">Eroll Now</a>
				</button>
			</div>
		</div>
		<section class="box2">
			<div class="dance1">
				<div class="d1">
					<img id="classical" src="../images/break dance.jpg" alt=""
						height="200px" width="220px" class="image1">
					<div class="text">Break Dance</div>
					<button>
						<a href="/bookdance?name=Break Dance">Eroll Now</a>
					</button>
				</div>
				<div class="d1">
					<img id="classical" src="../images/hip hop dance.jpg" alt=""
						height="200px" width="220px" class="image1">
					<div class="text">HipHop</div>
					<button>
						<a href="/bookdance?name=HipHop">Eroll Now</a>
					</button>
				</div>
				<div class="d1">
					<img id="classical" src="../images/ballet dance.jpg" alt=""
						height="200px" width="220px" class="image1">
					<div class="text">Ballet</div>
					<button>
						<a href="/bookdance?name=Ballet">Eroll Now</a>
					</button>
				</div>
				<div class="d1">
					<img id="classical" src="../images/contemprory.webp" alt=""
						height="200px" width="220px" class="image1">
					<div class="text">Contemprory</div>
					<button>
						<a href="/bookdance?name=Contemprory">Eroll Now</a>
					</button>
				</div>
			</div>
		</section>
		<section class="box3">

			<!-- ..............2rdpage........ -->
			<div id="page3">
				<h2>ABOUT DANCE</h2>
				<div class="side">
					<div>
						<img src="../images/about1.jpg" alt="" height="400px"
							width="700px" class="side1">
					</div>
					<div class="side4">The Dance Academy, established since
						October 1988 aims to provide students with a professional dance
						curriculum exposing them to well structured training programmes in
						the various dance disciplines. Students are encouraged to develop
						their dance skills and performance qualities to the
						maximum.Students in classical ballet, girls and boys, can enroll
						as of the age of three years. The school follows the Royal Academy
						of Dance London Syllabus. At the tender age of three, classes are
						structured with a 'recreational' focus.</div>
				</div>
				<div class="side2">
					<div class="side5">The Dance Academy's firm belief that
						'Dancing is fun' and 'healthy' is greatly witnessed by the variety
						of disciplines taught in the school for all ages. The 'fun'
						component is instrumental in nurturing in the students a passion
						for dance.The professional staff play a vital role in fostering
						the 'fun' element in their instruction. This cultivates in the
						student an appreciation of dance,in its many forms, and its
						performance. It also encourages the student to develop poise and
						self confidence as well as developing an awareness of fitness, -
						the 'healthy' aspect of dance.</div>
					<div>
						<img src="../images/about2.jpg" alt="" height="400px"
							width="700px" class="side3">
					</div>
				</div>


			</div>
			<!-- ......4th page..... -->
			<footer class="footer">
				<!-- <p></p>  -->
				<div class="footer-cols">
					<ul type="none">

						<li><h3>Dance</h3></li>
						<li>Dancing is our form of art</li>
						<li>Crafting our passion through dancing. We dance until we
							drop</li>

					</ul>
					<ul type="none">
						<li><h3>Opening Times</h3></li>
						<li>Monday-Friday:10.00AM to 02.00PM</li>
						<li>Saturday:10.00AM to 01:00PM</li>
					</ul>
					<ul type="none">
						<li>
							<h3>Contact Us</h3>
						</li>
						<li>Tel:+91 993878273</li>
						<li>Email:danceacademy@gmail.com</li>
						<li>Address:behind SB University Near Hp petrol Pump Vidya
							nagar</li>
					</ul>
					<ul type="none">
						<li><h3>Follow</h3></li>
						<li><img src="../images/paru2.jpg" alt="" height="30px"
							width="30px" class="icon1"></li>
						<li><img src="../images/ig1.webp" alt="" height="30px"
							width="30px" class="icon1"></li>
						<li><img src="../images/youtube1.jpg" alt="" height="30px"
							width="30px" class="icon1"></li>
						<li><img src="../images/linkedin1.jpg" alt="" height="30px"
							width="30px" class="icon1"></li>
						<li><img src="../images/twitter1.jpg" alt="" height="30px"
							width="30px" class="icon1"></li>
</body>
</html>
