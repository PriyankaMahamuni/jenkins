<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn Page</title>
	<link href="/home/admin1/Documents/WebApplication/WebContent/style.css" rel="StyleSheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	 <style>
	body
	{
		background-color:#0370C0;
	}
	.tbox{
		width:350px;
		height:41px;
		background:#f1f1f1b3;
		border-radius:10px;
		margin:10px auto;
	}
	.tbox input{
		background :none;
		border: none;
		outline:none;
		text-align:center;
		font-family:"TimesNewRoman",sans-serif;
		font-size:16px;
		color;#333;
	}
	.size{
		font-size:16px;
	}
	.btn{
		width:350px;
		height:40px;
		background:#3498db;
		border-radius:10px;
		margin:10px auto;
		font-family:"TimesNewRoman",sans-serif;
		font-size:16px;
		display:block;
		border:none;in:10px auto;
		font-family:"TimesNewRoman",sans-serif;
		font-size:16px;
		display:block;
		border:none;
		color:white;
		cursor:pointer;
	}
	.forgotpassword{
		display:block;
		text-decoration:none;
		margin-left:200px;
		font-size:16px;
	}
	
	a:hover
	{
		background:#0000040;
	}
	</style> 

</head>
<body>
	<div class="col-md-12" style="padding : 30px;"></div>
	<div class="container">
		
	<div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-3"></div>
            <div class="col-md-6">
              <div class="card">
                <div class="card-header card-header-primary">
                  <div class="col-md-12">
                        <div class="col-md-6">
                        <div class="form-group">
                        	<h3>Log In</h3>  
                        </div>
                      </div>
                   </div>
                 </div>
                <div class="card-body">
                 <form action="LogInServlet" method="post">
                 		<lable for="txtUserName" class="size">UserName or email address</lable>
						<div class="tbox">
							<input type="text" id="txtUserName" class="form-control" name="txtUserName" placeholder="Enter User Name" required>
							<span id="message"></span>
						</div>
							<lable for="txtPassword" style="float:left" class="size">Password</lable><a href="ForgotPassword.jsp" class="forgotpassword pull-right">Forgot Password ? </a>
						<div class="tbox">
							<input type="password" id="txtPassword" class="form-control" name="txtPassword" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
							<span id="message"></span>
						</div>
					
						<input type="submit" name="" class="btn" value="Log In">
				</form>
			  </div>
			  <div class="card-footer">
						<a href="Registration.jsp" class="Register">Create an Account</a>
			  </div>
              </div>
            </div>
            <div class="col-md-4">
            </div>
          </div>
        </div>
      </div>
      </div>	
</body>
</html>