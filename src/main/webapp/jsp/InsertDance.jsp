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
         
            <div class="ma"> <a href="http://127.0.0.1:5500/project/admin.html">Admin Dashboard</a></div>
            
        </div>
        </nav>


    <div class="details">
        <h1>Insert Dance Details</h1>
    </div>
    <div class="main">
        <form action="/admin/dance" class="form" method="post" enctype="multipart/form-data">
             <div class="Group">
                 <label for="Email">Dance Form Name</label>
                 <input placeholder="" name="formName" id="Email" type="text">
             </div>
             <div class="Group">
                <label for="Password">Price</label>
                <input id="image" name="price" type="number">
            </div>
            <div class="Group">
                <label for="Password">Image</label>
                <input id="image" name="pic" type="file">
            </div>

             <div class="Group">
                 <button class="btn">Submit</button>
             </div>
     </form>
     </div>
    
</body>
</html>