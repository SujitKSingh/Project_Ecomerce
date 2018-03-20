<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3 align="center">Product Page</h3>

<form action="<c:url value="/updateProduct"/>" method="post">
	<table align="center">
		<tr bgcolor="pink">
			<td colspan="2">Update Productr</td>
		</tr>
		<tr bgcolor="cyan">
			<td>Product ID</td>
			<td><input type="text" readonly id="productid" name="productid"
				value="${productInfo.productId}" /></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Product Name</td>
			<td><input type="text" id="productname" name="productname"
				value="${productInfo.productName}" /></td>
		</tr>
		<td>Product Desc</td>
		<td><input type="text" id="catdesc" name="catdesc"
			value="${productInfo.productDesc}" /></td>
		</tr>
		<tr bgcolor="cyan">
			<td colspan="2"><center>
					<input type="submit" value="Update" /> <input type="reset"
						value="RESET" />
				</center></td>
		</tr>
	</table>
</form>

<table align="center">
	<tr>
		<td>Suplier ID</td>
		<td>Suplier Name</td>
		<td>Suplier Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listSupliers}" var="suplier">
		<tr>
			<td>${suplier.suplierId}</td>
			<td>${suplier.suplierName}</td>
			<td>${suplier.suplierDesc}</td>
			<td><a
				href="<c:url value="/updateSuplier/${suplier.suplierId}"/>">Update</a>/
				<a href="<c:url value="/deleteSuplier/${suplier.suplierId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>

</table>

</body>
</html>

