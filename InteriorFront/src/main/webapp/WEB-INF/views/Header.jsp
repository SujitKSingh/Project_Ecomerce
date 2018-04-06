<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />

<link  href="<c:url value="/resources/CSS/fontawesome.css"/>"/>
<link  href="<c:url value="/resources/CSS/solid.css"/>"/>

<link  href="<c:url value="/resources/CSS/bootstrap.min.css"/>"/>
<link  href="<c:url value="/resources/CSS/css1.css"/>"/>

<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>



<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet'>

<script >
 window.menu ='${title}';
 window.contextRoot='${contextRoot}';
</script>
<style type="text/css">
#upperLabel {
	background-color:#81d4fa;;
	padding: 0px;
	margin: 0px;
	width: 100%;
}


.inputText {
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: #3c3d41;
	box-shadow: 1px 1px 1px 1px #ccc;
	width: 200px;
	height: 30px;
}
</style>
</head>

<body style="background-image: url('/InteriorFront/resources/images/backgroundcr.jpg');" >
	<div id="upperLabel" class="container-fluid">
		<div class="container-fluid" style="padding-left: 15px">
			<i class="fa fa-shopping-cart"></i><label>Just Order</label>
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
				<c:forEach items="${categories}" var="category" end="4">
					<li><a href="<c:url value='/Products/${category.categoryId}'/>">${category.categoryName}</a></li>
				</c:forEach>
				
					<li><a href="${pageContext.request.contextPath}/aboutus" >About Us</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
				<c:if test="${pageContext.request.userPrincipal.name=='Sumit'}">
					<li><a href="${pageContext.request.contextPath}/category">Category</a></li>
					<li><a href="${pageContext.request.contextPath}/product">Product</a></li>
					<li><a href="${pageContext.request.contextPath}/suplier">Suplier</a></li>
				</c:if>
					<li><a href="${pageContext.request.contextPath}/productPage">All Products</a></li>
				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="${pageContext.request.contextPath}/register">Register</a></li>
					<li><a href="${pageContext.request.contextPath}/login" >Login</a></li>
					
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li><a href="<c:url value="/UserHome"/>">${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="${pageContext.request.contextPath}/perform_logout">Logout</a></li>
					
				
				</c:if>
			</ul>
			</div>
		</nav>
	</div>