<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html"%>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="Stylesheet"
	href="<c:url value="/resources/CSS/boostrap-css.css"/>" />
</head>
<!------ Include the above in your HEAD tag ---------->

<div class="container-fluid">
	<section style="height: 80px;"></section>
	<div class="row" style="text-align: center;"></div>
	<!----------- Footer ------------>
	<footer class="footer-bs">
		<div class="row">
			<div class="col-md-3 footer-brand animated fadeInLeft">
				<h2>Just Order</h2>
				<p>Just Order is something a bit different from other e-commerce
					sites, which focuses on consumers experience.</p>
				<p>Copyright © 2018 Just Order, All rights reserved</p>
			</div>
			<div class="col-md-4 footer-nav animated fadeInUp">
				<h4>Menu â€”</h4>
				<div class="col-md-6">
					<ul class="pages">
						<li><a href="#">Travel</a></li>
						<li><a href="#">Nature</a></li>
						<li><a href="#">Explores</a></li>
						<li><a href="#">Science</a></li>
						<li><a href="#">Advice</a></li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="list">
						<li><a href="${pageContext.request.contextPath}/aboutus">About
								Us</a></li>
						<li><a href="${pageContext.request.contextPath}/contactus">Contacts</a></li>
						<li><a href="#">Terms & Condition</a></li>
						<li><a href="#">Privacy Policy</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2 footer-social animated fadeInDown">
				<h4>Follow Us</h4>
				<ul>
					<li><a href="#">Facebook</a></li>
					<li><a href="#">Twitter</a></li>
					<li><a href="#">Instagram</a></li>
					<li><a href="#">RSS</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-ns animated fadeInRight">
				<h4>Newsletter</h4>
				<p>Get the latest updates on your mail</p>
				<p>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-envelope"></span>
						</button>
					</span>
				</div>
				<!-- /input-group -->
				</p>
			</div>
		</div>
	</footer>
	<section style="text-align: center; margin: 10px auto;" class="container-fluid well">
		CopyRight @ 2018 Designed by <a href="http://enfoplus.net">Sujit
			K. Singh</a>
	</section>

</div>
</body>
</html>

