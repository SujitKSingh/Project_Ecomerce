<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<title>Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<%@include file="Header.jsp"%>
<body>
<div class="container-fluid">
	<div class="row main jumbotron">
		<div class="main-login main-center">
			<h3>Sign up With US</h3>
			<form:form method="post" action="Register" name="myForm"
				modelAttribute="user">

				<div class="form-group">
					<label for="name" class="cols-sm-2 control-label">User Name</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user fa"
								aria-hidden="true"></i></span>
							<form:input type="text" path="username" class="form-control"
								name="name" id="name" placeholder="Enter your Name"
								ng-model="myInput" />

						</div>
						<form:errors path="username" style="color: red;" />
						<span style="color: red;">${usernameMsg}</span>
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
						<form:errors path="password" style="color: red;" />
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
						<form:errors path="customerName" style="color: red;" />
					</div>
				</div>

				<div class="form-group">
					<label for="mobile" class="cols-sm-3 control-label">Mobile
						No</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-mobile"
								aria-hidden="true"></i></span>
							<form:input path="mobileNo" pattern="[789]\d{9}"
								title="Please Enter Indian Mobile Number" class="form-control"
								name="mobile" id="mobile" placeholder="Enter Mobile Number " />
						</div>
						<form:errors path="mobileNo" style="color: red;" />
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="cols-sm-2 control-label">Your
						Email</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<form:input type="email" path="emailId"
								pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"
								class="form-control" name="email" id="email"
								placeholder="john@doe.com" />
							<br />

						</div>
						<form:errors path="emailId" style="color: red;" />
						<span style="color: red;">${emailMsg}</span>
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
						<form:errors path="address" style="color: red;" />
					</div>
				</div>

				<form:hidden path="role" value="ROLE_USER" />
				<form:hidden path="enabled" value="TRUE" />
				<%-- <span style="color: red;">${Null}</span> --%>
				<div class="form-group ">
					<input type="submit" id="button"
						class="btn btn-primary btn-lg btn-block login-button"
						value="Register" />
				</div>
			</form:form>
		</div>
	</div>
</div>
</body>
<%@include file="Footer.jsp"%>