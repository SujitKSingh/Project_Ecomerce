<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3 align="center" class="container well">Suplier Page</h3>

<form action="InsertSuplier" method="post" class="container well" >
	<table align="center">
		<tr>
			<td>Suplier Name</td>
			<td><input type="text" id="suplname" name="suplname" /></td>
		</tr>
		<td>Suplier Desc</td>
		<td><input type="text" id="supldesc" name="supldesc" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit"
				value="SUBMIT" /> <input type="reset" value="RESET" /></td>
		</tr>
	</table>
</form>

<table align="center" class="container well" border="2" >
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













