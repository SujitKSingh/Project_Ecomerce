<%@include file="Header.jsp"%>

<form action="perform_login" method="post">
	<table align="center" border="3">
		<tr bgcolor="#ef9a9a">
			<td colspan="2"><center>Enter Credential</center></td>
		</tr>
		<tr bgcolor="cyan">
			<td>User Name</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Password</td>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr bgcolor="#ef9a9a">
			<td colspan="2">
				<center>
					<input type="submit" value="Login" />
				</center>
			</td>
		</tr>
	</table>
</form>

<%@include file="Footer.jsp"%>