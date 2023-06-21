<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/admin.css">
    <style type="text/css">
    #rr{
    border: 2px solid transparent;
    border-bottom:2px solid black ;
    background-color: rgb(219, 155, 233);
      height: 80px; 
      display: flex;
      justify-content:space-between;
      align-items: center;
      
  }
  .ma:hover{
background-color: black;
color: white;
border-radius: 6%;
  }

  .ma a{
    text-decoration: none;
    color:black ;
  }
  .ma a:hover{
    background-color: black;
    color: white;
  }




  .button{
    border: 2px solid transparent;
      height: 100px; 
      display: flex;
      justify-content:space-between;
      align-items: center;
  }
  .button a{
    text-decoration: none;
    box-shadow: -1px 0px 10px 0px black;
  }
.button1 a,.button2 a{
  box-shadow: -1px 0px 10px 0px black;
}
  .button1{
    border: 2px solid transparent;
      height: 100px; 
      display: flex;
      justify-content:space-between;
      align-items: center;
      /* box-shadow: -1px 0px 10px 0px black; */
  }
  .button2{
    border: 2px solid transparent;
      height: 100px; 
      display: flex;
      justify-content:space-between;
      align-items: center;
  }

  #aa{
      border: 2px solid transparent;
      height: 60px;
      width: 600px;
      display: flex;
      justify-content:center;
      gap: 80px;
      align-items: center;
  }
  .ma{
      border: 2px solid transparent;
      height: 40px;
      display: inline;
      color: black;
      font-size: 30px;
  }
  .Insert{
    color: white;
    height: 50px;
    width: 300px;
    font-size: 25px;
    background-color: rgb(116, 192, 116);
    border-radius: 4px;
    display: flex;
justify-content: center;
    gap: 30px;
}
.Update{
    color: white;
    height: 50px;
    width: 300px;
    font-size: 25px;
    background-color: lightseagreen;
    border-radius: 4px;
}
.Delete{
    color: white;
    height: 50px;
    width: 300px;
    font-size: 25px;
    background-color: orange;
    border-radius: 4px;
}
    </style>
</head>
<body>
${pass}  ${fail}
    <nav id="rr" class="h-14 bg-gradient-to-r from-purple-500 to-pink-500">

        <div id="aa">
            <div class="ma"><a href="/jsp/Home.jsp">Home</a></div>
         
            <div class="ma">Admin Dashboard</div>
        
            <div class="ma"><a href="/logout">Logout</a></div>
            
        </div>
        
        </nav>

        <div class="button">
      <a href="/jsp/InsertDance.jsp"><input type="submit" value="Insert Dance Form" class="Insert"></a>
    </div>
    
    <div class="button">
      <a href="/admin/viewdance"><input type="submit" value="View Dance Form" class="Insert"></a>
    </div>
    
    <div class="button1">
       <a href="/jsp/UpdateDance.jsp"><input type="submit" value="Update" class="Update"></a>
    </div>
    <div class="button2">
       <a href="/jsp/DeleteDance.jsp"><input type="submit" value="Delete" class="Delete"></a>
    </div>
      
</body>
</html>