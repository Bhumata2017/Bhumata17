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
	 

<title>SignUp</title>
<style type="text/css">


</style>

</head>

<body class="body-green" data-elink-extension-installed="1.1.5">
<jsp:include page="Head.jsp"/>
<div class="container">
	<div class="row destacados">
	
	<h3>
	<a style="cursor: pointer;  class="uiv2-login-new active" href="UserLogin" >Login</a> |
	<b> <a style="cursor: pointer" class="uiv2-sign-up-new border-none">Sign Up</a></b>
	</h3>
	 
	 
<div class="box" align="center">

    <!-- Body -->
	<div class="wrapper body-inverse"> <!-- wrapper -->
	  <div class="container">
	    <div class="row">
		 <!-- Sign Up form -->
		  <div class="col-sm-5 col-sm-offset-1" >
		    <h3>Sign Up to your account</h3>
			<p class="text-muted">
			Please fill out the form below to create a new account.
			</p>
			<div class="form-white">
				<form method="post" action="saveUser">
				  <div class="form-group">
					<div class="row">
					  <div class="col-sm-6">
					  <label for="fname">First Name</label>
					  <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" onBlur="CheckFName(); return false;" autocomplete="off" required>
					  <span id="errorMessage1" style="display:none; color:red;"></span>
					  </div>
					  <div class="col-sm-6">
					  <label for="lname">Last Name</label>
					  <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" onBlur="CheckLName(); return false;" autocomplete="off" required>
					  <span id="errorMessage2" style="display:none; color:red;"></span>
					  </div>
					</div>
				  </div>

				  <div class="form-group">
				    <label for="username">Contact Number</label>
					<input type="text" class="form-control" id="contact" name="contact" placeholder="Contact" onBlur="CheckContact(); checkContactNumber(); return false;" autocomplete="off" required>
					 <span id="errorMessage3" style="display:none; color:red;"></span>
				  </div>
				  <div class="form-group">
				    <label for="email2">Email address</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="Enter email" onBlur="CheckEmail();checEmail(); return false;" autocomplete="off" >
				 	<span id="errorMessage4" style="display:none; color:red;"></span>
				  </div>
				  <div class="form-group">
					<div class="row">
					  <div class="col-sm-6">
					  <label for="password2">Password</label>
					  <input type="password" class="form-control" id="password" name="password"  placeholder="Password" onBlur="CheckPassword(); return false;" autocomplete="off">
					  <span id="errorMessage5" style="display:none; color:red;"></span>
					   
					  </div>
					  <div class="col-sm-6">
					  <label for="password2">Repeat password</label>
					 <input type="password" class="form-control" id="password2" name="password2"  placeholder="Password" onBlur="CheckPass(); return false;" autocomplete="off">
						<span id="errorMessage6" style="display:none; color:red;"></span>
					 
					  </div>
					</div>
					 <span id="errorMessage7" style="display:none; color:red;"></span>
				  </div>
				  <div class="checkbox">
					<label>
					  <input type="checkbox"> I agree to the <a  href=".html#">Terms of Service</a> and <a href=".html#">Privacy Policy</a>
					</label>
				  </div>
				  <button type="submit" class="btn btn-block btn-color btn-xxl">Create an account</button>
				</form><br><br>
			</div>
		  </div>
		</div>

		

	
</div>
</div>
</div>
</div>



<script src="js/UserRegistration.js" type="text/javascript"></script> 

 <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script type="text/javascript">
    function checEmail()
    {
    	 var email=document.getElementById( "email" ).value;
    	 $.ajax({
    			url:"checkUserMail",
    			data:{email:$("#email").val()},
    			success:function(resText){
    				if(resText!="")
    					{
    				alert(resText);
    					}
    				if(resText!=""){
    					$("#email").val("");
    					$("#email").focus();
    				}
    			}
    			
    		});
    }
    </script>
    
    <script>
    function checkContactNumber()
    {
    	 var contact=document.getElementById( "contact" ).value;
    	 $.ajax({
    			url:"checkContactNumber",
    			data:{contact:$("#contact").val()},
    			success:function(resText){
    				if(resText!="")
    					{
    				alert(resText);
    				
    					}
    				if(resText!=""){
    					$("#contact").val("");
    					$("#contact").focus();
    					
    					
    				}
    			}
    			
    		});
    }
    
    </script>
   

</body>
</html>