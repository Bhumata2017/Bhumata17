<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/style.css">
   
   <link href="css/footer.css" rel="stylesheet">
  <link href="css/header.css" rel="stylesheet">
                                                       
   <link href="css/style.css" rel="stylesheet">

  <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />	


<title>Bhumata</title>
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>
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



html,body {
	margin: 0;
	padding: 0;
}
.slider {
	width: 1341px;
	padding-top:0%;
	  margin:  auto;  
	margin-top: 0;
}

.slider-wrapper {
	width: 100%;
	height: 420px;
	position: relative;
	
}

.slide {
	float: left;
	position: absolute;
	width: 100%;
	height: 100%;
	opacity: 0;
	transition: opacity 3s linear;
}

.slider-wrapper > .slide:first-child {
	opacity: 1;
}


</style>

</head>
<body >


 
 <jsp:include page="Head.jsp"/>

<jsp:include page="DropDown.jsp"/>

<div class="slider" id="main-slider"><!-- outermost container element -->
	<div class="slider-wrapper"><!-- innermost wrapper element -->
	<img src="images/slide5.jpg" alt="fifth" class="slide" /><!-- slides -->
		<img src="images/slide1.jpg" alt="First" class="slide" /><!-- slides -->
		<img src="images/slide3.jpg" alt="Third" class="slide" />
		<img src="images/slide2.jpg" alt="Second" class="slide" />
		<img src="images/slide4.jpg" alt="forth" class="slide" />
		<img src="images/slide8.jpg" alt="forth" class="slide" />
		<img src="images/slide6.jpg" alt="forth" class="slide" />
		<img src="images/slide7.jpg" alt="forth" class="slide" />
	</div>
</div>	





<script type="text/javascript">



(function() {
	
	function Slideshow( element ) {
		this.el = document.querySelector( element );
		this.init();
	}
	
	Slideshow.prototype = {
		init: function() {
			this.wrapper = this.el.querySelector( ".slider-wrapper" );
			this.slides = this.el.querySelectorAll( ".slide" );
			this.previous = this.el.querySelector( ".slider-previous" );
			this.next = this.el.querySelector( ".slider-next" );
			this.index = 0;
			this.total = this.slides.length;
			this.timer = null;
			
			this.action();
			this.stopStart();	
		},
		_slideTo: function( slide ) {
			var currentSlide = this.slides[slide];
			currentSlide.style.opacity = 1;
			
			for( var i = 0; i < this.slides.length; i++ ) {
				var slide = this.slides[i];
				if( slide !== currentSlide ) {
					slide.style.opacity = 0;
				}
			}
		},
		action: function() {
			var self = this;
			self.timer = setInterval(function() {
				self.index++;
				if( self.index == self.slides.length ) {
					self.index = 0;
				}
				self._slideTo( self.index );
				
			}, 6000);
		},
		stopStart: function() {
			var self = this;
			self.el.addEventListener( "mouseover", function() {
				clearInterval( self.timer );
				self.timer = null;
				
			}, false);
			self.el.addEventListener( "mouseout", function() {
				self.action();
				
			}, false);
		}
		
		
	};
	
	document.addEventListener( "DOMContentLoaded", function() {
		
		var slider = new Slideshow( "#main-slider" );
		
	});
	
	
})();



</script>




<div class="container">

	<div class="Group">
		<h1 style="text-align:center;"><b>Gallery</b></h1><br><br>

			<div class="col-sm-4" >  
  				 <img src="images/vegetables.png" class="img-circle"  alt="Cinque Terre" width="250" height="236" > 
 				 <h3><a href="showFilterproductCategory/1"><font color="#0000000">VEGETABLES</font></a></h3>
  
			</div>
			
			<div class="col-sm-4">  
  				 <img src="images/Fruit.png" class="img-circle"  alt="Cinque Terre" width="250" height="236" > 
 				 <a href="showFilterproductCategory/2"><h3><font color="#0000000">FRUITS</font></h3></a>
 			</div>

			<div class="col-sm-4">  
  				 <img src="images/seed.png" class="img-circle"  alt="Cinque Terre" width="250" height="236" > 
 				 <a href="showFilterproductCategory/6"> <h3><font color="#0000000">SEEDS</font></h3></a>
  
			</div>
	</div>
</div>	

<div class="container"> 

		<div class="Group1">
			<div class="col-sm-4" >  
  				 <img src="images/flower1.png" class="img-circle"  alt="Cinque Terre" width="250" height="236"> 
 				  <a href="showFilterproductCategory/3"> <h3><font color="#0000000">FLOWERS</font></h3></a>
  			</div>
			
			<div class="col-sm-4">  
  				 <img src="images/Dry-fruit.png" class="img-circle"  alt="Cinque Terre" width="250" height="236" > 
 				<a href="showFilterproductCategory/4"> <h3><font color="#0000000">DRY FRUITS</font></h3></a>
 			</div>

			<div class="col-sm-4">  
  				 <img src="images/wheat.jpg" class="img-circle"  alt="Cinque Terre" width="250" height="236" > 
 				 <a href="showFilterproductCategory/5"> <h3><font color="#0000000">CEREALS</font></h3></a>
			</div>
		</div>
	
</div>

 
 <section id="three" class="no-padding" style="background-color:#f7f7f7">
        <div class="container-fluid">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary"> For All Your Needs</h2>
                </div>
            </div>
        </div>
        <br><br>

              <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" >
                        <img src="images/mango.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Ratnagiri</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
			
			
			
			 <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal">
                        <img src="images/orange.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Nagpur</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
				<div class="clearfix hidden-lg"> </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal">
                        <img src="images/Bananajalgoan.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Jalgaon</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal">
                        <img src="images/pomegrante.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Solapur</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
				<div class="clearfix hidden-lg"> </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./deer.png">
                        <img src="images/grapesnashik.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Nashik</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                     <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./deer.png">
                        <img src="images/strawbry.png" class="img-responsive" alt="Image 1">
                       <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Mahabaleshwar</h4>
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
       
        
</section>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
<div class="container">
	
	<div class="feature">
	
	<h4 >OUR ADVANTAGES</h4>
	<h2 >Why People Choose Us</h2>
	
	<br><br><br>
	<div class="sub-feature">
	
	<div class="col-md-4">
		<img class="img-valign" src="images/Fruit.png" alt="Paris" width="140" height="110" style="border-radius: 30px;" />
    	<span class="text1">ALWAYS FRESH</span>
	</div>
	
	<div class="col-md-4">
		<img class="img-valign" src="images/Fruit.png" alt="Paris" width="140" height="110" style="border-radius: 30px;" />
    	<span class="text1">100% ORGANIC</span>
	</div>
	
	<div class="col-md-4">
		<img class="img-valign" src="images/Fruit.png" alt="Paris" width="140" height="110" style="border-radius: 30px;" />
    	<span class="text1">BEST PRICE</span>
	</div>
	</div>
	
</div>
</div>



<section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h2 class="section-title">Contact Us</h2>
          </div>
        </div>
        <br><br>
        
        <div class="row">
        	<div class="col-sm-6">
        		<div class="Info">
        			<div>
            			 <i class="glyphicon glyphicon-map-marker"></i>
            			 <p>B 304,G O Square,<span></span><br>Wakad</p>
       				</div>
        
        			<div>
              			<i class="glyphicon glyphicon-envelope"></i>
             			<p>Adroitspirit@gmail.com</p>
        			</div>
         			<br>
              
         			<div>
              			<i class="glyphicon glyphicon-phone"></i>
             			<p>+1 5589 55488 55</p>
         			</div>
              
            	</div>
          </div>
        
        
         <div class="col-sm-6">
         		 <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                  <div class="form-group">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group">
                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                    <div class="validation"></div>
                  </div>
                  <div class="text-center"><button type="submit">Send Message</button></div>
              </form>
            </div>
          </div>
          
        </div>
         
         
    </div>
              
</section>
    <jsp:include page="Footer.jsp"/>

</body>
</html>