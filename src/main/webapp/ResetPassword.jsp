<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.fa{
		font-size:6px;
		color:red;
	}
</style>
  <!-- <script src="/home/admin1/Documents/MVCServletJspProject/register.js"></script>  -->
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
                <div class="card-header card-header">
                  <div class="col-md-12">
                        
                        <h3>Choose a new password</h3>
                     
                   </div>
                 </div>
                <div class="card-body">
                 <form action="ResetPasswordServlet" method="post" id="registerForm">
                 		<h4>Password must inlcude at least 8 characters including at least 1 number or 1 special character</h4>
                 		<div class="form-feild">
                 			<lable for="email" class="lable-control">Email ID</lable>&nbsp;<sup><i class="fa fa-asterisk" style=" color:red"></i></sup>
                 			<input type="text" id="txtemail" name="email" class="form-control">
                 		</div>
                 		<div class="form-feild">
                 			<lable for="NewPassword" class="lable-control">New password</lable>&nbsp;<sup><i class="fa fa-asterisk" style=" color:red"></i></sup>
                 			<input type="password" id="txtNewPassword" name="NewPassword" class="form-control">
                 		</div>
                 		<div class="form-feild">
                 			<lable for="ConfirmPassword" class="lable-control">Retype new passwprd</lable>&nbsp;<sup><i class="fa fa-asterisk"></i></sup>
                 			<input type="password" id="txtConfirmPassword" name="ConfirmPassword" class="form-control"required>
                 		</div>
                 		<div class="col-md-12" style="padding:10px"></div>
                 		<div class="col-md-4 form-feild">
                 		<input type="submit" value="Submit" class="form-control btn-primary">
                 		</div>
				</form>
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