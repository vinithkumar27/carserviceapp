<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminPage</title>
    <link rel="stylesheet" href="carser.css">
<style>
*{
 margin: 0;
 padding: 0;   
 
}
body
{
    height: 100vh;
 background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url('assets/jeep-wrangler-rubicon-5k-pe 1.jpg');
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
  h2 a
  {
  text-decoration: none;
  color:#551c21;
  }
  
  .button1{
    width: 200px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:80px;
    left:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
 .button2{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:125px;
    left:5px;
    background-color:white;
    opacity:0.9;
    background-position: center;
    background-size: cover;
}
 .button3{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:170px;
    left:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
 .button4{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:215px;
    left:5px;
    background-color:white;
    opacity:0.9;
    background-position: center;
    background-size: cover;
}
.button5{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:260px;
    left:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
.button6{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:305px;
    left:5px;
    background-color:white;
    opacity:0.9;
    background-position: center;
    background-size: cover;
}
.button7{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:350px;
    left:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
 .button8{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:395px;
    left:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
 .button9{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:440px;
    left:5px;
    opacity:0.9;
    background-color:white;
    background-position: center;
    background-size: cover;
}
 .button10{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:170px;
    right:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
.button11{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:215px;
    right:5px;
    opacity:0.9;
    background-color:white;
    background-position: center;
    background-size: cover;
}
.button12{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:260px;
    right:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
.button13{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:305px;
    right:5px;
    opacity:0.9;
    background-color:white;
    background-position: center;
    background-size: cover;
}
.button14{
    width: 300px;
    height: 40px;
    display: inline-block;
    border-radius: 10px;
    padding: 5px 15px;
    box-sizing: border-box;
    cursor: pointer;
    position:absolute;
    top:485px;
    left:5px;
    background-color:white;
    background-position: center;
    background-size: cover;
}
.reportbtns
{
 position:absolute;
 top:280px;
 right:5px;
}

.btn
{
    transition: transform 0.5s;
}

.btn:hover{
    transform: translateX(20px);
}

.btns
{
    transition: transform 0.5s;
}

.btns:hover{
    transform: translateX(-20px);
}

.cruds
{
   position:absolute;
 top:10px;
 left:5px;
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
	
	 <%
   if(session.getAttribute("addbill") != null){%>
	   <h1 style="position:absolute; top:80px; right:500px;">Bill is generated!!</h1>
	   
   <%session.removeAttribute("addbill"); }
   %>
   
    <%
   if(session.getAttribute("updateprice") != null){%>
	   <h1 style="position:absolute; top:80px; right:500px;">Service Price is Updated..!!</h1>
	   
   <%session.removeAttribute("updateprice"); }
   %>
   
    <%
   if(session.getAttribute("deleteservice") != null){%>
	   <h1 style="position:absolute; top:80px; right:500px;">Service is Deleted...!!</h1>
	   
   <%session.removeAttribute("deleteservice"); }
   %>
   
     <%
   if(session.getAttribute("deletecenter") != null){%>
	   <h1 style="position:absolute; top:80px; right:500px;">ServiceCenter is Deleted...!!</h1>
	   
   <%session.removeAttribute("deletecenter"); }
   %>
   
       <%
   if(session.getAttribute("updatecenter") != null){%>
	   <h1 style="position:absolute; top:80px; right:550px;">ServiceCenter Contact is Updated...!!</h1>
	   
   <%session.removeAttribute("updatecenter"); }
   %>
    <div class="container">
        <div class="heading">
       <a href="#" id="firsthead"> <b>Car Service Center</b></a><br>
       <a href="#" id="secondhead">A one stop solution for all brand car service</a>  
       </div>
       <div class="navnames">
        <a href="Logout.jsp">Logout</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="AboutUs.jsp">About Us</a>
        <a href="AdminPage.jsp" >Home</a>          
       </div>
    <form action="adminaccess" method="post">  
    <div class="cruds">
       <h2 class="btn button1"><a href="AddBill.jsp">Add Bill</a></h2>
       <h2 class="btn button2"> <a href="AddServiceCenter.jsp">Add Service Center</a></h2>
       <h2 class="btn button3"><a href="ServiceCenterShow.jsp">View Service Center</a></h2>
       <h2 class="btn button4"><a href="UpdateServiceCenter.jsp">Update Service Center</a></h2>
       <h2 class="btn button5"><a href="DeleteServiceCenter.jsp">Delete Service Center</a></h2>
       <h2 class="btn button6"><a href="AddServices.jsp">Add Services</a></h2>
       <h2 class="btn button7"><a href="ShowServices.jsp">View Services</a></h2>
       <h2 class="btn button8"><a href="UpdateService.jsp">Update Services</a></h2>
       <h2 class="btn button9"><a href="DeleteService.jsp">Delete Services</a></h2>
       <h2 class="btn button14"><a href="UserUpdatePassword.jsp">Change Password</a></h2>
     </div>  
     <div class="reportbtns">  
       <h2 class="btns button10"><a href="CenterReportsOne.jsp">Center Reports</a></h2>
       <h2 class="btns button11"><a href="CustomerReportsOne.jsp">Customer Reports</a></h2>
       <h2 class="btns button12"><a href="PickUpReports.jsp">Pickup Report</a></h2>
       <h2 class="btns button13"><a href="BillReportsOne.jsp">Bill Report</a></h2>
       </div>
       
    </form> 
    </div>
</body>
</html>