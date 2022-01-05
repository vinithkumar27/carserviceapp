<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Service Center</title>
    <link rel="stylesheet" href="carser.css">
<style>
*{
 margin: 0;
 padding: 0;   
}
body
{
    height: 100vh;
   background: url(https://www.volvocars.com/images/v/-/media/project/contentplatform/data/media/pdp/s60-fuel/s60-hero-21x9.jpg?iar=0&w=1366);
    background-position: center;
    background-size:cover;
     color:white;
    font-size:large;
}
.heading
{
  position: absolute;
  left: 10px;
  font-size: 15px;
}
#firsthead
{
    color:#fff;
    position: relative;
    left: 10px;
    top: 1px;
    font-size: 40px;
    text-decoration: none;
    font-family:Georgia, 'Times New Roman', Times, serif;
}
#secondhead
{
    color:#fff;
    position: relative;
    text-decoration: none;
    left: 10px;
    top: -2px;
    font-size: 18px;
    font-family:Georgia, 'Times New Roman', Times, serif;   
}
.navnames {
    width: 100%;
    background-color: #555;
    overflow: auto;
    height: 70px;
  }

  .navnames a{
    float: right;
    text-align: center;
    padding: 12px;
    color: white;
    text-decoration: none;
    font-size: 17px;
    font-family:  -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  }

  .navnames a:hover {
    background-color: #000;
  }
  form
  {
     margin-left:100px;
     margin-right:800px;
     margin-top:60px;
  }
</style>
</head>
<body>
    <div class="container">
        <div class="heading">
       <a href="#" id="firsthead"> <b>Car Service Center</b></a><br>
       <a href="#" id="secondhead">A one stop solution for all brand car service</a>  
       </div>
       <div class="navnames">
        <a href="RegisterPage.jsp">Register</a>
        <a href="LogIn.jsp">Login</a>
        <a href="#">Contact Us</a>
        <a href="#">About Us</a>
        <a href="#" >Home</a>          
       </div>
    </div>
    <form action="pickuprequest" method="post">
               <div class="register">
               <fieldset>
                     <h1>PickUp Request Form</h1>
                     <p>Please fill in this form for pickup purposes</p>
                     <hr>
                     
                     <label for="mob"><b>Customer Name</b></label><br>
                    <input type="text" placeholder="Enter Name" name="custname" required><br><br>

                     <label for="email"><b>Customer Email</b></label><br>
                      <input type="email" id="email" name="custemail" placeholder="Enter email" required><br><br>
                     

                     <label for="contact"><b>Customer Contact</b></label><br>
                     <input type="tel" id="mob" name="custmob" pattern="[6-9][0-9]{9}" placeholder="Enter Mobilenumber" required><br><br>

                     <label for="address"><b>Car PickupAddress</b></label><br>
                     <input type="text" placeholder="Enter PickUp Address.." name="custaddress" required><br><br>
                     <% int centerId=(Integer.parseInt(request.getParameter("centerId").toString())); %>
                     <label for="centerid" ><b>Center ID</b></label><br>
                     <input type="number" placeholder="Enter CenterID" name="centerid" value="<%=centerId %>" required><br><br>

                     <p>By accepting you agree to our <a href="#" style="color:red">Terms & Privacy</a>.</p>
    
                     <div class="clearfix">
                         <button type="submit" class="signupbtn">Submit</button>
                    </div> 
               </div>
                </fieldset>
       </form>
    
</body>
</html>