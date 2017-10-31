<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/productlogin.js" type="text/javascript"></script>  
</head>
<style type="text/css">
input[type=text], select, textarea {
    width: 100%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
    background-color: #45a049;
}

/* Style the reset button with a specific background color etc */
input[type=reset] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the reset button, add a darker green color */
input[type=reset]:hover {
    background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    
    padding: 20px;
}
.div2 {
    width: 500px;
    height: 40px;    
   /*  padding: 30px; */
    margin-left: 430px;
   /*  border: 1px solid red; */
}

</style>





<body>

<div class="div2">
<div class="container">
<form action="saveProduct" name="productlogin" id="productlogin" enctype="multipart/form-data" method="post" onSubmit=" return CheckDecimal(document.productlogin.price); " >

<label for="pName">Product Name:<input type="text" name="name" id="name" placeholder="Product Name" onBlur="CheckName(); return false;" required/></label>
<span  id="error"></span><br>
<label for="pCategory">Product Category:<input type="text" name="Category" id="Category" placeholder="Product Category" onBlur= "CheckCategory();return false;" required/></label>
<span  id="error1" > </span><br>

<label for="price">Price:<input type="text" name="price" placeholder="Price"  onBlur="CheckDecimal(document.productlogin.price);return false;" required/></label>
<label for="quantity">Quantity:<input type="text" name="quantity" placeholder="Quantity" onBlur="allnumeric(document.productlogin.quantity);return false;" required></label>
<span  id="error2"> </span><br><br>
<label for="desc">Description:</label>
<textarea id="subject" name="desc" placeholder="Write something about product.." style="height:200px"></textarea>

<label for="image">Image:<input type="file" name="productImg"><a href="showHome"></a><input type="submit" value="Submit"> <input type="reset" value="Reset"></label>
</form>



 
 
 
 
 
 
 
 
 
 
 
 
 
 



</div></div>
</body>
</html>