<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3 align="center">Suplier Page</h3>

<form action="<c:url value="/updateSuplier"/>" method="post">
	<table align="center">
		<tr bgcolor="pink">
			<td colspan="2">Update Suplier</td>
		</tr>
		<tr bgcolor="cyan">
			<td>Suplier ID</td>
			<td><input type="text" readonly id="suplid" name="suplid"
				value="${SuplierInfo.suplierId}" /></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Suplier Name</td>
			<td><input type="text" id="suplname" name="suplname"
				value="${SuplierInfo.suplierName}" /></td>
		</tr>
		<td>Suplier Desc</td>
		<td><input type="text" id="supldesc" name="supldesc"
			value="${SuplierInfo.suplierDesc}" /></td>
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

