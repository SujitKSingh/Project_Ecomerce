<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"
	integrity="sha384-v2Tw72dyUXeU3y4aM2Y0tBJQkGfplr39mxZqlTBDUZAb9BGoC40+rdFCG0m10lXk"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"
	integrity="sha384-q3jl8XQu1OpdLgGFvNRnPdj5VIlCvgsDQTQB6owSOHWlAurxul7f+JpUOVdAiJ5P"
	crossorigin="anonymous">
<link rel="stylesheet" href="Registercss.css">

<!-- Angular Js  -->
<script src="angular.min.js"></script>

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
#upperLabel {
	background-color:  #eb984e;
	padding: 0px;
	margin: 0px;
	width: 100%;
}


.inputText {
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: #e8f5e9;
	box-shadow: 1px 1px 1px 1px #ccc;
	width: 200px;
	height: 30px;
}
</style>
</head>

<body style="background-image: url('/InteriorFront/resources/images/backgroundcr.jpg');">
	<div id="upperLabel" class="container-fluid">
		<div class="container-fluid" style="padding-left: 15px">
			<i class="fas fa-shopping-cart"></i><label>Just Order</label>
		</div>
	</div>
	<div id="upperLabel" class="container-fluid" >
		<nav class="navbar navbar-inverse ">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="${pageContext.request.contextPath}/#">Just
						Order</a>
				</div>
			<ul class="nav navbar-nav">
				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li style="padding: 10px"><input type="text" ng-model="curPlace" class="inputText "> </li>
					<li ng-repeat="place in placesVisited | filter:curPlace">
					<a ng-href="https://www.google.co.in/webhp?q={{place}}">{{place}} </a>
					</li>
					<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
					<li><a href="${pageContext.request.contextPath}/register">Register</a></li>
				</c:if>
					<li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
				<c:if test="${pageContext.request.userPrincipal.name=='Sumit'}">
					<li><a href="${pageContext.request.contextPath}/category">Category</a></li>
					<li><a href="${pageContext.request.contextPath}/product">Product</a></li>
					<li><a href="${pageContext.request.contextPath}/suplier">Suplier</a></li>
				</c:if>
					<li><a href="${pageContext.request.contextPath}/productPage">ProductPage</a></li>
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li><a href="<c:url value="/UserHome"/>">${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="${pageContext.request.contextPath}/perform_logout">Logout</a></li>
				</c:if>
			</ul>
			</div>
		</nav>
	</div>