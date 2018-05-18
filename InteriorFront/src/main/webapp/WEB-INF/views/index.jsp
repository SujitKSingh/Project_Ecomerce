<%@include file="/WEB-INF/views/Header.jsp"%>
<head>
<title>Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.flex-container {
  display: flex;
  justify-content: center;
  background-color: DodgerBlue;
  border:2px solid pink;
  border-radius:5px;
}

.flex-container > div {
  background-color: #f1f1f1;
  width: 100px;
  margin: 10px;
  text-align: center;
  line-height: 75px;
  font-size: 30px;
}
</style>
</head>



</head>
<body>
	<div class="" style="width:100%;" >
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
				<a href="/InteriorFront/productDesc/767">
					<img class="img-fluid"
						src="<c:url value="/resources/images/778/1.jpg"/>" alt="Lava"
						style="width:100%; height: 500px" >
						</a>
					<div class="carousel-caption">
						<h3>Nokia 6.1</h3>
						<p>With SnapDragon Processor</p>
					</div>
				</div>

				<div class="item">
				<a href="/InteriorFront/productDesc/774">
					<img class="img-fluid"
						src="<c:url value="/resources/images/774/3.jpg"/>" alt="FormalShirt"
						style="width: 100%; height: 500px">
						</a>
					<div class="carousel-caption">
						<h3>Paris Plus Cotton Saree</h3>
						<p>Threaded With Pure Saree!</p>
					</div>
				</div>

				<div class="item">
				<a href="/InteriorFront/productDesc/776">
					<img class="img-fluid"
						src="<c:url value="/resources/images/776/1.jpg"/>" alt="Nature"
						style="width: 100%; height: 500px">
						</a>
					<div class="carousel-caption">
						<h3>Multani Mitti</h3>
						<p>Make Your Face Cool</p>
					</div>
				</div>
				
				<div class="item">
					<img class="img-fluid"
						src="<c:url value="/resources/images/777/1.jpg"/>" alt="Books"
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

