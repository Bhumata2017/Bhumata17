
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="/WEB-INF/taglibs/image.tld" prefix="ui"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<th>Id</th>
<th>Product Name</th>
<th>Product Category</th>
<th>Price</th>
<th>Quantity</th>
<!-- <th>Description</th> -->
<th>Product Image</th>
<th>SubTotal</th>



</tr>
<tr>

<td>${product.pId }</td>
<td>${product.productName }</td>
<td>${product.productCategory }</td>
<td>${product.price}</td>
<td>${product.quantity}</td>

<td><img src="<ui:image img='${product.productImg}' ></ui:image>" alt="Image"  style="width: 50px; height: 50px;"/></td>
<td>${product.price * product.quantity }</td>


</tr>

</table>
</body>
</html>