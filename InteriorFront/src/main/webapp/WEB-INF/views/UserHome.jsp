<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container-fluid well ">

<h3 align="center" style="background-color:pink;" >User Home</h3>
<table class=" container-fluid table table-striped table-hover " border="5" >
<tr style="background-color:pink;" align="center">
		<td>UserName</td>
		<td>Order Detail</td>
		<td>TotalAmount</td>
		<td>ShippingAddress</td>
		<td>Transaction Type</td>
		</tr>
<c:set var="i" value="1"/>
<c:forEach items="${orderdetails}" var="order">
<tr>
<td>${i}</td>
<%-- <td>${order.UserName}</td> --%>
<td align="center">${order.orderDate}</td>
<td>${order.totalAmount}</td>
<td>${order.shippingAddress}</td>
<td align="center" >${order.transactionType}</td>
</tr>
<c:set var="i" value="${i+1}"/>
</c:forEach>
</table>
 </div>
<%@include file="/WEB-INF/views/Footer.jsp"%>