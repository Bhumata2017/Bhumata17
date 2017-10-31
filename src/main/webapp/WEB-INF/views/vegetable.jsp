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
  
   <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   

<title>Insert title here</title>


<style type="text/css">
.btn {
background-color: #ffd11a;
padding-top:3px;
padding-bottom:3px;}s
.aa {

margin-top:2px;}
select { width:225px;text-align:center; }
select .lt { text-align:center; }
select { text-indent: 5px; }
<!--

.item:hover { -moz-box-shadow: 0 0 40px #ccc; -webkit-box-shadow: 0 0 40px #ccc; box-shadow: 0 0 40px #ccc; }
-->

.item:focus

body {
    background-color: #EAEAEA;
    font-family: 'Roboto', sans-serif;
}
.wrap {
    max-width: 1300px;
    margin: 0 auto ;
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
    margin: 8px;
    display: inline-block;
}
 .item {
    vertical-align: top;
    width: 230px; 
    height: 320px; 
    margin: 8px;
    background:#FEFEFE; 
    display: inline-block;
    border-radius: 3px;
    box-shadow:0 0 8px rgba(0, 0, 0, 0.06);
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
    width: 200px;
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
.mini-menu > ul > li > a {
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
/*.mini-menu .sub > ul > li > a:hover,*/
.mini-menu .sub > a.active,
 {
    padding-left: 1.3em;
    color: blue;
    content: "1";
    float: right;
    margin-right:6px;
    line-height: 12px;
}
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

</style>
</head>
<body>

<body>


<div class="wrap">
    <div class="menu">
        <div class="mini-menu">
            <ul>
        <li class="sub">
            <a href="showVegetable">Fresh vegetables</a>
            <ul>
               <li><a href="#">Beans,Brinjals,okra</a></li>
               <li><a href="#">cabbage,cauiliflower,broccoli</a></li>
               <li><a href="#">cucumber and capcicum</a></li>
               <li><a href="#">gourds,pumpkins,drumsticks</a></li>
               <li><a href="#">leafy vegetables</a></li>
               <li><a href="#">Peas,corn,mushrooms</a></li> 
               <li><a href="#">root vegetables</a></li> 
               <li><a href="#">potatoes,onions,tomatos</a></li> 
            </ul>
        </li>
        <li class="sub">
            <a href="showFruit">Fresh Fruits</a>
            <ul>
               <li><a href="#">Banana,Sapota,Guava</a></li>
               <li><a href="#">Melon</a></li>
               <li><a href="#">Mango</a></li>
               <li><a href="#">Seasonal</a></li>
               <li><a href="#">Grapes,Berries,Cherries</a></li>
               <li><a href="#">Papaya,Pineapple,Pomegranate</a></li>
               <li><a href="#">Oranges,Sweet Lime and other Citrus</a></li>
               <li><a href="#">Apples,Peaches,Pears and Plums</a></li> 
            </ul>
        </li>
        <li class="sub">
            <a href="#">SEEDS</a>
            <ul>
                <li><a href="#">aaa</a></li>
               <li><a href="#">bbb</a></li>
               <li><a href="#">ccc</a></li>
               <li><a href="#">ddd</a></li>
               <li><a href="#">eee</a></li>
               <li><a href="#">fff</a></li> 
            </ul>
        </li>
        <li class="sub">
            <a href="#">DRY-FRUITS</a>
            <ul>
            <li><a href="#">Almond</a></li>
               <li><a href="#">Cashew Nut</a></li>
               <li><a href="#">Dates</a></li>
               <li><a href="#">Dried fig</a></li>
               <li><a href="#">Raisin</a></li>
               <li><a href="#">Walnut</a></li> 
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
            <img src="images/image/potato.jpg" alt="apple" class="img-item"></img>
                <div class="info">
                	 <p class="descroption">Fresho</p>
                    <h3>Potatoes</h3>
                    
                   <!--  <h5>Rs.160</h5> -->
                    <select id="mySelect" onClick="myFunction();">
  <option value="60">(1dozen 12 nos.Rs.60)
  <option value="30">1/2dozen. approx 6 nos. Rs.30
  <option value="60">1dozen. 12 nos. Rs.60
 
</select>






<p id="demo"></p>

<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
    document.getElementById("demo").innerHTML = "Price: " + x;
}
</script>
        <table>
         <div class="aa">
         <tr><td>
         
         Qty:<input type="text" name="qty" style="width: 30px;">
         </td>
         <td>
         	<button class="btn" qa="add" type="button"  style="margin-left: 65px;">
         	<a href="showForm">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	</a>
         	</button> 
         	</tr></td>
         	</div>
         	
         	</table>
                </div>
                
        </div>
  
        <div data-price="60" class="item">
            <img src="images/image/onion.jpg" alt="jacket" class="img-item" ></img>
                <div class="info">
                  <p class="descroption">Fresho</p>
                    <h3>Onions</h3>
                    <h5>Rs.60</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1dozen 12 nos.Rs.60)</option>
            <option value="500">1/2dozen. approx 6 nos. Rs.30</option>
            <option value="1000">1dozen. 12 nos. Rs.60</option>
        </select>
       
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<a href="showdisplayproduct/37">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong></a>
         	
         	</button> 
         	</div>
          
         </div>
        </div>
        <div data-price="80" class="item">
            <img src="images/image/tomato.jpg" class="img-item"></img>
                <div class="info">
                  <p class="descroption">Fresho</p>
                  <h3>Grapes</h3>
                    <h5>Rs.80</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg.  Rs.120)</option>
            <option value="250">250gm.  Rs.30</option>
            <option value="500">500gm.  Rs.60</option>
            <option value="1000">1kg.  Rs.120</option>
        </select>
        
	 <!-- Display the payment button. -->
    <div class="aa">
    <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>
                
         </div>
        </div>
         <div data-price="120" class="item">
            <img src="images/image/cucumber.jpg" class="img-item"></img>
                <div class="info">
                    <p class="descroption">Fresho</p>
                    <h3>Cucumber</h3>
                    <h5>Rs.120</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg. approx 8,9 nos. Rs.120)</option>
            <option value="250">250gm. approx 1,2 nos. Rs.30</option>
            <option value="500">500gm. approx 6,7 nos. Rs.60</option>
            <option value="1000">1kg. approx 8,9 nos. Rs.120</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>
                
                            </div>
        </div>
         <div data-price="100" class="item">
            <img src="images/image/capsicum.jpg" class="img-item"></img>
                <div class="info">
                    <p class="descroption">Fresho</p>
                    <h3>Capsicum</h3>
                    <h5>Rs.100</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg. approx 1,2 nos. Rs.100)</option>
            <option value="500">500gm. approx 1 nos. Rs.50</option>
            <option value="1000">1kg. approx 1,2 nos. Rs.100</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>        
                
                   </div>
        </div>
         <div data-price="140" class="item">
            <img src="images/image/cabbage.jpg"alt="jacket" class="img-item"></img>
                <div class="info">
                    <p class="descroption">Fresho</p>
                    <h3>Cabbage</h3>
                    <h5>Rs.140</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg. approx 8,9 nos. Rs.140)</option>
            <option value="250">250gm. approx 1,2 nos. Rs.35</option>
            <option value="500">500gm. approx 5,6 nos. Rs.70</option>
            <option value="1000">1kg. approx 8,9 nos. Rs.140</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>    
                </div>
        </div>
         <div data-price="150" class="item">
            <img src="images/image/cauliflower.jpg"alt="jacket" class="img-item"></img>
                <div class="info">
                  <p class="descroption">Fresho</p>
                    <h3>Cauliflower</h3>
                    <h5>Rs.150</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg. approx 1,2 nos. Rs.150)</option>
            <option value="500">500gm. approx 1,2 nos. Rs.75</option>
            <option value="1000">1kg. approx 1,2 nos. Rs.150</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>
        
                </div>
          </div>
          
         <div data-price="90" class="item">
            <img src="images/image/beans.png"alt="jacket" class="img-item"></img>
                <div class="info">
                    <p class="descroption">Fresho</p>
                    <h3>Beans</h3>
                    <h5>Rs.90</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg. approx 5,6 nos. Rs.90)</option>
            <option value="250">250gm. approx 1,2 nos. Rs.22.5</option>
            <option value="500">500gm. approx  3,4nos. Rs.45</option>
            <option value="1000">1kg. approx 5,6 nos. Rs.90</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>        
                </div>
         </div>
         
         <div data-price="120" class="item">
            <img src="images/image/bringal.jpg"alt="jacket" class="img-item"></img>
                <div class="info">
                    <p class="descroption">Fresho</p>
                    <h3>Brinjals</h3>
                    <h5>Rs.120</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1kg. approx 1,2 Rs.120)</option>
            <option value="500">500gm. approx 1 nos. Rs.60</option>
            <option value="1000">1kg. approx 1,2 nos. Rs.120</option>
        </select>
        
	 <!-- Display the payment button. -->
    <div class="aa">
    <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>     
                </div>
         </div>
         
         <div data-price="80" class="item">
            <img src="images/image/okra.jpg"alt="chikoo" class="img-item"></img>
                <div class="info">
                    <p class="descroption">Fresho</p>
              		<h3>Okra</h3>
                    <h5>Rs.80</h5>
                    
                    <select name="os0" id="os0">
            <option value="1000">(1kg. approx 14,16 nos. Rs.80)</option>
            <option value="250">250gm. approx 4,5 nos. Rs.20</option>
            <option value="500">500gm. approx 7,8 nos. Rs.40</option>
            <option value="1000">1kg. approx 14,16 nos. Rs.80</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>    
                   </div>
               </div>    
               
               <div data-price="60" class="item">
            <img src="images/image/pumpkins.jpg" alt="beans" class="img-item" ></img>
                <div class="info">
                  <p class="descroption">Fresho</p>
                    <h3>Pumpkins</h3>
                    <h5>Rs.15</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1dozen 12 nos.Rs.60)</option>
            <option value="500">1/2dozen. approx 6 nos. Rs.30</option>
            <option value="1000">1dozen. 12 nos. Rs.60</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>
                
                                 </div>
        </div>  
          <div data-price="60" class="item">
            <img src="images/image/drumstick.jpg" alt="beans" class="img-item" ></img>
                <div class="info">
                  <p class="descroption">Fresho</p>
                    <h3>Drumsticks</h3>
                    <h5>Rs.15</h5>
                     <select name="os0" id="os0">
            <option value="1000">(1dozen 12 nos.Rs.60)</option>
            <option value="500">1/2dozen. approx 6 nos. Rs.30</option>
            <option value="1000">1dozen. 12 nos. Rs.60</option>
        </select>
        
	 <!-- Display the payment button. -->
     <div class="aa">
     <br>
         	<button class="btn" qa="add" type="button" style="margin-left: 65px;">
         	<strong style=" text-shadow: 1px 1px #fff;">Add to Cart </strong>
         	
         	</button> 
         	</div>
                
                                 </div>
        </div>    
          
        </div>
  </div>
 <button class="loadmore">Load More</button>
    </div>
</div>

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
</html>
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
  
//   $( "#slider-range" ).on( "slidechange", function( event, ui ) {
//     console.log(ui.value);
// } );
</script>

</body>
</html>