<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>UpdateProduct</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div class="cont">
	<h3 align="center" class="container-fluid well" style="background-color:#81d4fa;">Product Page</h3>
	<form:form action="${pageContext.request.contextPath}/UpdateProduct"
		method="post" modelAttribute="productInfo" enctype="multipart/form-data">
		<table align="center"  style="border:5px;" class="table table-striped table-hover well">
			<tr>
				<td colspan="2" align="center"  style="background-color:#81d4fa;">Update Product</td>
			</tr>
			
			<tr>
				<td>Product ID</td>
				<td><form:input path="productId" disabled="disabled" /></td>
			</tr>
			<tr>
				<td>Product Image</td>
				<td><form:input type="file" path="pimage" /></td>
			</tr>
			
			<tr>
				<td>Product path</td>
				<td><form:input path="productName" /></td>
			</tr>
			
			<tr>
				<td>Product Description</td>
				<td><form:input path="productDesc" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><form:input path="productPrice" /></td>
			</tr>
			
			<tr>
				<td>Stock</td>
				<td><form:input path="stock" /></td>
			</tr>
			
			<tr >
				<td>Category</td>
				<td>
				<select  name="categoryId" style="width:175;height:29;">
				   	<c:forEach items="${catlist}" var="cat">
				  	<option value="${cat.categoryId}">${cat.categoryName}</option>
				  	</c:forEach>
				</select>
				</td>
			</tr>
			
			<tr bgcolor="#81d4fa">
				<td>Suplier</td>
				<td><select  name="suplierId" style="width:175;height:29;">
				  
				  	<c:forEach items="${suplist}" var="supl">
				  	<option value="${supl.suplierId}">${supl.suplierName}</option>
				  	</c:forEach>
				 
  			 	</select>
  			 	 	 
			</tr>

			<td colspan="2"><center>
					<input type="submit" value="Update" /> <input type="reset"
						value="RESET" />
				</center></td>
			</tr>
		</table>
	</form:form>

	<table align="center" border="5" class="table table-striped table-hover well">
		<tr>
			<td>Category ID</td>
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Product Description</td>
			<td>Price</td>
			<td>Stock</td>
			<td>Suplier Id</td>


			<td>Operation</td>
		</tr>
		<c:forEach items="${listProducts}" var="product">
			<tr>
				<td>${product.categoryId}</td>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productDesc}</td>
				<td>${product.productPrice}</td>
				<td>${product.stock}</td>
				<td>${product.suplierId}</td>
				<td><a
					href="<c:url value="/updateProduct/${product.productId}"/>">Update</a>/
					<a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
				</td>
			</tr>
		</c:forEach>

	</table>
</div>