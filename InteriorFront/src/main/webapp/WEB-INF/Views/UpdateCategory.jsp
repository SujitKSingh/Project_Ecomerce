<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<form action="<c:url value="/updateCategory"/>" class="container-fluid well" method="post">
<h3 align="center" style="background-color:#81d4fa;" >Update Category Detail</h3>
	<table align="center" border="5" class="table table-striped table-hover">
		<tr >
			<td>Category ID</td>
			<td><input type="text" readonly id="catid" name="catid"
				value="${categoryInfo.categoryId}" /></td>
		</tr>
		<tr bgcolor="#81d4fa">
			<td>Category Name</td>
			<td><input type="text" id="catname" name="catname"
				value="${categoryInfo.categoryName}" /></td>
		</tr>
		<td>Category Desc</td>
		<td><input type="text" id="catdesc" name="catdesc"
			value="${categoryInfo.cateogryDesc}" /></td>
		</tr>
		<tr bgcolor="#81d4fa">
			<td colspan="2"><center>
					<input type="submit" value="Update"  class="btn btn-info" style="height:35;width:100"  /> <input type="reset"
						value="RESET"  class="btn btn-info" style="height:35;width:100"  />
				</center></td>
		</tr>
	</table>
	
<table align="center" border="5" class="container-fluid well table table-striped table-hover">
	<tr align="center" style="font-family:Verdana;font-weight:bold;background-color:#81d4fa;">
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td align="center">Operation</td>
	</tr>
	<c:forEach items="${listCategories}" var="category">
		<tr>
			<td align="center">${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.cateogryDesc}</td>
			<td align="center"><a
				href="<c:url value="/updateCategory/${category.categoryId}"/>"><strong>Update</strong></a>/
				<a href="<c:url value="/deleteCategory/${category.categoryId}"/>"><strong>Delete</strong></a>
			</td>
		</tr>
	</c:forEach>

</table>
</form>



</body>
</html>

