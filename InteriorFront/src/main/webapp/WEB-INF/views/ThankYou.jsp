<%@include file="Header.jsp"%>

<head>
<title>Thank You Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.thankyoumsg 
{
-webkit-animation:highlight 0.5s infinite;
animation:highlight 0.5s infinite;
}

@-webkit-keyframes highlight{
	from{color:black;}
	to{color:#ff6d00;}
}

@keyframes highlight{
	from{color:black;}
	to{color:#ff6d00;}
}

</style>
</head>
<div class="row" align="center">
<img class="container" src="<c:url value="/resources/images/shopingcart.png"/>" style="width: 60%; height:555px;"  />
<div class="thankyoumsg carousel-caption">
<h3> You will recieve mail for your order details</h3>
</div>
</div>


<%@include file="Footer.jsp"%>