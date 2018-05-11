<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="/WEB-INF/views/Header.jsp"%>


<!DOCTYPE HTML>

<html>

<head>
<title>My Profile</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elements" />

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script type="text/javascript"
	src="http://arrow.scrolltotop.com/arrow13.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>

<body style="background-color: #ffca28 ;">
	<div class="container" style="margin-top: 20px;">
		<div class="row">
			<h1 align="center" style="border: 2px solid pink; border-radius: 15px; background-color: #b2dfdb; color: white;">
				<span>O</span>rder <span>S</span>ummary</h1>
		</div>
		
		<div class="row" style="border: 2px solid pink; border-radius: 15px; background-color: #c6ff00 ; font-family: cursive;color:black;">
				<div class="col-sm-6" align="center" style="z-index: 1;">
				<h2>Personal Details</h2>
				</div>
				<div class="userdetail col-sm-6" align="left" style="background-color: #e8f5e9 ;z-index: 1;">
						<div class="name">
							<div><label>User Name :</label><label>${user.username}</label></div>
							<div><label>Phone Number :</label><label>${user.mobileNo}</label></div>
							<div><label>Email ID :</label><label>${user.emailId}</label></div>
						</div>
				</div>
		</div>			
		
		<div class="row">
		<h3 align="center" style="background-color:red;border: 2px solid pink; border-radius: 15px;font-family: cursive;color:white;">Your Order Summary</h3>
		</div>
		
		<div class="row" style="border: 2px solid pink; border-radius: 15px; background-color: #a5d6a7; font-family: cursive;" align="center">
				<div class="col-sm-3" style="border-right:2px solid pink;"><label>Order ID</label></div>
					<div class="col-sm-3" style="border-right:2px solid pink;"><label>Order Date</label></div>
					<div class="col-sm-3" style="border-right:2px solid pink;"><label>Ship Address</label></div>
					<div class="col-sm-3" style="border-right:2px solid pink;"><label>Total Amount</label>
				</div>
		</div>
		<c:forEach items="${mapList}" var="map">
		<div class="row" style="border: 2px solid pink; border-radius: 15px; background-color: #ffe082; font-family: cursive;" align="center">
			<div class="col-sm-3" style="border-right:2px solid pink;"><label>${map.key.oderid}</label></div>
			<div class="col-sm-3" style="border-right:2px solid pink;"><label>${map.key.orderDate}</label></div>
			<div class="col-sm-3" style="border-right:2px solid pink;"><label>${map.key.shippingAddress}</label></div>
			<div class="col-sm-3" style="border-right:2px solid pink;"><label>${map.key.totalAmount}</label></div>
		</div>
					
		<div class="row">
			<h2 class="sub-head-w3ls" style="font-family: cursive;background-color: cyan;border: 2px solid pink; border-radius: 15px;">See
						What You Purchased</h2>
		</div>
					
		<c:forEach items="${map.value}" var="prod">
		<div class="row" style="border:2px solid pink;background-color: pink;border: 2px solid pink; border-radius: 15px;" align="center">
						<div class="col-sm-2"><label>Product Image</label></div>
						<div class="col-sm-2"><label>Product Name</label></div>
						<div class="col-sm-2"><label>Quantity</label></div>
						<div class="col-sm-2"><label>Product Price</label></div>
						<div class="col-sm-2"><label>Supplier</label></div>
						<div class="col-sm-2"><label>Product Description</label></div>
		</div>
					
		<div class="row" align="center" style="background-color:white;border:2px solid pink; border-radius: 15px;">
			<div class="col-sm-2"><img style="width:100px;height:100px;" src="<c:url value="/resources/images/${prod.productId}.jpg" />"/></div>
			<div class="col-sm-2" ><label>${prod.productName}</label> </div>
			<div class="col-sm-2" ><label>${fn:length(map.value)}</label></div>
			<div class="col-sm-2" ><label>${prod.productPrice}</label></div>
			<div class="col-sm-2" ><label>${prod.suplierId}</label></div>
			<div class="col-sm-2" ><label>${prod.productDesc}</label></div>	
		</div>
					
		<div class="row">
			<hr>
		</div>
		</c:forEach>
		</c:forEach>
	</div>
</body>
<%@include file="/WEB-INF/views/Footer.jsp"%>


</html>