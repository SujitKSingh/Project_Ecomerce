<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Website CSS style -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet" href="Registercss.css">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<title>Admin</title>
</head>
<body>
	<div class="container">
		<div class="row main">
			<div class="main-login main-center">
				<h3>Sign up With US</h3>
				<form:form method="post" action="Register" modelAttribute="user">

					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">User
							Name</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>
								<form:input type="text" path="username" class="form-control"
									name="name" id="name" placeholder="Enter your Name" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<form:input type="password" path="password" class="form-control"
									name="password" id="password" placeholder="Enter your Password" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Customer
							Name</label>
						<div class="cols-sm-10">
							<div class="input-group">

								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control" path="customerName"
									name="username" id="username" placeholder="Enter your Username" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="mobile" class="cols-sm-3 control-label">Mobile
							No</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-mobile"
									aria-hidden="true"></i></span>
								<form:input path="mobileNo" class="form-control" name="mobile"
									id="mobile" placeholder="Enter Mobile Number " />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Your
							Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span>
								<form:input type="email" path="emailId" class="form-control"
									name="email" id="email" placeholder="Enter your Email" />
							</div>
						</div>
					</div>



					<div class="form-group">
						<label for="address-book" class="cols-sm-2 control-label">Address</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>
								<form:input type="text" path="address" class="form-control"
									name="address-book" id="confirm" placeholder="Home Address" />
							</div>
						</div>
						</di3v>

						<form:hidden path="role" value="ROLE_USER" />
						<form:hidden path="enabled" value="TRUE" />
						<div class="form-group ">
							<input type="submit" id="button"
								class="btn btn-primary btn-lg btn-block login-button"
								value="Register" />
						</div>
				</form:form>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>