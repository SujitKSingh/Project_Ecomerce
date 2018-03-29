<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<table align="center" class="table table-striped table-hover">
	<tr class="danger">
		<td colspan="5"><center>Your Cart</center></td>
	</tr>
	<c:if test="${grandTotal!=0}">
		<tr class="Success">
			<td>Product ID</td>
			<td>Quantity</td>
			<td>SubTotal</td>
			<td colspan="2">Operation</td>
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
			<tr class="Info ">
				<td>${cartItem.productId}</td>
				<td><input type="text" name="qty" value="${cartItem.quantity}" /></td>
				<td>${cartItem.subTotal}</td>
				<td><input type="submit" value="Update" class="btn btn-success btn-block" /></td>
				<td ><a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>"
					class="btn btn-danger btn-block">Delete</a></td>
			</tr>
		</form>
	</c:forEach>
	<c:if test="${grandTotal!=0}">
		<tr align="center" class="Success">
			<td colspan="5" ><b><strong>Grand Total - </strong> Rs.${grandTotal}/-</b></td>
		</tr>
	</c:if>
	<tr>
		<td colspan="2" ><center>
				<a href="<c:url value="/productPage"/>"
					class="btn btn-danger btn-block">Continue Shopping</a>
			</center></td>
		<c:if test="${grandTotal!=0}">
			<td colspan="3"><center>

					<a href="<c:url value="/ConfirmOrder"/>"
						class="btn btn-danger btn-block">Check Out</a>
		</c:if>
		</center>
		</td>
	</tr>
</table>
</html>