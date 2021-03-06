<%@include file="/WEB-INF/views/Header.jsp"%>

<head>
<title>Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet'>
</head>
<body>
	<div class="image-aboutus-banner container-fluid">
		<div >
			<div class="row">
				<div class="col-md-12">
					<h1 class="lg-text">Contact Us</h1>
					<p class="image-aboutus-para">We entertain you issues, Feel
						free to contact us.</p>
				</div>

	<div class="contact-section paddingTB60 ">
		<div >
			<div class="row well">
				<div class="col-md-3 col-sm-4 ">
				<i class="fa fa-home"></i> <b>Just order Inc.</b><br> 41
				Sapru Marg<br> Lucknow, 226001 INDIA<br> <br> 
				<i class="fa fa-phone"></i> <b>1800-xxx-111</b><br> 
				<i class="fa fa-fax"></i> <b>1800-xxx-111</b><br> 
				<i class="fa fa-envelope"></i> <a href="mailto:example@info.com">info@justorder.in</a><br><br> 
				<i class="fa fa-home"></i> <b>Mon - Fri 9.00 -18.00</b><br> Saturday - Sunday CLOSED
				</div>
		<div class="col-md-9 col-sm-8">
			<form method="post" id="contactform" name="contactform" class="contact-form clearfix" action="getemail">
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
						<input id="username" required="required" name="username" class="form-control input-lg" placeholder="User Name" type="text">
						</div>
						<div class="form-group">
						<input id="email" name="email" required="required" class="form-control input-lg" placeholder="Email*" type="email">
						</div>
						<div class="form-group">
						<input id="mobileNo" name="mobileNo" required="required" class="form-control input-lg" placeholder="mobileNo" type="text">
						</div>
					</div>
					<div class="col-md-7">
						<div class="form-group">
						 	<textarea cols="6" rows="8" id="comment" name="comment" required="required" class="form-control input-lg" placeholder="Message"></textarea>
						</div>
							<input id="submit" name="submit" class="btn btn-primary btn-lg  site-btn pull-right" value="Submit now!" type="submit">
					
					</div>
					<div class="col-sm-12" style="color:blue;"><center><h3>${message}</h3></center></div>
					
					
				</div>
			</form>
		</div>

		<div class="cta-sektion cta-padding35">
			<div class="container-fluid well">
				<div class="row">
					<div class="col-md-9 col-sm-9 col-xs-12 " align="center">
						<h3><span class="glyphicon glyphicon-cog "></span> <b>Products for sale?</b> Explore products like a pro. &nbsp;&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/productPage"><button type="button"  class="btn btn-primary site-btn">Start Right Now</button></a> </h3>
					</div>
				</div>
			</div>
		</div>

	<div class="footer-section ">
		<div class="footer ">
			<div class="container-fluid well">
				<div class="col-md-4 footer-one">
					<h3>About Us</h3><p>Just Order is something a bit different from other e-commerce sites, which focuses on consumers experience.</p>
					<div class="social-icons">
						<a href="https://www.facebook.com/"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a> 
						<a href="https://twitter.com/"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a> 
						<a href="https://plus.google.com/"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a> 
						<a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
					</div>
				</div>
		<div class="col-md-3 footer-two">
			<h4>Information</h4>
			<ul>
				
				<li><a href="maintenance.html">Maintenance Tips</a></li>
				<li><a href="contact.html">Locations</a></li>
				<li><a href="about.html">Testimonials</a></li>
				<li><a href="about.html">Careers</a></li>
				<li><a href="about.html">Partners</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-three">
			<h4>Helpful Links</h4>
				<ul>
					<li><a href="maintenance.html">Maintenance Tips</a></li>
					<li><a href="contact.html">Locations</a></li>
					<li><a href="about.html">Testimonials</a></li>
					<li><a href="about.html">Careers</a></li>
					<li><a href="about.html">Partners</a></li>
				</ul>
		</div>
		<div class="col-md-2 footer-four">
			<h4>Helpful Links</h4>
				<ul>
				<li><a href="maintenance.html">Maintenance Tips</a></li>
				<li><a href="contact.html">Locations</a></li>
				<li><a href="about.html">Testimonials</a></li>
				<li><a href="about.html">Careers</a></li>
				<li><a href="about.html">Partners</a></li>
				</ul>
		</div>
							
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="/WEB-INF/views/Footer.jsp"%>
</body>
