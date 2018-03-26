<%@include file="Header.jsp"%>
<div>
<form action="perform_login" method="post">
<div><br><br><br><br></div>
	<table align="center" border="3" >
		<tr bgcolor="#dce775">
			<td colspan="2"><center>Enter Credential</center></td>
		</tr>
		<tr bgcolor="#e0e0e0">
			<td>User Name</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr bgcolor="#e0e0e0">
			<td>Password</td>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr bgcolor="#dce775">
			<td colspan="2">
				<center>
					<input type="submit" value="Login" />
				</center>
			</td>
		</tr>
	</table>
</form>
</div>
<div><br><br><br><br><br><br><br></div>
<%@include file="Footer.jsp"%>