<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log-In</title>
    <style>
   
        form{
            border: 3px solid #f1f1f1;
            margin-left:400px;
            margin-right:400px;
        }
        input[type=text],input[type=password]
        {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button{
            background-color: black;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        button:hover{
            opacity: 0.8;
        }
       .cancelbtn
        {
             width:auto;
             padding: 10px 18px;
             background-color: #f44336;
        } 
        .registerbtn
        {
             width:auto;
             padding: 10px 18px;
             background-color: #f44336;
             position:relative;
             left:310px;
        } 
        .imgcontainer{
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar
        {
            width: 40%;
            border-radius: 50%;
        }
        .container
        {
            padding: 16px;
        }
        span.psw
        {
            float: right;
            padding-top: 16px;
        }
        @media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
 
    </style>
</head>
<body>
   <%
   if(session.getAttribute("passchange") != null){%>
	   <h1>Password Changed Successfully!!</h1>
	   
   <%session.removeAttribute("passchange"); }
   %>
      <form action="loginpage" method="post">
          <fieldset>
              <div class="imgcontainer">
                   <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCs3DfTlcAjErJF0nM01eT5yYj9O-EonAMkQ&usqp=CAU" alt="avatar" class="avatar">
              </div>

            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter username" name="uname" pattern="[a-zA-Z\\s]{3,}" required autofocus>

                 <label for="psw"><b>Password</b></label>
                 <input type="password" placeholder="Enter password" name="psw" pattern="(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,}" required>

                 <button type="submit">Login</button>
            </div>

            <div class="container">
                 <a href="Index.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
                 <!-- <span class="psw">Forgot <a href="UserUpdatePassword.jsp">password?</a></span> -->
                 <a href="RegisterPage.jsp"><button type="button" class="registerbtn">Register</button></a>
            </div>
        </fieldset>
      </form>  
</body>
</html>