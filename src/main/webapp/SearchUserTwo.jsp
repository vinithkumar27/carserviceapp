<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SearchCenter(2)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
form{
            border: 3px solid #f1f1f1;
            margin-left:0px;
            margin-right:800px;
            padding:10px;
            height:640px;
            width:420px;
            position:absolute;
            left:10px;
            top:20px;
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
    top: -8px;
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
    top: -18px;
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
     margin-top:80px;
  }

.btn
{
  position:relative;
  top:-40px;
}
.btn:hover
{
 background-color:white;
 color:black;
}
.mb-0
{
 position:relative;
 top:-10px;
 bottom:2px;
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
    <div class="topnavbar">
        <div class="heading">
       <a href="#" id="firsthead"> <b>Car Service Center</b></a><br>
       <a href="#" id="secondhead">A one stop solution for all brand car service</a>  
       </div>
       <div class="navnames">
        <a href="Logout.jsp">Logout</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="AboutUs.jsp">About Us</a>
        <a href="UserPage.jsp">Home</a>          
       </div>
    </div>
    
 <div class="container mt-1"> 
    <form action="pickuprequest" method="post">
               <div class="register">
               <fieldset>
                     <h1>PickUp Request Form</h1>
                     <p>Please fill in this form for pickup purposes</p>
                     <hr>
                  <div class="mb-0 mt-0">
                     <label for="cusname"><b>Customer Name</b></label><br>
                    <input type="text" placeholder="Enter Name" name="custname" pattern="[a-zA-Z\\s]{3,}" required><br><br>
                  </div>
                  <div class="mb-0 mt-0">
                     <label for="email"><b>Customer Email</b></label><br>
                      <input type="email" id="email" name="custemail" placeholder="Enter email" pattern="[a-zA-Z0-9.]+[@][a-zA-Z]+[.][a-z]+{15,}" required><br><br>
                  </div>
                  <div class="mb-0 mt-0">
                     <label for="contact"><b>Customer Contact</b></label><br>
                     <input type="tel" id="mob" name="custmob" pattern="[6-9][0-9]{9}" placeholder="Enter Mobilenumber" required><br><br>
                  </div>
                  <div class="mb-0 mt-0">
                     <label for="address"><b>Car PickupAddress</b></label><br>
                     <input type="text" placeholder="Enter PickUp Address.." name="custaddress" pattern="^[#.0-9a-zA-Z\s,-]+$" required><br><br>
                  </div>
                     <% int centerId=(Integer.parseInt(request.getParameter("centerId").toString())); %>
                  <div class="mb-0 mt-0">
                     <label for="centerid" ><b>Center ID</b></label><br>
                     <input type="number" placeholder="Enter CenterID" name="centerid" value="<%=centerId %>" readonly="readonly" pattern="^[0-9]{3}$" required><br><br>
                  </div>
                  <div class="mb-0 mt-0">
                     <p>By accepting you agree to our <a href="#" style="color:red">Terms & Privacy</a>.</p><br>
                  </div>
                     <div class="clearfix mt-0">
                      <a href="SearchUserOne.jsp" class="btn btn-dark">Back</a>
                         <button type="submit" class="btn btn-dark">Submit</button>
                    </div> 
               </div>
                </fieldset>
       </form>
    </div> 
</body>
</html>