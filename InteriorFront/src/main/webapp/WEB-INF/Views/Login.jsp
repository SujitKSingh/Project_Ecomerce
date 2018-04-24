<%@include file="Header.jsp"%>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Login </title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Simple Signin Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

	<!-- css files -->
	<link rel="stylesheet" href="<c:url value="/resources/CSS/style.css"/>" type="text/css" media="all" />

	<!-- Style-CSS -->
	<link rel="stylesheet" href="<c:url value="/resources/CSS/style.css"/>">
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

</head>

<body background="/resources/images/4.jpg">
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<h2>Sign In Now</h2>
		<form action="perform_login" method="post" autocomplete="off">
				<label>Username</label>
				<div class="pom-agile">
					<span class="fa fa-user-o" aria-hidden="true"></span>
					<input placeholder="Username" name="username" class="user" type="text" required>
				</div>
				<label>Password</label>
				<div class="pom-agile">
					<span class="fa fa-key" aria-hidden="true"></span>
					<input placeholder="Password" name="password" class="pass" type="password" required>
				</div>
				<div class="sub-w3l">
					<div class="sub-agile">
						<input type="checkbox" id="brand1" value="">
						<label for="brand1">
							<span></span>Keep me Signed in</label>
					</div>
					<a href="#">Forgot Password?</a>
					<div class="clear"></div>
				</div>
				<div class="right-w3l">
					<a href="<c:url value="/login"/>"><input type="submit" value="Sign in"></a> 
				</div>
				<br>
				<center style="background-color:White;">${message}</center>
				
			</form>
		</div>
	</div>
	
</body>
<%@include file="/WEB-INF/views/Footer.jsp"%>

</html>



<%-- <head>
<style>
table {
  
  border-radius: 4em;
  overflow: hidden;
  margin-top:150px;
  }

textbox{
border-radius: 1em;
}
</style>
</head>
<body style="background-image: url('/InteriorFront/resources/images/Facebook_cover photo2.jpg');" >
<form action="perform_login" method="post" autocomplete="off" >
<table align="center" class="table"  style="height:300px;width:400px;">
		<tr style="background-color: #0081d4fa;"  >
			<td colspan="2"><center><strong>Enter Credential</strong></center></td>
		</tr>
		<tr align="center" bgcolor="#e0e0e0">
			<td>User Name</td>
			<td><input type="text" required="required" class="textbox" name="username" placeholder="Enter User Name" /></td>
		</tr>
		<tr align="center" bgcolor="#e0e0e0">
			<td>Password</td>
			<td><input type="password" required="required" name="password" placeholder="Enter Password" /></td>
		</tr>
		<tr style="background-color: #0081d4fa;">
			<td colspan="2">
				<center>
					<input type="submit" value="Login" align="center" style="height:35;width:100;" class="btn btn-success" />&nbsp;&nbsp;
					<a href="<c:url value="/login"/>" style="height:35;width:100;" class="btn btn-success">Reset</a>
				</center>
			</td>
		</tr>
	</table>
</form>
<center style="background-color:White;">${message}</center>
</body>
<div><br><br><br><br><br><br><br></div> --%>