<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>  

<%@include file="Header.jsp"%>

<script type="text/javascript">
function valid(){
	var name=document.forms.item(0);
	for(i=0;i<document.forms.length;i++)
		{
		if(document.forms.item(i)===''){
			console.log(document.forms.item(1).id+' can not be null');
		}
		}
}
</script>

<script>
var app = angular.module('myApp', []);
app.directive('myDirective', function() {
    return {
        require: 'ngModel',
        link: function(scope, element, attr, mCtrl) {
            function myValidation(value) {
                if (value.indexOf("e") > -1) {
                    mCtrl.$setValidity('charE', true);
                } else {
                    mCtrl.$setValidity('charE', false);
                }
                return value;
            }
            mCtrl.$parsers.push(myValidation);
        }
    };
});
</script>


<div class="container-fluid">
	<div class="row main jumbotron">
		<div class="main-login main-center">
			<h3>Sign up With US</h3>
			<form:form method="post" action="Register" name="myForm" modelAttribute="user">

				<div class="form-group">
				{{3<2}}
					<label for="name" class="cols-sm-2 control-label">User Name</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user fa"
								aria-hidden="true"></i></span>
							<form:input type="text" path="username" class="form-control"
								name="name" id="name" placeholder="Enter your Name" ng-model="myInput"/>
						</div>
						<span style="color: red;">${usernameMsg}</span>
					</div>
				</div>
				{{3<2}}
				<div class="form-group">
					<label for="password" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
							<form:input type="password" path="password" class="form-control"
								name="password" id="password" placeholder="Enter your Password"  />
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
								name="username" id="username" placeholder="Enter your Username"  />
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
							<br />

						</div>
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
					</div>
				</div>

				<form:hidden path="role" value="ROLE_USER" />
				<form:hidden path="enabled" value="TRUE"   />
				<%-- <span style="color: red;">${Null}</span> --%>
				<div class="form-group ">
					<input type="submit" id="button"
						class="btn btn-primary btn-lg btn-block login-button"
						value="Register" onclick="valid()" ng-bind="myInput" />
				</div>
			</form:form>
		</div>
	</div>
</div>

<%@include file="Footer.jsp"%>