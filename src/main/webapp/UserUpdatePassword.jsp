<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Password..</title>
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
  .selectbtn
{
  background-color:black;
  border: none;
  color: white;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin-left:10px;
}
.selectbtn:hover
{
 background-color:white;
 color:black;
}
 .changepasspage {
  background-color:black;
  border: none;
  color: white;
  padding: 5px 17px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  position:absolute;
  top:195px;
  left:180px;
}
.changepasspage:hover
{
 background-color:white;
 color:black;
}
</style>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	if ((session.getAttribute("user") == null)&&(session.getAttribute("admin")==null)&&(session.getAttribute("invalid")==null)) {
		response.sendRedirect("Index.jsp");
	}
	%>
    <div class="container">
        <div class="heading">
       <a href="#" id="firsthead"> <b>Car Service Center</b></a><br>
       <a href="#" id="secondhead">A one stop solution for all brand car service</a>  
       </div>
       <div class="navnames">
        <a href="Logout.jsp">Logout</a>
        <a href="#">Contact Us</a>
        <a href="#">About Us</a>
        <a href="UserPage.jsp" >Home</a>          
       </div>
    </div>
     
    <h1>Change Password</h1>
          <form action="updatepassword" method="post">
            <fieldset>
               <legend>Change Password</legend>

                     <label for="servnewprice"><b>New Password</b></label><br>
                     <input type="text" id="updatepassword" name="updatepassword" placeholder="Enter New Password" pattern="(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br><br>
                     
                     <button type="submit" class="selectbtn">Change Password</button>
                      <a href="UserDeleteAccount.jsp" class="selectbtn">Delete Account</a>
                     </div>
               </fieldset>
            </form>
</body>
</html>