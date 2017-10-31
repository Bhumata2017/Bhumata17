<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="/WEB-INF/taglibs/image.tld" prefix="ui"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
  
  

<link href="css/footer.css" rel="stylesheet">
  <link href="css/header.css" rel="stylesheet">
                                                       
   <link href="css/style.css" rel="stylesheet">
  <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />	


<title>Insert title here</title>

<style type="text/css">
.btn {
background-color: #ffd11a;
padding-top:3px;
padding-bottom:3px;}s
.aa {

margin-top:5px;}
select { width:225px;text-align:center; }
select .lt { text-align:center; }
select { text-indent: 5px; }


/* .item:hover { -moz-box-shadow: 0 0 40px #ccc; -webkit-box-shadow: 0 0 40px #ccc; box-shadow: 0 0 40px #ccc; } */

.item:focus

body {
    background-color: #EAEAEA;
    font-family: 'Roboto', sans-serif;
}
.wrap {
    max-width: 1300px;
    margin: 0 auto ; 
    padding-top: 1px;
   
}


/*Menu !!!!*/
.menu {
    vertical-align: top;
    display: inline-block;
    margin: 5px ;
    
}
.menu-item {
    background-color: #FEFEFE;
    width: 200px;
    height: 150px;
    margin: 10px;
    border-radius: 3px;
    box-shadow:0 0 8px rgba(0, 0, 0, 0.06);
}

.header-item {
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #3C3D41  ;
    font-size: 11px;
    padding: 15px 15px;
    border-bottom: 1.5px solid #EAEAEA;
}

.color-row1,  .color-row2  {
    margin: 15px;
    padding:0;
    max-width: 220px;
}

.color-circle {
    max-width: 220px;
    display: inline-block;
    width: 30px;
    height: 30px;
    border-radius: 50px 50px 50px 50px;
    
}

.size-circle {
    background-color: #EBEBEB;

}

.sizedouble {
 
   margin: 5px 5px;

}
.size {
     margin: 6px 8px;
}

/*ITEMS!!!*/
img {
    width: 150px; 
    height: 150px;
    margin-top: 10px;
    vertical-align: top;
    position: relative;
    left: 40px;
}

.items  {
    width: 1000px;
    margin: 12px;
    display: inline-block;
}
 .item {
    vertical-align: top;
    width: 250px; 
    height: 320px; 
    margin: 8px;
    background:#FEFEFE; 
    display: inline-block; 
    border-radius: 3px;
    /* box-shadow:0 0 8px rgba(0, 0, 0, 0.06); */
 }

h3 {
    text-align: center;
    margin-top:0px;
    margin-bottom: 3px;
    margin-left: 5px;
    margin-right: 5px;
    font-size: 1em;
}

h5 {
    position: relative;
    bottom: 10px;
    text-align: center;
    margin-top: 20px;
}

.descroption {
    margin-top: 20px;
    margin-left:30px;
    text-align: left;
    font-size: 11px;
    font-style: italic;
    color: grey;
    font-family: sans-serif;
}


/*BTN*/
.loadmore {
    height: 30px;
    width: 1350px;
    margin-top: 25px;
    position: relative;
    left: 8px;
    text-decoration: none;
    font-size: 15px;
    background-color: #B8C6C7;
    color: #FEFEFE;
    border-radius: 4px;
    border: none;
    font-family: 'Roboto', sans-serif;
}

.mini-menu{
    width: 150px;
    border-radius: 3px;
    box-shadow:0 0 8px rgba(0, 0, 0, 0.06);
    overflow: hidden;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #848C8F ;
    font-size: 11px;
    margin: 10px;
}
.mini-menu ul {
    list-style: none;
    margin: 0;
    padding:0;
    text-align:left;
}
.mini-menu > ul > li {
    position: relative;
}
.mini-menu > ul > .sub > a {
     display: block;	
    outline: 0;	
    padding: 1.2em 1em;	
    text-decoration: none;	
    color:#3C3D41;	
    font-weight: normal;
    letter-spacing: 2px;	
    background: #FEFEFE;
    border-bottom: 1.5px solid #EAEAEA;
   
}

.mini-menu .sub > ul {
    height: 0;
    overflow: hidden;
    background: #848C8F;
}
.mini-menu .sub > ul > li > a {
    font-family:  sans-serif;
    color:#FEFEFE;
    font-size: 12px;
    display: block;
    text-decoration: none;
    padding: .7em 1em;
    text-transform: capitalize;
    font-style: normal; 
    letter-spacing: 1px;
}
/* .mini-menu .sub > ul > li > a:hover,* */
 /* .mini-menu > ul >.sub > a
 {
    padding-left: 1.3em;
    color: blue;
    content: "1";
    float: right;
    margin-right:6px;
    line-height: 12px;
} */
 



 .mini-menu .sub >  a:after{
    content: "»";
    float: right;
    margin-right:6px;
    line-height: 12px;
}
 
@media screen and (max-width: 940px) {
    .items {width: 420px;}
    .wrap {width: 700px;}
    .loadmore{width: 420px;}
   }
   @media screen and (max-width: 720px) {
    .items {width: 220px;}
    .wrap {width: 500px;}
    .loadmore{width: 220px;}
   }
   

   .ui-slider .ui-slider-handle {
    position: absolute;
    z-index: 2;
    width: 0.9em;
    height: 1.6em;
    cursor: default;
    outline: none;
    border: 1px solid rgb(207, 207, 207);
    background: #090;
    border-image: initial;
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
  
   background-color: #white; /* Green */
    border: 1px solid green;
    color: black;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    cursor: pointer;
    width: 150px;
    display: block;
}

input[type=addtocart] {
  
   background-color: #white; /* Green */
    border: 1px solid green;
    color: black;
     padding: 10px 10px; 
    margin-left:30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    cursor: pointer;
    width: 100px;
    height:5px;
    /* display: block; */
}


/* When moving the mouse over the submit button, add a darker green color */
 input[type=submit]:hover {
    background-color: #4CAF50;
} 

input[type=addtocart]:hover {
    background-color: #4CAF50;
} 

.group
{
border: none;
	outline: 0;
	font-size: 0.9em;
	color: #fff;
	background: #07980e;
	width: 110%;

}



</style>
</head>
<body>


 <div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			<div class="top_right">
				<ul>
					<li><select class="group">
							  <option><font size="8">English</font></option>
							  <option><font size="8">Marathi</font></option>
							  
							</select></li>
<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<li class="top_link"><a href="#">Farmer</a></li>	
					<li class="top_link"><a href="#"  >Login</a>
						<span>or</span><a  href="#"  >Signup</a></li>|
<li class="top_link"><a href="#">My Account</a></li>					
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- top-header -->
<!-- logo-cart -->
<div class="header_top" style="background-color:#fff;">
	<div class="container">
		<div class="logo">
		 	<a href="index.html">BHUMATA</a>			 
		</div>
		<div class="search" style="margin-left:40px; border:1px solid  #07980e;">
				 <form name="form1" action="showFilterproduct">
					<input type="text" name="pname" placeholder="Search..." >
					<input type="submit" value="">
					</form>
			</div>
		<div class="header_right">
			<div class="cart box_1">
				<a href="checkout.html">
				<div class="total">
				 <span id="simpleCart_quantity" class="simpleCart_quantity"></span> items</div>
					<!-- <img src="images/image/cart1.png" alt=""/> -->
				</a>
				<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
				<div class="clearfix"> </div>
			</div>				 
		</div>
		<div class="clearfix"></div>	
	</div>
</div>
<script src="js/simpleCart.min.js"> </script>
 
    <div class="wrap">
    <div class="menu">
        <div class="mini-menu">
             <ul> 
        <li class="sub">
            <a href="#">Vegetables</a>
              <ul>
               <li><a href="showFilterProductNames1/1">Potatoes, Oniones, Tomatoes</a></li>
             	<li><a href="showFilterProductNames1/2">Cucumber & Capsicum</a></li>
							<li><a href="showFilterProductNames1/3">Cabbage, Cauliflower</a></li>
							<li><a href="showFilterProductNames1/4">Beans, Brinjals, Okra</a></li>
							<li><a href="showFilterProductNames1/5">Gourds, Pumpkins, Drumsticks</a></li>
							<li><a href="showFilterProductNames1/1">Leafy Vegetables</a></li>
							<li><a href="showFilterProductNames1/1">Root Vegetables</a></li>
							<li><a href="showFilterProductNames1/1">Peas, Corn, Mushrooms</a></li>
            </ul>  
         </li> 
        <li class="sub">
            <a href="#">Fresh Fruits</a>
             <ul>
              <li><a href="showFilterProductNames1/6">Banana, Guava, Sapota</a></li>
							<li><a href="showFilterProductNames1/7">Papaya, Pineapple, Pomegranate</a></li>
							<li><a href="showFilterProductNames1/8">Apples, Pears</a></li>
							<li><a href="showFilterProductNames1/9">Melon</a></li>
							<li><a href="showFilterProductNames1/10">Oranges, Sweet Lime</a></li>
							<li><a href="showFilterProductNames1/11">Grapes, Berries, Cherries</a></li>
							<li><a href="showFilterProductNames1/12">Mangoes</a></li>
							<li><a href="showFilterProductNames1/13">Plums,Peaches</a></li>
							
            </ul> 
        </li>
        <li class="sub">
            <a href="#">SEEDS</a>
            <ul>
              <li><a href="showFilterProductNames1/14">Amaranth Seeds</a></li>
							<li><a href="showFilterProductNames1/15">Anise Seeds</a></li>
							<li><a href="showFilterProductNames1/16">Basil Seeds</a></li>
 						    <li><a href="showFilterProductNames1/17">Caraway Seeds</a></li>
 						    <li><a href="showFilterProductNames1/18">Cardamom</a></li>
							<li><a href="showFilterProductNames1/19">Coriander seeds</a></li>
							<li><a href="showFilterProductNames1/20">Cumin seeds</a></li>
							<li><a href="showFilterProductNames1/21">Fenugreek Seeds</a></li>
 						                </ul>
        </li>
         <li class="sub">
            <a href="#">FLOWERS</a>
            <ul>
              <li><a href="showFilterProductNames1/22">Rose,Marigold</a></li>
							<li><a href="showFilterProductNames1/23">Jasminum sambac</a></li>
							<li><a href="showFilterProductNames1/24">Periwinklee</a></li>
							<li><a href="showFilterProductNames1/25">Anona Hexapetala</a></li>
							<li><a href="showFilterProductNames1/26">Hibiscus</a></li>
							<li><a href="showFilterProductNames1/27">Cypress Vine</a></li>
							<li><a href="showFilterProductNames1/28">Mimusops elengi</a></li>
							
 						                </ul>
        </li>
        
        
        
        <li class="sub">
            <a href="#">DRY-FRUITS</a>
            <ul>
           <li><a href="showFilterProductNames1/29">Almonds</a></li>
							<li><a href="showFilterProductNames1/30">Cashew nut</a></li>
							<li><a href="showFilterProductNames1/31">Dates</a></li>
							<li><a href="showFilterProductNames1/32">Pistachio</a></li>
							<li><a href="showFilterProductNames1/33">Prunes</a></li>
					<li><a href="showFilterProductNames1/34">Fig</a></li>
					<li><a href="showFilterProductNames1/35">Walnuts</a></li>
					<li><a href="showFilterProductNames1/36">Dried Kiwi</a></li>
            </ul>
        </li>
         <li class="sub">
            <a href="#">CEREALS</a>
            <ul>
            <li><a href="showFilterProductNames1/37">Wheat</a></li>
							<li><a href="showFilterProductNames1/38">Maize</a></li>
							<li><a href="showFilterProductNames1/39">Millet</a></li>
							<li><a href="showFilterProductNames1/40">Ragi</a></li>
							<li><a href="showFilterProductNames1/41">Rice</a></li>
						<li><a href="showFilterProductNames1/42">Sorghum</a></li>
						<li><a href="showFilterProductNames1/43">Sago</a></li>
						<li><a href="showFilterProductNames1/44">Semolina</a></li> 
            </ul>
        </li>
    </ul>
        </div>
        
        <div class="menu-colors menu-item">
            <div class="header-item" >Quantity</div>
           
        </div>
        <div class="menu-price menu-item">
            <div class="header-item" >Price</div>
            <p>
                <!--<label for="amount">Price range:</label>-->
                <input type="text" readonly id="amount"  style="border:0; color:#f6931f; font-weight:bold;">
            </p>
            <div id="slider-range"></div>
        </div>
        
    </div>
    
   
    
  <div class="items">
  
        <div data-price="160" class="item">  
 


<table style="margin-left: 50px;">

        <c:forEach items="${product}" var="product" varStatus="rowCounter">
       
        <c:if test="${rowCounter.count % 4== 1}">
   
        <tr>
        </c:if>
        
         <td><br> <img src="<ui:image img='${product.productImg}'></ui:image>" alt="Image" /> <br/><br><h3>${product.productName }</h3>
         
         <h5>Price:${product.price}</h5> 
         
          <select id="mySelect" onClick="myFunction();">
            <option value="1000">1kg. approx 6,7 nos. Rs.160</option>
            <option value="250">250gm. approx 2,3 nos. Rs.40</option>
            <option value="500">500gm. approx 4,5 nos. Rs.80</option>
            <option value="1000">1kg. approx 6,7 nos. Rs.160</option>
        </select>
         <p id="demo"></p>

<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
    document.getElementById("demo").innerHTML = "Price: " + x;
}
</script>
           
        
   <!--  <form name="myform"  enctype="multipart/form-data">  -->
         Qty:<input type="text" name="qty" id="qty" style="width: 2.0em;">
      <%-- <a href="showdisplayproduct/${product.pId}?qty={qty}"> --%>
         <!--  <button class="btn" qa="add" type="button" style="margin-left: 50px;">
         	
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	</button> -->  
       <a href="showdisplayproduct/${product.pId}">
           <input type="addtocart" value="Add to Cart">  
         	 </a>
         	 <!--  </form>  -->
         	 
         	
         </td>
       <%--   <td style="margin-right: 50px;">
         <c:if test="${rowCounter.count % 4 == 1}">
         
         </c:if>
         
          </td>
 --%>       
           
                
         	
         </c:forEach>
         	
         	
         </table>
         	</div>
         <br><br>	
               
         </div>
         </div>
                
        
   
    
        <!-- </div>    
          
        </div> -->
  
  
<!--  <button class="loadmore">Load More</button> -->
    
</body>

    <!--<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>-->





    <!--Menu-->
   <script type="text/javascript">
    $(document).ready(function () {
        $(".sub > a").click(function() {
            var ul = $(this).next(),
                    clone = ul.clone().css({"height":"auto"}).appendTo(".mini-menu"),
                    height = ul.css("height") === "0px" ? ul[0].scrollHeight + "px" : "0px";
            clone.remove();
            ul.animate({"height":height});
            return false;
        });
           $('.mini-menu > ul > li > a').click(function(){
           $('.sub a').removeClass('active');
           $(this).addClass('active');
        }),
           $('.sub ul li a').click(function(){
           $('.sub ul li a').removeClass('active');
           $(this).addClass('active');
        });
    });
   
</script> 

 






<script src="script.js" ></script>

<script>
    $( function() {
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 1000,
      values: [ 20, 200 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "Rs." + ui.values[ 0 ] + " - Rs." + ui.values[ 1 ] );
         var mi = ui.values[0];
              var mx = ui.values[1];
              filterSystem(mi, mx);
      }
    });
    $( "#amount" ).val( "Rs." + $( "#slider-range" ).slider( "values", 0 ) +
      " - Rs." + $( "#slider-range" ).slider( "values", 1 ) );
  } );


  function filterSystem(minPrice, maxPrice) {
      $(".items div.item").hide().filter(function () {
          var price = parseInt($(this).data("price"), 10);
          return price >= minPrice && price <= maxPrice;
      }).show();
  }
  </script>
  <jsp:include page="Footer.jsp"/>
</body>
</html>