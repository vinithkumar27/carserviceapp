<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.carserviceapp.connection.*" import ="java.sql.*" import="com.carserviceapp.model.*"
    import="javax.servlet.http.HttpSession"  import="com.carserviceapp.daoimpl.*"  import="com.carserviceapp.dao.*" %>
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
  table,th,td
      {
          border:1px solid black;
          border-collapse: collapse;
          border-bottom: 1px solid black;
          text-align:center;
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
      .paymentone {
  background-color:black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  position:absolute;
  top:350px;
  left:100px;
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
             
<%!ResultSet rs;%>
<%
session=request.getSession();
int user_id=(int)(session.getAttribute("userid"));
BillDetails obj1 = new BillDetails(user_id);
BillDetailsDAOImpl cent = new BillDetailsDAOImpl();
rs=cent.pendingview(obj1);
%>

<h1><b>My Services</b></h1>
<table >
  <tr>
       <th>Bill No</th>
       <th>Service Date</th>
       <th>Amount</th>
       <th>Status</th>
  </tr>
  <%while(rs.next()) {%>
  <tr>
       <td><%=rs.getInt(1)%></td>
       <td><%=rs.getDate(2)%></td>
       <td><%=rs.getInt(3)%></td>
       <td><%=rs.getString(4) %></td>
  </tr>
  <%} %>
	      <a href="MyOrders.jsp"><button type="submit" class="paymentone">Back</button></a>
</table>    
</body>
</html>