<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#upperLabel {
	background-color: #F08080;
}
</style>
</head>
<body style="background-image:url('/InteriorFront/resources/images/backgroundcr.jpg');">
	<div id="upperLabel" class="container-fluid">
		<i class="fas fa-shopping-cart"></i> <label>Just Order</label>
	</div>

	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<divclass"navbar-header"> <a class="navbar-brand"
					href="${pageContext.request.contextPath}/#">Just Order</a>
			</div>
			<ul class="nav navbar-nav">
				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
					<li><a href="${pageContext.request.contextPath}/register">Register</a></li>
				</c:if>
				<li><a href="${pageContext.request.contextPath}/aboutus">About
						Us</a></li>
				<li><a href="${pageContext.request.contextPath}/contactus">Contact
						Us</a></li>
				<c:if test="${pageContext.request.userPrincipal.name=='Sumit'}">
					<li><a href="${pageContext.request.contextPath}/category">Category</a></li>
					<li><a href="${pageContext.request.contextPath}/product">Product</a></li>
				</c:if>
				<li><a href="${pageContext.request.contextPath}/productPage">ProductPage</a></li>

				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li><a href="<c:url value="/UserHome"/>">${pageContext.request.userPrincipal.name}</c></a></li>
					<li><a
						href="${pageContext.request.contextPath}/perform_logout">Logout</a></li>

				</c:if>
				<ul>
	</div>
	</nav>
	</div>


</body>
</html>