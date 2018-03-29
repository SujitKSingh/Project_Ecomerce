<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<form:form modelAttribute="category" action="InsertCategory" method="post" class="container-fluid well" >
<h3 align="center" style="background-color:pink;" class="container-fluid well">Category Page</h3>
	<table align="center" border="5" class="table table-striped table-hover" >
		<tr >
			<td>Category Name </td>
			<td><form:input type="text" path="categoryName" id="catname" name="catname" cellpadding="3px" placeholder="Enter Category" /></td>
			<td><form:errors path="categoryName" style="color:red;"/></td>
		</tr>
		<tr >
		<td>Category Desc </td>
		<td><form:input type="text" path="cateogryDesc" id="catdesc" name="catdesc" cellpadding="3px" placeholder="Enter Description" /></td>
		<td><form:errors path="cateogryDesc" style="color:red;"/></td>
		</tr>
		<tr >
			<td colspan="3" align="center" ><input type="submit"
				value="SUBMIT" class="btn btn-info" /> <a href="<c:url value="/category"/>" class="btn btn-info">Reset</a></td>
		</tr>
	</table>
</form:form>

<div class="container-fluid well" >
<table align="center" border="5"  class="table table-striped table-hover">
	<tr >
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listCategories}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.cateogryDesc}</td>
			<td><a
				href="<c:url value="/updateCategory/${category.categoryId}"/>">Update</a>/
				<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>
</table>
</div>

</body>
</html>