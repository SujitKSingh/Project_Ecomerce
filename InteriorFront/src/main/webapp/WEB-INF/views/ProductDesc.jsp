<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>

<title>ProductDescription</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<h3 align="center" class="container-fluid well">Product Description </h3>

<form action="<c:url value='/addtoCart/${product}'/>"  >
	<table align="center" border="4" class="table table-striped table-hover container-fluid" style="height:250;width:800;" >
		<tr align="center" bgcolor="#7e57c2">
			<td colspan="2">Product Details</td>
		</tr>
		<tr align="center">
			<td colspan="2">
				<img src="<c:url value="/resources/images/${ProductInfo.productId}/1.jpg"/>"
				width="150" height="150" />
				<img src="<c:url value="/resources/images/${ProductInfo.productId}/2.jpg"/>"
				width="150" height="150" />
				<img src="<c:url value="/resources/images/${ProductInfo.productId}/3.jpg"/>"
				width="150" height="150" />
				<img src="<c:url value="/resources/images/${ProductInfo.productId}/4.jpg"/>"
				width="150" height="150" />
			</td>
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
			<td>Suplier </td>
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
		<tr >
			<td colspan="2"><center>
				<c:if test="${pageContext.request.userPrincipal.name!='Sumit'}">	
				<input type="Submit" value="Add To Cart" class="btn btn-success" style="height:35;width:100;" />
				</c:if>
				</center></td>
		</tr>
	</table>
</form>
<%@include file="/WEB-INF/views/Footer.jsp"%>
