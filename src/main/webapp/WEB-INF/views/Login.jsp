<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link href="css/footer.css" rel="stylesheet">

<title>Login</title>
<style type="text/css">




</style>

</head>
<body class="body-green" data-elink-extension-installed="1.1.5">
<jsp:include page="Head.jsp"/>
<div class="container">
	<div class="row destacados">
	
	<h3>
	<b><a style="cursor: pointer;  class="uiv2-login-new active" href="" >Login</a></b> |
	 <a style="cursor: pointer" class="uiv2-sign-up-new border-none" href="UserSignUp">Sign Up</a></a></h3>
	 
	 
<div class="box" align="center">

    <!-- Body -->
	<div class="wrapper body-inverse"> <!-- wrapper -->
	  <div class="container">
	    <div class="row">
		  <!-- Sign In form -->
		  <div class="col-sm-5 col-sm-offset-1" >
		  
		  
		  
		     <h3>Please Log In Via</h3>
		      <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="#" class="btn btn-lg btn-info btn-block">Google</a>
        </div>
      </div>
      <div class="login-or">
        <hr class="hr-or">
        <span class="span-or">or</span>
      </div>
		     
		     
			<div class="form-white">
			  <form  action="LoginUser" method="post" >
			    <div class="form-group">
				  <label for="email">Email address</label>
				  <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" autocomplete="off" onBlur="CheckEmail(); return false;">
				  <span id="errorMessage4" style="display:none; color:red;"></span>
			    </div>
			    <div class="form-group">
				  <label for="password">Password</label>
				  <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="off" onBlur="CheckPassword(); return false;">
				  <span id="errorMessage5" style="display:none; color:red;"></span>
			    </div>
			    
			    
			     <c:choose>
   				 <c:when test="${invalid==400}">
			   <font style="color:red;"> Please enter valid email or password </font>
			    </c:when>
			    <c:otherwise>
			    </c:otherwise>
			    </c:choose>
			     
			    
			    
			    <div class="checkbox">
				  <label>
				    <input type="checkbox"> Remember me
				  </label>
			    </div>
			    <button type="submit" class="btn btn-block btn-color btn-xxl">Submit</button>
			  </form>
			  <hr>
			  <p><a href=".html#" id="lost-btn">Lost your password?</a></p>
			  <c:choose>
   				 <c:when test="${invalid==300}">
			   <font style="color:red;"> Please enter valid email </font>
			    </c:when>
			    <c:otherwise>
			    </c:otherwise>
			    </c:choose>
			  <div class="hidden" id="lost-form">
			  <p>Enter your email address and we will send you a link to reset your password.</p>
				<form role="form" action="resetPassword" method="post">
			      <div class="form-group">
				    <label for="email-lost">Email address</label>
				    <input type="text" class="form-control" id="email"  name="email" placeholder="Enter email">
				    
				    
			      </div>
			      
			     
				  <button type="submit" class="btn btn-default">Send</button>
				</form>
			  </div>
			  <div class="form-avatar hidden-xs">
				<span class="fa-stack fa-4x">
				  <i class="fa fa-circle fa-stack-2x"></i>
				  <i class="fa fa-user fa-stack-1x"></i>
				</span>
			  </div>
			</div>
		  </div>
    		    
			</div>
		</div>
		

	
</div>
</div>
</div>
</div>


<script type="text/javascript">

function CheckEmail()
{
	var email = document.getElementById('email');

	if(email.value == "")
 	{
 		 document.getElementById("errorMessage4").innerHTML="Please Fill Out this field ";
         document.getElementById("errorMessage4").style.display = "block";
         document.getElementById("email").style.borderColor="#FF0000";
  		 form.email.focus();
  	 	 return false;
	}
 	else
 	{
 		 document.getElementById("email").style.borderColor="#000000";
 		 document.getElementById("errorMessage4").innerHTML="";
 		 
 	}
	
		
}


function CheckPassword()
{
	var password = document.getElementById('password');
	
	if(password.value == "")
 	{
 		document.getElementById("errorMessage5").innerHTML="Please Fill Out this field ";
        document.getElementById("errorMessage5").style.display = "block";
        document.getElementById("password").style.borderColor="#FF0000";
  		form.password.focus();
  	 	return false;
	}
	else
 	{
 		document.getElementById("password").style.borderColor="#000000"; 
 		document.getElementById("errorMessage5").innerHTML="";
 		 
 	} 
	
	
    	 	 	 
}




</script>

<c:if test="${invalid==400}">
 <script type="text/javascript">
  popup();
  </script>
</c:if>
 


<script type="text/javascript">
 function popup(){
	    	document.getElementById("errorMessage7").innerHTML=" Please enter valid email and password";
		 	document.getElementById("errorMessage7").style.display = "block";
 }
  </script>
  
  <script type="text/javascript">
  $('#lost-btn').on('click', function() {
		$("#lost-form").toggleClass("show hidden");
		return false;
	});
  
  </script>
</body>
</html>