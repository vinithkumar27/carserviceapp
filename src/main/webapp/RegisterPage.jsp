<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <style>
        *{box-sizing: border-box;}
        form
        {
          border: 3px solid #f1f1f1;
          margin-left:300px;
          margin-right:300px;
        }
        input[type=text], input[type=password],input[type=tel],input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
button:hover {
  opacity:1;
}
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
.container {
  padding: 16px;
}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
    </style>
</head>
<body>
       <form action="carserviceuser12" method="post">
               <div class="register">
                     <h1>Sign Up</h1>
                     <p>Please fill in this form to create an account</p>
                     <hr>

                     <label for="user"><b>Username</b></label>
                     <input type="text" placeholder="Enter username" pattern="[a-zA-Z\\s]{3,}" title="username should be more than 3 characters" name="user" required>

                     <label for="mob"><b>Mobilenumber</b></label>
                     <input type="tel" id="mob" name="mob" pattern="[6-9][0-9]{9}" title="mobile number should be 10 numbers" placeholder="Enter Mobilenumber" required>

                     <label for="password"><b>Password</b></label>
                     <input type="password" id="password" name="password" pattern="(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter password" required>

                     <label for="email"><b>Email</b></label>
                     <input type="email" id="email" name="email" placeholder="Enter email" pattern="[a-zA-Z0-9.]+[@][a-zA-Z]+[.][a-z]+{15,}" required>

                     <label for="address"><b>Address</b></label>
                     <input type="text" placeholder="Enter Address" name="address" pattern="^[#.0-9a-zA-Z\s,-]+$" required>
                     
                     <!--  <p>Already User<a href="LogIn.jsp" style="color:red">Log-in</a></p>  -->

                     <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    
                     <div class="clearfix">
                         <a href="Index.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
                        <button type="submit" class="signupbtn">Sign Up</button>
                     </div>
                     
               </div>

       </form>
</body>
</html>