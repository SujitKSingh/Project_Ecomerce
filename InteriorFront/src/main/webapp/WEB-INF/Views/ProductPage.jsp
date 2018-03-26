<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<body>
<div class="container-fluid well" >
<h3 align="center" class="container-fluid well" >Product Page</h3>
<table align="center" border="4" style="width:100%" >
	<tr bgcolor="pink">
		<td colspan="4" align="center">Product Detail</td>
	</tr>
	<tr >
		<c:set var="i" value="1"/>
		<c:forEach items="${listProducts}" var="product">
			<td align="center" bgcolor="#1de9b6"><img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="250" height="250" /> <br /> 
				<a href="<c:url value="/productDesc/${product.productId}"/>" >${product.productName}</a>
				<br />INR. ${product.productPrice} /-</td>
				<c:if test="${i%4==0}">
					</tr>
					<tr>
				</c:if>
				<c:set var="i" value="${i+1}"/>
		</c:forEach>
	</tr>
</table>
</div>
</body>
<%@include file="/WEB-INF/views/Footer.jsp"%>
