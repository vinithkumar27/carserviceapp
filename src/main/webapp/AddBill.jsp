<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Bill</title>
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
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('assets/jeep-wrangler-rubicon-5k-pe 1.jpg');
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
            height:250px;
            width:350px;
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
  .addservice
  {
   margin-top:100px;
    margin-left:100px;
    margin-right:1000px;
  }
   .addbill {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
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
        <a href="AdminPage.jsp" >Home</a>          
       </div>
        <div class="addservice">
       <h1>Generate Bill</h1>
          <form action="addbill" method="post">
                     <label for="userid" class="form-label"><b>UserId</b></label><br>
                     <input type="text" class="form-control" placeholder="Enter UserId" name="userid" id="userid" pattern="^[0-9]{3,}$" required><br>  
                     <label for="servdate" class="form-label"><b>Service Date</b></label><br>
                     <input type="date" class="form-control" placeholder="Enter Service Date" id="datefield" name="servdate" required><br><br>
                     <button type="submit" class="btn btn-dark" onclick="generatebill()">Generate Bill</button>
                     <a href="AdminPage.jsp" class="btn btn-dark" id="addbill1">Back</a>
            </form>
              </div>
            <script>
            function generatebill()
                {
         	   const billuserid = document.getElementById("userid");
         	   const billdatefield = document.getElementById("datefield");
       	 
         if((billuserid.value=="")||(billdatefield.value==""))
            {    
               billuserid.focus();
         	   return;
            }
                } 
              
             
            var today = new Date();
            var dd = today.getDate()-4;
            var mm = today.getMonth()+1;
            var yyyy = today.getFullYear();
            if(dd<10){
              dd='0'+dd
            } 
            if(mm<10){
              mm='0'+mm
            } 

            today = yyyy+'-'+mm+'-'+dd;
            document.getElementById("datefield").setAttribute("min", today);
            </script>
    </div>
</body>
</html>