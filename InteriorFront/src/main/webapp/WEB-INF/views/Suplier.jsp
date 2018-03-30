<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<form:form modelAttribute="suplier"  action="InsertSuplier" method="post" class="container-fluid well" >
<h3 align="center" style="background-color:#81d4fa;" class="container-fluid well" >Suplier Page</h3>
	<table align="center" border="5" class="table table-striped table-hover" >
		<tr >
			<td>Suplier Name</td>
			<td><form:input type="text" id="suplname" path="suplierName" name="suplname" placeholder="Enter Supplier Name" /></td>
			<td><form:errors path="suplierName" style="color:red;"/></td>
		</tr>
		<td>Suplier Desc</td>
		<td><form:input type="text" id="supldesc" path="suplierDesc" name="supldesc" placeholder="Enter Supplier Desc" /></td>
		<td><form:errors path="suplierDesc" style="color:red;"/></td>
		</tr>
		<tr >
			<td colspan="2" align="center" ><input type="submit" value="SUBMIT" class="btn btn-info" style="height:35;width:100;" />&nbsp;&nbsp;
				<a href="<c:url value="/suplier"/>" class="btn btn-info" style="height:35;width:100;">Reset</a></td>
		</tr>
	</table>

<div >
<table align="center" border="5" class="table table-striped table-hover" >
	<tr align="center" style="font-family:Verdana;font-weight:bold;background-color:#81d4fa;">
		<td >Suplier ID</td>
		<td>Suplier Name</td>
		<td>Suplier Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listSupliers}" var="suplier">
		<tr align="center">
			<td >${suplier.suplierId}</td>
			<td>${suplier.suplierName}</td>
			<td>${suplier.suplierDesc}</td>
			<td align="center">
					<a href="<c:url value="/updateSuplier/${suplier.suplierId}"/>"><strong>Update</strong></a><strong>&nbsp;/&nbsp;</strong>
				&nbsp;<a href="<c:url value="/deleteSuplier/${suplier.suplierId}"/>"><strong>Delete</strong></a>
			</td>
		</tr>
	</c:forEach>

</table>
</div>
</form:form>

</body>
</html>













