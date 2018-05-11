<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>OrderConfirm</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<c:if test="${grandTotal==0}">

	<c:redirect url="/productPage" />
</c:if>

<div class="row well" style="width:1365px;">
	<div class="row" style="background-color:#bcaaa4;"><center><strong>Your Order</strong></center></div>
	
	<div class="row" align="center" style="background-color:#fbe9e7;" >
		<div class="col-sm-3">Product Id</div>
		<div class="col-sm-3">Quantity</div>
		<div class="col-sm-3">Sub Total</div>
		<div class="col-sm-3">Operation</div>
	</div>

	<div class="row" align="center">
		<c:forEach items="${cartList}" var="cartItem">
			<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
				<div class="col-sm-3">${cartItem.productId}</div>
				<div class="col-sm-3">
					<input type="text" name="qty" value="${cartItem.quantity}" />
				</div>
				<div class="col-sm-3">${cartItem.subTotal}</div>
				<div class="col-sm-3">
						<input type="submit" value="Update" class="btn btn-info" />
						<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>"
							class="btn btn-success">Delete</a>
				</div>
			</form>
		</c:forEach>
	</div>

	<div class="row" style="background-color:#fbe9e7;" align="center">
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3"  ><strong><label>Grand Total - </label> Rs ${grandTotal}</strong></div>
		<div class="col-sm-3"></div>
	</div>
		
	<form id="myForm" action="<c:url value="PaymentConfirm" />" method="get">
	<div class="row" >
		<div class="row" align="center">
			<div style="background-color:#d7ccc8 ;" ><strong>Payment Mode</strong></div>
			<div >
				<input type="radio" checked="checked" name="pmode" value="CC" />Credit Card
				<input type="radio" name="pmode" value="NB" />Net Banking
				<input type="radio" name="pmode" value="COD" />Cash On Delivery
			</div>	
	    </div>
	</div>
	
	<div class=" row well" align="center"   >
		<div style="background-color:#d7ccc8 ;"><strong>Shipping Address</strong></div><br>
		<div >
			<textarea name="shipAddr" required></textarea><br>
			<span style="color: red;">${Null}</span>
		</div>
	</div>

	<div class="row well">
		<div class="col-sm-5"></div>
		<div class="col-sm-2" align="center" >
			<input type="submit" class="btn btn-success"
				style="height: 35px; width: 100px;" name="submit" value="PAY"  />
		</div>
		<div class="col-sm-5"></div>
		
	</div>
	</form>
	
</div>
</div>
<%@include file="/WEB-INF/views/Footer.jsp"%>



