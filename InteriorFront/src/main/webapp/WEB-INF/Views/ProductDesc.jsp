<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h3 align="center" class="container well">Product Description </h3>

<form action="<c:url value='/addtoCart/${product}'/>">
	<table align="center" width="40%" height="40%" border="2">
		<tr align="center" bgcolor="#7e57c2">
			<td colspan="2">Product Details</td>
		</tr>
		<tr>
			<td colspan="2"><img
				src="<c:url value="/resources/images/${ProductInfo.productId}.jpg"/>"
				width="100%" height="100%" /></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Price</td>
			<td>${ProductInfo.productPrice}</td>
		</tr>
		<tr bgcolor="pink">
			<td>Product Name</td>
			<td>${ProductInfo.productName}</td>
		</tr>
		<tr bgcolor="pink">
			<td>Category </td>
			<td>${categoryName}</td>
		</tr>
		<tr bgcolor="pink">
			<td>Supplier </td>
		<td>${suplierName}</td> 
		</tr>
		<tr bgcolor="pink">
			<td>Product Description</td>
			<td>${ProductInfo.productDesc}</td>
		</tr>
		<tr bgcolor="pink" >
			<td>Quantity</td>
			<td><select name="quantity">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
			</select></td>
		</tr>
		<tr bgcolor="cyan">
			<td colspan="2"><center>
				<c:if test="${pageContext.request.userPrincipal.name!='Sumit'}">	
				<input type="Submit" value="Add To Cart" />
				</c:if>
				</center></td>
		</tr>
	</table>
</form>
<%@include file="/WEB-INF/views/Footer.jsp"%>
