<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h3 align="center">Product Page</h3>
<div class="container" >
<table align="center">
	<tr bgcolor="pink">
		<td colspan="4" align="center">Product Detail</td>
	</tr>
	<tr >
		<c:forEach items="${listProducts}" var="product">

			<td><img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="250" height="250" /> <br /> 
				<a href="<c:url value="/productDesc/${product.productId}"/>" >${product.productName}</a>
				<br />INR. ${product.productPrice} /-</td>

		</c:forEach>
	</tr>
</table>
</div>
<%@include file="/WEB-INF/views/Footer.jsp"%>
</body>

</html>
