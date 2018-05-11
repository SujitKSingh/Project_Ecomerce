<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<form action="<c:url value="/updateSuplier"/>" method="post" class="container-fluid well">
<h3 align="center" style="background-color:#81d4fa;" >Update Suplier Detail</h3>
	<table align="center" style="border:5px;" class="table table-striped table-hover">
		<tr >
			<td>Suplier ID</td>
			<td><input type="text" readonly id="suplid" name="suplid"
				value="${SuplierInfo.suplierId}" /></td>
		</tr>
		<tr bgcolor="#81d4fa">
			<td>Suplier Name</td>
			<td><input type="text" id="suplname" name="suplname"
				value="${SuplierInfo.suplierName}" /></td>
		</tr>
		<td>Suplier Desc</td>
		<td><input type="text" id="supldesc" name="supldesc"
			value="${SuplierInfo.suplierDesc}" /></td>
		</tr>
		<tr bgcolor="#81d4fa">
			<td colspan="2"><center>
					<input type="submit" value="Update" class="btn btn-info" style="height:35;width:100"  /> 
					<input type="reset" value="RESET"  class="btn btn-info" style="height:35;width:100" />
				</center></td>
		</tr>
	</table>
</form>

<table align="center" border="5" class="well table table-striped table-hover">
	<tr style="text-align:center;background-color:#81d4fa;font-family:Verdana;font-weight:bold;" >
		<td>Suplier ID</td>
		<td>Suplier Name</td>
		<td>Suplier Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listSupliers}" var="suplier">
		<tr>
			<td align="center">${suplier.suplierId}</td>
			<td>${suplier.suplierName}</td>
			<td>${suplier.suplierDesc}</td>
			<td align="center" ><a style="height:35;width:100"
				href="<c:url value="/updateSuplier/${suplier.suplierId}" />"><strong>Update</strong></a>/
				<a href="<c:url value="/deleteSuplier/${suplier.suplierId}"/>"><strong>Delete</strong></a>
			</td>
		</tr>
	</c:forEach>

</table>

</body>
</html>

