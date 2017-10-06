

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
   <link href="css/style1.css" rel="stylesheet">
<style type="text/css">
.group
{
border: none;
	outline: 0;
	font-size: 0.9em;
	color: #fff;
	background: #07980e;
	width: 100%;

}

.caret-up {
    width: 0; 
    height: 0; 
    border-left: 4px solid rgba(0, 0, 0, 0);
    border-right: 4px solid rgba(0, 0, 0, 0);
    border-bottom: 4px solid;
    
    display: inline-block;
    margin-left: 2px;
    vertical-align: middle;
}


</style>
<title>Head</title>
</head>
<body>
<div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			
		
			<div class="top_right">
				<ul>
					<li><select class="group">
							  <option value="english">English</option>
							  <option value="marathi">मराठी</option>
							  
							</select>
							</li> |
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<li class="top_link"><a href="FarmerLogin">Farmer</a></li>	
					<c:choose>
    <c:when test="${sessionScope.user!=null}">
       <li class="dropdown" >
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
          <ul class="dropdown-menu" style="background: #07980e;">
            <li><a href="#">My Account</a></li><br>
            <li><a href="#">My Order</a></li><br>
            <li><a href="#">My Basket</a></li><br>
            
            <li><a href="LogoutUser">Logout</a></li>
          </ul>
        </li>

    </c:when>
     <c:otherwise>
					
					<li class="top_link"><a href="UserLogin"  >Login</a>
						<span>or</span><a  href="UserSignUp"  >SignUp</a></li>
						</c:otherwise></c:choose>|
					<li class="top_link"><a href="#">My Account</a></li>					
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- top-header -->
<!-- logo-cart -->
<div class="header_top" style="background-color:#F8F8FF;">
	<div class="container">
		<div class="logo">
		 	<a href="showHome">BHUMATA</a>			 
		</div>
		<div class="search" style="margin-left:40px; border:1px solid  #07980e;">
				 <form>
					<input type="text" value="" placeholder="Search..." >
					<input type="submit" value="">
					</form>
			</div>
		<div class="header_right">
			<div class="cart box_1">
				<a href="#">
				<h3> <div class="total">
				 <span id="simpleCart_quantity" class="simpleCart_quantity"></span> items</div>
					<img src="images/cart1.png" alt=""/></h3>
				</a>
				<p><a href="" class="simpleCart_empty">Empty Cart</a></p>
				<div class="clearfix"> </div>
			</div>				 
		</div>
		
		<div class="clearfix"></div>	
	</div>
	
</div>


<script src="js/simpleCart.min.js"> </script>
<script type="text/javascript">

$(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            });
    });
    

</script>

</body>
</html>