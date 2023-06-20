<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/r1.css">	
</head>
<body>
    <section class="container">
        <header>Registration Form</header>
        <form action="admin/signup" class="form" method="post">
          <div class="input-box">
            <label>Full Name</label>
            <input type="text" name="fullName" placeholder="Enter Full Name" required />
          </div>
  
          <div class="input-box">
            <label>Email Address</label>
            <input type="text" name="email" placeholder="Enter Email Address" required />
          </div>
  
          <div class="column">
            <div class="input-box">
              <label>Phone Number</label>
              <input type="number" name="mobile" placeholder="Enter Phone Number" required />
            </div>
            <div class="input-box">
              <label>Birth Date</label>
              <input type="date" name="date" placeholder="Enter birth date" required />
            </div>
          </div>
          <div class="gender-box">
            <h3>Gender</h3>
            <div class="gender-option">
              <div class="gender">
                <input type="radio" value="male" id="check-male" name="gender" checked />
                <label for="check-male">Male</label>
              </div>
              <div class="gender">
                <input type="radio" value="female" id="check-female" name="gender" />
                <label for="check-female">Female</label>
              </div>
        
          <div class="input-box">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter Password" required />
          </div>
          <div class="input-box">
            <label>Confirm Password</label>
            <input type="password" placeholder="Confirm your Password" required />
          </div>
              
          <button>Register Now</button>
          <button><a href="/AdminLogin.jsp">Back</a></button>
        </form>
      </section>
    </body>
  </html>