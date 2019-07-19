<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<style>
	.fa{
		font-size:6px;
		color:red;
	}
</style>
  <script>
  $(function () {
      $("#btnSubmit").click(function () {
          var password = $("#txtPassword").val();
          var confirmPassword = $("#txtConfirmPassword").val();
          if (password != confirmPassword) {
              alert("Passwords do not match.");
              return false;
          }
          return true;
      });
  });  		
  </script>  
</head>
<body>
<div class="col-md-12" style="padding : 30px;"></div>
	<div class="container">	
	<div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-3"></div>
            <div class="col-md-5">
              <div class="card">
                <div class="card-header card-header-primary">
                  <div class="col-md-12">
                        
                        <div class="form-group">
                        	<h3>New Account</h3>  
                        </div>
                     
                   </div>
                 </div>
                <div class="card-body">
                 <form action="RegistrationServlet" method="post" id="registerForm">
                 		<div class="form-feild">
                 			<lable for="Name" class="lable-control">Name</lable>&nbsp;<sup><i class="fa fa-asterisk" style=" color:red"></i></sup>
                 			<input type="text" id="txtName" name="Name" class="form-control">
                 		</div>
                 		<div class="form-feild">
                 			<lable for="LastName" class="lable-control">Last Name</lable>&nbsp;<sup><i class="fa fa-asterisk"></i></sup>
                 			<input type="text" id="txtLastName" name="LastName" class="form-control"required>
                 		</div>
                 		<div class="form-feild">
                 			<lable for="EmailId" class="lable-control">Email ID</lable>&nbsp;<sup><i class="fa fa-asterisk"></i></sup>
                 			<input type="email" id="txtEmailId" name="EmailId" class="form-control"required>
                 		</div>
                 		<div class="form-feild">
                 			<lable for="Password" class="lable-control">Password</lable>&nbsp;<sup><i class="fa fa-asterisk"></i></sup>
                 			<input type="password" id="txtPassword" min=8 max=15 name="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-control" required>
                 			<p style="font-size:12px">Make sure it's at least 15 characters OR at least 8 characters including a number and a uppercase letter. </p>
                 		</div>
                 		<div class="form-feild">
                 			<lable for="ConfirmPassword" class="lable-control">Re-type Password</lable>&nbsp;<sup><i class="fa fa-asterisk"></i></sup>
                 			<input type="password" id="txtConfirmPassword" min=8 max=15  name="ConfirmPassword" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                 		</div>
                 		<span id="msg"></span>
                 		<div class="col-md-12" style="padding:10px"></div>
                 		<div class="col-md-4 form-feild">
                 		<input type="submit" value="Create" id="btnSubmit" class="form-control btn-primary">
                 		</div>
				</form>
			  </div>
			  <div class="card-footer">
						existing one?<a href="LogIn.jsp" class="Register">Sign in</a>
			  </div>
              </div>
            </div>
            <div class="col-md-4">
            </div>
          </div>
        </div>
      </div>
	</div>
	<!-- jquery core link  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
	
</body>
</html>