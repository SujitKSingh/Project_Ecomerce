<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="Stylesheet"
	href="<c:url value="/resources/CSS/boostrap-css.css"/>" />

<script
	src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>

<div>
	<footer class="footer-bs container-fluid">
		<div class="row ">
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
						<li><a href="<c:url value="/Products/51"/>" >Travel</a></li>
						<li><a href="<c:url value="/Products/38"/>">Nature</a></li>
						<li><a href="${pageContext.request.contextPath}/productPage">Explores</a></li>
						<li><a href="<c:url value="/Products/51"/>">Science</a></li>
						<li><a href="#">Advice</a></li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="list">
						<li><a href="${pageContext.request.contextPath}/aboutus">About
								Us</a></li>
						<li><a href="${pageContext.request.contextPath}/contactus">Contacts</a></li>
						<li><a href="${pageContext.request.contextPath}/termsandconditions">Terms & Condition</a></li>
						<li><a href="${pageContext.request.contextPath}/privacy">Privacy Policy</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2 footer-social animated fadeInDown">
				<h4>Follow Us</h4>
				<ul>
					<li><i class="fab fa-facebook-f"></i><a href="https://www.facebook.com/">Facebook</a></li>
					<li><a href="https://twitter.com/">Twitter</a></li>
					<li><a href="https://www.instagram.com/">Instagram</a></li>
					<li><a href="http://www.ecommercemag.fr/RSS">RSS</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-ns animated fadeInRight">
				<!-- <h4>Newsletter</h4>
				<p>Get the latest updates on your mail</p>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-envelope"></span>
						</button>
					</span> -->
				</div>
			</div>
		</div>
	</footer>
</div>
<div class="copy container-fluid well" >
	<strong>CopyRight @ 2018 Designed by Sujit K.Singh</strong>
</div>
</body>

</html>

