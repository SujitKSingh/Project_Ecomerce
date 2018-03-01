<%@ page language="java" contentType="text/html"%>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-container  w3-purple">
  <h3>ShopAway</h3>
  <p>Come to us Shop with us </p>
</div>
<div class="w3-container w3-yellow accent-4">
	
	<a href="${pageContext.request.contextPath}\login" >Login</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}\register">Register</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}\aboutus">About Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}\contactus">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}\category">Category</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}\product">Product</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}\productpage">Product Page</a>&nbsp;&nbsp;|&nbsp;&nbsp;
 </div>
</body>
</html>