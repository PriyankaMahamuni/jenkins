<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        	Reset Password
                        </div>
                      
                   </div>
                 </div>
                <div class="card-body">
                 <form action="MailServlet" method="post">
                 		<div class="form-feild">
                 			<p>Enter your email address and we will send you a link to reset your password.</p>
                 			<lable for="Email" class="lable-control">Email ID</lable>&nbsp;<sup><i class="fa fa-asterisk" style="font-size:8px;color:red"></i></sup>
                 			<input type="email" id="txtEmail" name="Email" class="form-control"required>
                 		</div>
                 		
                 		<div class="col-md-9 form-feild" style="padding:10px;margin-left:50px;">
                 			<input type="submit" Value="Send password rest email" class="form-control btn-primary">
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
</body>
</html>