<%@include file="Header.jsp"%>
<div>
<form action="perform_login" method="post" autocomplete="off">

<div><br><br><br><br></div>
	<table align="center" border="5" class="table table-hover"  style="height:150;width:300;">
		<tr bgcolor="#dce775">
			<td colspan="2"><center>Enter Credential</center></td>
		</tr>
		<tr bgcolor="#e0e0e0">
			<td>User Name</td>
			<td><input type="text" name="username" placeholder="Enter User Name" /></td>
		</tr>
		<tr bgcolor="#e0e0e0">
			<td>Password</td>
			<td><input type="password" name="password" placeholder="Enter Password" /></td>
		</tr>
		<tr bgcolor="#dce775">
			<td colspan="2">
				<center>
					<input type="submit" value="Login" align="center" style="height:35;width:100;" class="btn btn-info" />&nbsp;&nbsp;
					<a href="<c:url value="/login"/>" style="height:35;width:100;" class="btn btn-info">Reset</a>
				</center>
			</td>
		</tr>
	</table>
</form>
<center style="background-color:White;">${message}</center>
</div>
<div><br><br><br><br><br><br><br></div>
<%@include file="Footer.jsp"%>