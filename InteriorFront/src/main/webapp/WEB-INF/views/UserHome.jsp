<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div class="container-fluid well ">

		<h3 align="center" style="background-color: #81d4fa;">User Home</h3>
		<table class=" container-fluid table table-striped table-hover "
			style="border:5px;">
			<tr style="background-color: #81d4fa;" align="center">
				<td>Order No</td>
				<td>UserName</td>
				<td>Order Detail</td>
				<td>TotalAmount</td>
				<td>ShippingAddress</td>
				<td>Transaction Type</td>
			</tr>
			<c:set var="i" value="1" />
			<c:forEach items="${orderdetails}" var="order">
				<tr>
					<td>${i}</td>
					<td>${username}</td>
					<td align="center">${order.orderDate}</td>
					<td>${order.totalAmount}</td>
					<td>${order.shippingAddress}</td>
					<td align="center">${order.transactionType}</td>
				</tr>
				<c:set var="i" value="${i+1}" />
			</c:forEach>
		</table>
	</div>
</body>

<%@include file="/WEB-INF/views/Footer.jsp"%>