<%@include file="/WEB-INF/views/Header.jsp"%>

<head>
<title>Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.caption { 
   position: absolute; width: 283px; height: 50px;left: 0px; color: black;text-align:center; font-weight:bold; opacity:0.7; }
</style>

<script>
// Set the date we're counting down to
var countDownDate = new Date("Sep 5, 2018 15:37:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
   
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = hours + "h "
    + minutes + "m " + seconds + "s ";
    
    document.getElementById("demo1").innerHTML = hours + "h "
    + minutes + "m " + seconds + "s ";
    
    document.getElementById("demo2").innerHTML = hours + "h "
    + minutes + "m " + seconds + "s ";
    document.getElementById("demo3").innerHTML = hours + "h "
    + minutes + "m " + seconds + "s ";
    
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("demo").innerHTML = "EXPIRED";
        document.getElementById("demo1").innerHTML = "EXPIRED";
        document.getElementById("demo2").innerHTML = "EXPIRED";
        document.getElementById("demo3").innerHTML = "EXPIRED";
    }
}, 1000);
</script>


</head>



</head>
<body>
   <div class="container-fluid">
	<div class="row" >
		<div id="myCarousel" class="carousel slide " data-ride="carousel"  style="width:100%;margin-top:-20px;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
				<a href="/InteriorFront/productDesc/850">
					<img class="img-fluid"
						src="<c:url value="/resources/images/60.jpg"/>" alt="Lava"
						style="width:100%; height: 500px" >
						</a>
					<div class="carousel-caption">
						<h3>MI 5</h3>
						<p>With SnapDragon Processor</p>
					</div>
				</div>

				<div class="item">
				<a href="/InteriorFront/productDesc/855">
					<img class="img-fluid"
						src="<c:url value="/resources/images/61.jpg"/>" alt="FormalShirt"
						style="width: 100%; height: 500px">
						</a>
					<div class="carousel-caption">
						<h3>Kanjivaram Sarees</h3>
						<p>Threaded With Beauty!</p>
					</div>
				</div>

				<div class="item">
				<a href="/InteriorFront/productDesc/856">
					<img class="img-fluid"
						src="<c:url value="/resources/images/62.jpg"/>" alt="Nature"
						style="width: 100%; height: 500px">
						</a>
					<div class="carousel-caption">
						<h3>Multani Mitti</h3>
						<p>Make Your Face Cool</p>
					</div>
				</div>
				
				<div class="item">
				   <a href="/InteriorFront/productDesc/859">
					<img class="img-fluid"
						src="<c:url value="/resources/images/63.jpg"/>" alt="Books"
						style="width: 100%; height: 500px">
				    </a>
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

	<div class="row" style="background-color: #f9fbe7;">
	  <div class="col-md-3" align="center" style="margin-top: 65px;">
	     <p style="font-family: serif;font-size:28px;font-weight: 400;">Top Trending Phones</p>
	     <a href="/InteriorFront/Products/36">
	       <input type="button" value="View All" class="btn btn-info" style="height: 35px;width:100px;" />
	     </a>
	  </div>
	  
	  <div class="col-md-2" >
	     <a href="/InteriorFront/productDesc/850">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/850/1.jpg"/>" alt="Mi5"
						style="height: 250px;margin-top:10px;">
		 <div class="caption" align="center" id="demo1" style="margin-top:20px"><br></div>
		 
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/851">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/851/1.jpg"/>" 
			    alt="book" style="height: 250px;margin-top:10px;">		 
		 </a>
		 <div class="caption" align="center" id="demo2" style="margin-top:20px"><br></div>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/852">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/852/1.jpg"/>" alt="FormalShirt"
						style="height: 250px;margin-top:10px;">
		 </a>
		 <div class="caption" align="center" id="demo3" style="margin-top:20px"><br></div>
	  </div>
	  <div class="col-md-3">
	     <a href="/InteriorFront/productDesc/862">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/862/1.jpg"/>" alt="Pen"
						style="height: 250px;margin-top:10px;">
		 </a>
		 <div class="caption" align="center" id="demo" style="margin-top:20px"><br></div>
	 </div>
	</div>

<hr>

   <div class="row" style="background-color: #f9fbe7;">
	  <div class="col-md-3" align="center" style="margin-top: 65px;">
	     <p style="font-family: serif;font-size:28px;font-weight: 400;">Top Trending Cloth Deals</p>
	     <a href="/InteriorFront/Products/37">
	       <input type="button" value="View All" class="btn btn-info" style="height: 35px;width:100px;" />
	     </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/853">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/853/1.jpg"/>" alt="Mi5"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/854">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/854/1.jpg"/>" 
			    alt="book" style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/855">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/855/1.jpg"/>" alt="FormalShirt"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  <div class="col-md-3">
	     <a href="/InteriorFront/productDesc/863">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/863/1.jpg"/>" alt="Pen"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	</div>

<hr>
    <div class="row" style="background-color: #f9fbe7;">
	  <div class="col-md-3" align="center" style="margin-top: 65px;">
	     <p style="font-family: serif;font-size:28px;font-weight: 400;">Top Trending Nature</p>
	     <a href="/InteriorFront/Products/38">
	       <input type="button" value="View All" class="btn btn-info" style="height: 35px;width:100px;" />
	     </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/856">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/856/1.jpg"/>" alt="book1"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/857">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/857/1.jpg"/>" 
			    alt="book2" style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/866">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/866/1.jpg"/>" alt="book3"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  <div class="col-md-3">
	     <a href="/InteriorFront/productDesc/868">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/868/1.jpg"/>" alt="book4"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	</div>
<hr>
    <div class="row" style="background-color: #f9fbe7;">
	  <div class="col-md-3" align="center" style="margin-top: 65px;">
	     <p style="font-family: serif;font-size:28px;font-weight: 400;">Top Trending Books</p>
	     <a href="/InteriorFront/Products/51">
	       <input type="button" value="View All" class="btn btn-info" style="height: 35px;width:100px;" />
	     </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/856">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/859/1.jpg"/>" alt="book1"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/860">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/860/1.jpg"/>" 
			    alt="book2" style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  
	  <div class="col-md-2">
	     <a href="/InteriorFront/productDesc/861">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/861/1.jpg"/>" alt="book3"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	  <div class="col-md-3">
	     <a href="/InteriorFront/productDesc/867">
			<img class="img-fluid thumbnail" src="<c:url value="/resources/images/867/1.jpg"/>" alt="book4"
						style="height: 250px;margin-top:10px;">
		 </a>
	  </div>
	</div>
	
  </div>
</body>

<%@include file="/WEB-INF/views/Footer.jsp"%>
</html>