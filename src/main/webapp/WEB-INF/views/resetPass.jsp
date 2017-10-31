<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="css/LoginSignUp.css" rel="stylesheet">
<title>ResetPass</title>
</head>
<body>
<jsp:include page="Head.jsp"/>
 <div class="container">
	<div class="row destacados">
	
		<h2 class="sign_up_title">Reset password</h2>
	 
			<div class="box" align="center">

   				<!-- Body -->
				<div class="wrapper body-inverse"> <!-- wrapper -->
	  				<div class="container">
	    				<div class="row">
		 					 <!-- Sign In form -->
		  					<div class="col-sm-5 col-sm-offset-1"  >
		  		     				
		     						<div class="form-white" style="text-align:left; margin-top:4%;">
			  							<form role="form" method="post" action="#">
		      								<div class="form-group">
                                				<label for="otp" class=" control-label col-sm-6">OTP(One Time Password)</label>
                               					 <div class="col-sm-6"><input type="text" class="form-control" name="otp" placeholder="Enter received OTP"><br>
                               					 
                                				 </div>
                            			   	</div>
                            			   	
                            				<div class="form-group">
                                				<label for="npwd" class=" control-label col-sm-6">New password</label>
                                				<div class="col-sm-6"><input type="password" class="form-control" name="npwd" placeholder="create your new password"><br>
                                				</div>
                            				</div>
                            				
                            				<div class="form-group">
                                				<label for="ncpwd" class=" control-label col-sm-6">Confirm password</label>
                                				<div class="col-sm-6"><input type="password" class="form-control" name="password_confirmation" placeholder="confirm your new password"><br>
                                				</div>
                            				</div>
						    
			    							<div class="col-xs-12 col-md-12"><a href="#" class="btn btn-success btn-block btn-xxl">Reset</a><hr>
			    							</div>
			      
			  							</form>
			  							<br>
			   						</div>
		  					</div>
					</div><!-- row -->
				</div><!-- container -->
			</div><!-- wrapper body-inverse -->
		</div><!-- box -->
	</div><!-- row destacados -->
</div><!-- container -->
 
</body>
</html>