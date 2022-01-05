<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import="com.carserviceapp.connection.*"
      import ="java.sql.*" 
      import="com.carserviceapp.daoimpl.*"  
      import="com.carserviceapp.dao.*"
     import="com.carserviceapp.model.*" 
     %>
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
    <form action="paymentpage" method="post">
               <div class="register">
               <fieldset>
                     <h1>Payment</h1>
                     <hr>
                     
                      <label for="cardnum"><b>Card Number</b></label><br>
                     <input type="number" placeholder="Enter CardNumber" name="cardnum" required><br><br>
                     
                     <label for="holdername"><b>Card Holder Name</b></label><br>
                    <input type="text" placeholder="Enter CardHolderName" name="holdername" required><br><br>                     

                     <label for="expdate"><b>Exp Date</b></label><br>
                     <input type="month" id="expdate" name="expdate" min="2022-03" max="2030-03" placeholder="Enter ExpDate" required><br><br>
                     
                     <label for="cvvno"><b>Cvv No.</b></label><br>
                     <input type="number" placeholder="Enter CvvNo" name="cvvno" required><br><br>
                     <%!ResultSet rs;
                    		 int amount;%>
                     <%  
                    int userid=(int)session.getAttribute("userid");
                     int billnum =(int)session.getAttribute("bill_num");
                     BillDetailsDAOImpl bDao = new BillDetailsDAOImpl(); 
                     String dummy="23";
                     BillDetails billpay = new BillDetails(userid,billnum,dummy);	 
                     amount=bDao.view1(billpay);	  
                    		 %>
                    	<p>your bill is ..<%=amount%></p> 		                   		 
                    
                    		 
                     <label for="amountpaid"><b>Amount Paid</b></label><br>
                     <input type="number" placeholder="Enter Amount" name="amountpaid" required><br><br>

                     <p>By accepting you agree to our <a href="#" style="color:red">Terms & Privacy</a>.</p>
    
                     <div class="clearfix">
                         <button type="submit" class="signupbtn">Submit</button>
                    </div> 
               </div>
                </fieldset>
       </form>
    
</body>
</html>