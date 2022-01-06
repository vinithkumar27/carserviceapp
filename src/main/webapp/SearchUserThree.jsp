<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"  import="com.carserviceapp.connection.*" import ="java.sql.*" import="com.carserviceapp.daoimpl.*"  import="com.carserviceapp.dao.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services</title>
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
     width:80%;
     margin-left:100px;
     margin-top:100px;
  }
   table,th,td
      {
          border:1px solid black;
          border-collapse: collapse;
          border-bottom: 1px solid black;
      }
      tr:hover {background-color: black;}
      table
      {
        width:80%;
        height:100px;
        margin-left:100px;
        margin-right:100px;
        margin-top:100px;
      }
      h1
      {
        position:relative;
        left:100px;
        top:100px;
      }
      .button {
  background-color: black; /* Green */
  border: none;
  color: white;
  padding: 15px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-left:100px;
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
  margin-left:60px;
}
.selectbtn:hover
{
 background-color:white;
 color:black;
}
h2
{
  position:relative;
  left:100px;
  top:100px;
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
       <%!ResultSet rs; %>
<%
CarServicesDAOImpl service = new CarServicesDAOImpl();
rs = service.view();
%>

<h1><b>Services</b></h1>
<table >
  <tr>
       <th>Service Name</th>
       <th>Service Cost</th>
       <th>Service Desc</th>
       <th>Service ID</th>
       <th>Select Service</th>
  </tr>
  <%while(rs.next()) {%>
  <tr>
       <td><%=rs.getString(1)%></td>
       <td><%=rs.getInt(2)%></td>
       <td><%=rs.getString(3) %></td>
       <td><%=rs.getInt(4) %></td>
       <td> <button type="button" value="<%=rs.getInt(4) %>" class="selectbtn" onclick="showInput('<%=rs.getInt(4) %>')">Select</button> </a></td>
  </tr>
  <%} %>
</table>
      <h2>Choose Services</h2>
     <form action="chooseservices" method="post">
             <fieldset>
                     <label for="serviceid"><b>ServiceID</b></label><br>
                     <input type="number" placeholder="Enter ServiceID" name="serviceid" id="services" required><br>
                     <button type="submit" class="submitbtn">Submit</button>
             </fieldset>
     </form>
    </div>
</body>
<script language="JavaScript">
    function showInput(val) {
        document.getElementById('services').value = val;
                  
    }
  </script>
</html>