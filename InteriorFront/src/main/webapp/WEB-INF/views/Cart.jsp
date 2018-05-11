<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>Cart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<div>
<table align="center" class="table table-striped table-hover table-responsive">
	<tr class="well">
		<center><strong>Your Cart</strong></center>
	</tr>
	<c:if test="${grandTotal!=0}">
		<tr class="Success" align="center">
			<td>ProductImage</td>
			<td>Product Name</td>
			<td>Product ID</td>
			<td>Quantity</td>
			<td>SubTotal</td>
			<td colspan="3">Operation</td>
		</tr>
	</c:if>
	<c:if test="${grandTotal==0}">
		<tr>
			<td><h1>Your Cart is Empty Please add some product to
					proceed.</h1></td>
		</tr>
	</c:if>
	<c:forEach items="${cartList}" var="cartItem">
		<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"
			method="get">
			<tr class="Info " align="center">
				<td><img src="<c:url value="/resources/images/${cartItem.productId}.jpg"/>"
					width="150" height="150" /></td>
				<td style="padding-top: 70px !important;">${cartItem.product.productName}</td>
				<td style="padding-top: 70px !important;">${cartItem.productId}</td>
				<td style="padding-top: 70px !important;"><input type="text"
					name="qty" value="${cartItem.quantity}" /></td>
				<td style="padding-top: 70px !important;">${cartItem.subTotal}</td>
				<td style="padding-top: 70px !important;"><input type="submit"
					value="Update" class="btn btn-info btn-block" /></td>
				<td style="padding-top: 70px !important;"><a
					href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>"
					class="btn btn-danger btn-block">Delete</a></td>
			</tr>
		</form>
	</c:forEach>
	<c:if test="${grandTotal!=0}">
		<tr align="center" class="Success">
			<td colspan="8"><strong>Grand Total - </strong>
				Rs.${grandTotal}/-</b></td>
		</tr>
	</c:if>
	</table>
	</div>
	<div class="row well"> 
		<div class="col-sm-6" ><center>
				<a href="<c:url value="/productPage"/>"
					class="btn btn-warning btn-block">Continue Shopping</a>
			</center>
		</div>
		<div class="col-sm-6" >
		<c:if test="${grandTotal!=0}">
			<center>
					<a href="<c:url value="/ConfirmOrder"/>" class="btn btn-success btn-block">Check Out</a>
		</c:if>
		</center>
		</div>
	</div>
	</div>
	
</html>