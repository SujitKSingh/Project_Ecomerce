<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid well">
		<div class="row">
			<div>
				<h3 align="center" background-color="#81d4fa"
					class="container-fluid well">Product Page</h3>
			</div>
		</div>

		<div class="row">
			<div>
				<strong>Product Detail</strong>
			</div>
		</div>

		<div class="row">
			<form style="margin-top: 10px;"
				action="${pageContext.request.contextPath}/filterBy">
				<select name="min" style="height: 35px; width: 150px;">
					<option value="Select Minimum">Select Minimum</option>
					<option value="0">0</option>
					<option value="1000">1000</option>
					<option value="2000">2000</option>
					<option value="5000">5000</option>
					<option value="10000">10000</option>
				</select> <select name="max" style="height: 35px; width: 150px;">
					<option value="Select Maximum">Select Maximum</option>
					<option value="1000">1000</option>
					<option value="2000">2000</option>
					<option value="5000">5000</option>
					<option value="10000">10000</option>
					<option value="15000">15000</option>
				</select>&nbsp;&nbsp;&nbsp;<input type="submit" value="Go"
					style="height: 35px; width: 80px;" class="btn btn-success" />
			</form>
		</div>


		<div class="row">
			<c:forEach items="${listProducts}" var="product">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail" align="center" >
					<a href="<c:url value="/productDesc/${product.productId}"/>" style="text-decoration:none;" > 
					   <img src="<c:url value="/resources/images/${product.productId}/1.jpg"/>" /><br /> 
						<STRONG>${product.productName}</STRONG> <br/>
						<strong>INR. ${product.productPrice} /-</strong> <br/>
					</a>
					
					<div class="caption">
						<p align="center">
							<a href="<c:url value="/productDesc/${product.productId}"/>" class="btn btn-primary" role="button" style="height:35px;width:100px;"><strong>View</strong></a> 
							<a href="<c:url value="/addtoCart/${product.productId}?quantity=1"/>" class="btn btn-success" role="button" style="height:35px;width:100px;"><strong>Add To Cart</strong></a> 
					
						</p>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>	
	</div>
</body>
<%@include file="/WEB-INF/views/Footer.jsp"%>
