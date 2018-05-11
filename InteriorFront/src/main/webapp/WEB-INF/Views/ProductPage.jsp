<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<body>
	<div class="container-fluid well">
		<div class="row">
		<h3 align="center" background-color="#81d4fa"
			class="container-fluid well">Product Page</h3>
		</div>
		<table align="center" style="width: 100%;border:5px solid white;border-radius:5px;" class="table-responsive">
			<tr bgcolor="#bcaaa4;">
				<td colspan="4" align="center" style="color:white;"><strong>Product Detail</strong></td>
			</tr>
			<tr>
				<form style="margin-top:10px;" action="${pageContext.request.contextPath}/filterBy">
					<select name="min" style="height:35px;width:150px;">
						<option value="Select Minimum">Select Minimum</option>
						<option value="0">0</option>
						<option value="1000">1000</option>
						<option value="2000">2000</option>
						<option value="5000">5000</option>
						<option value="10000">10000</option>
					</select> 
					<select name="max" style="height:35px;width:150px;">
						<option value="Select Maximum">Select Maximum</option>
						<option value="1000">1000</option>
						<option value="2000">2000</option>
						<option value="5000">5000</option>
						<option value="10000">10000</option>
						<option value="15000">15000</option>
					</select>&nbsp;&nbsp;&nbsp;<input type="submit" value="Go" style="height:35px;width:80px;" class="btn btn-success" />
				</form>
			</tr>
			<br/><br/>
			<tr>
				<c:set var="i" value="1" />
				<c:forEach items="${listProducts}" var="product">
					<td align="center" bgcolor="white" >
						<a href="<c:url value="/productDesc/${product.productId}"/>">
						<img src="<c:url value="/resources/images/${product.productId}.jpg"/>"
						width="250" height="250" /></a> <br /> <a
						href="<c:url value="/productDesc/${product.productId}"/>">${product.productName}</a>
						<br />INR. ${product.productPrice} /-</td>
					<c:if test="${i%4==0}">
			</tr>
			<tr>
				</c:if>
				<c:set var="i" value="${i+1}" />
				</c:forEach>
			</tr>

		</table>

	</div>
</body>
<%@include file="/WEB-INF/views/Footer.jsp"%>
