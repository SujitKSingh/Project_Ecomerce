<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<c:if test="${product!=null}">
	<form:form method="post" action="InsertProduct"
		modelAttribute="product" enctype="multipart/form-data" class="container-fluid well">
		<h3 align="center" class="container-fluid well" style="background-color:pink;">Product Page</h3>
		<table align="center" border="5" class="table table-striped table-hover" >
			<tr >
				<td>Product Image</td>
				<td><form:input type="file" path="pimage" class="form-control-file"/></td>
			</tr>
			
			<tr >
				<td>Product Name</td>
				<td><form:input path="productName" placeholder="Enter Product Name" /></td>
				<td><form:errors path="productName" style="color:red;"/></td>
			</tr>
			
			<tr >
				<td>Product Price</td>
				<td><form:input path="productPrice" placeholder="Enter Price" /></td>
				<td><form:errors path="productPrice" style="color:red;"/></td>
			</tr>
			
			<tr>
				<td>Product Desc</td>
				<td><form:input path="productDesc" placeholder="Enter Description" /></td>
				<td><form:errors path="productDesc" style="color:red;"/></td>
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
			
			<tr>
				<td>Suplier</td>
				<td><select  name="suplierId" style="width:175;height:29;">
				  
				  	<c:forEach items="${suplist}" var="supl">
				  	<option value="${supl.suplierId}">${supl.suplierName}</option>
				  	</c:forEach>
				 
  			 	</select>
  			 	 	 
			</tr>

			<tr align="center" >
				<div>
					<td colspan="2"><input type="submit" value="SUBMIT" class="btn btn-info" /> <input
						type="reset" value="RESET"  class="btn btn-info" />
				</div>
				</td>
			</tr>
		</table>
	</form:form>
</c:if>
<div  class="container-fluid well" > 
<table align="center" border="5"  class="table table-striped table-hover" >
	<tr >
		<td align="center" >Product ID</td>
		<td>Product Name</td>
		<td>Product Price</td>
		<td>Product Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listProducts}" var="product">
		<tr>
			<td align="center" >${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.productPrice}</td>
			<td>${product.productDesc}</td>
			<td>
				<a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>

</table>
</div>
</body>
</html>














