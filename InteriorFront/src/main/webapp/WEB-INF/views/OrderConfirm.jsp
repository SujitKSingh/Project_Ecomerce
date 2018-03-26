<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<c:if test="${grandTotal==0}">

<c:redirect url="/productPage"/>
</c:if>
<table align="center" class="table">
	<tr class="danger">
		<td colspan="4"><center>Your Order</center></td>
	</tr>
	<tr>
		<td>Product Id</td>
		<td>Quantity</td>
		<td>Sub Total</td>
		<td>Operation</td>
	</tr>

	<c:forEach items="${cartList}" var="cartItem">
		<form  action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"
			method="get" >
			<tr class="info">

				<td>${cartItem.productId}</td>
				<td><input type="text" name="qty" value="${cartItem.quantity}" /></td>
				<td>${cartItem.subTotal}</td>
				<td><input type="submit" value="Update" class="btn-sucess " />
				<td><a
					href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>"
					class="btn btn-danger btn-block">Delete</a></td>
			</tr>
		</form>
	</c:forEach>

	<tr>
		<td colspan="2">Grand Total</td>
		<td colspan="2">Rs ${grandTotal}</td>
	</tr>
</table>

<form id="myForm" action="<c:url value="PaymentConfirm" />" method="get">
	<table align="center" class="table">
		<tr bgcolor="pink">
			<td colspan="2">Payment Option</td>
		</tr>
		<tr>
			<td colspan="2">Payment Mode</td>
			<td><input type="radio" checked="checked" name="pmode" value="CC" />Credit Card <input
				type="radio" name="pmode" value="NB" />Net Banking <input
				type="radio" name="pmode" value="COD" />Cash On Delivery</td>
		</tr>

		<tr>
			<td>Shipping Address</td>
			<td><textarea  name="shipAddr"> </textarea><span style="color: red;">${Null}</span></td>
		</tr>

		<tr>
			<td colspan="2"><input type="submit" name="submit" value="Pay" /></td>
		</tr>
	</table>
</form>

<%@include file="/WEB-INF/views/Footer.jsp"%>

