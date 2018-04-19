<%@include file="/WEB-INF/views/Header.jsp"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid" style="width:100%" >
		<div id="myCarousel" class="carousel slide " data-ride="carousel">

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
				<a href="/InteriorFront/productDesc/133">
					<img class="img-fluid"
						src="<c:url value="/resources/images/133.jpg"/>" alt="Lava"
						style="width:100%; height: 500px" >
						</a>
					<div class="carousel-caption">
						<h3>LAVA IRIS</h3>
						<p>With SnapDragon Processor</p>
					</div>
				</div>

				<div class="item">
				<a href="/InteriorFront/productDesc/48">
					<img class="img-fluid"
						src="<c:url value="/resources/images/FormalPeter.jpg"/>" alt="FormalShirt"
						style="width: 100%; height: 500px">
						</a>
					<div class="carousel-caption">
						<h3>Peter England</h3>
						<p>Threaded With Pure Cotton!</p>
					</div>
				</div>

				<div class="item">
				<a href="/InteriorFront/productDesc/134">
					<img class="img-fluid"
						src="<c:url value="/resources/images/203.jpg"/>" alt="Pen"
						style="width: 100%; height: 500px">
						</a>
					<div class="carousel-caption">
						<h3>Parker</h3>
						<p>Write your future!</p>
					</div>
				</div>
				
				<div class="item">
					<img class="img-fluid"
						src="<c:url value="/resources/images/book.jpg"/>" alt="Books"
						style="width: 100%; height: 500px">
					<div class="carousel-caption">
						<h3>Popular Books</h3>
						<p>Read and Enjoy!</p>
					</div>
				</div>
				
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
</body>

<%@include file="/WEB-INF/views/Footer.jsp"%>
</html>

