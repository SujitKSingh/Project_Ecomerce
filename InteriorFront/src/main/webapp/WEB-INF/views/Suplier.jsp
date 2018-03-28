<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<form action="InsertSuplier" method="post" class="container-fluid well" >
<h3 align="center" style="background-color:pink;" class="container-fluid well" >Suplier Page</h3>
	<table align="center" border="5" class="table table-striped table-hover" >
		<tr >
			<td>Suplier Name</td>
			<td><input type="text" id="suplname" name="suplname" placeholder="Enter Supplier Name" /></td>
		</tr>
		<td>Suplier Desc</td>
		<td><input type="text" id="supldesc" name="supldesc" placeholder="Enter Supplier Desc" /></td>
		</tr>
		<tr >
			<td colspan="2" align="center" ><input type="submit"
				value="SUBMIT" class="btn btn-info" /> <input type="reset" value="RESET" class="btn btn-info"  /></td>
		</tr>
	</table>
</form>
<div class="container-fluid well" >
<table align="center" border="5" class="table table-striped table-hover" >
	<tr align="center">
		<td >Suplier ID</td>
		<td>Suplier Name</td>
		<td>Suplier Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listSupliers}" var="suplier">
		<tr>
			<td align="center"  >${suplier.suplierId}</td>
			<td>${suplier.suplierName}</td>
			<td>${suplier.suplierDesc}</td>
			<td><a href="<c:url value="/updateSuplier/${suplier.suplierId}"/>">Update</a> / 
				<a href="<c:url value="/deleteSuplier/${suplier.suplierId}"/>">Delete </a>
			</td>
		</tr>
	</c:forEach>

</table>
</div>
</body>
</html>













