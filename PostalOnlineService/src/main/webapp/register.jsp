<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/register.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
	$(function() {
		
		 jQuery.validator.addMethod("lettersonly", function(value, element) 
				{
				return this.optional(element) || /^[a-z," "]+$/i.test(value);
				}, "Letters and spaces only please");
		 
		$("#register").validate({
			rules : {
				fname : {
					required : true,
					minlength : 3,
					lettersonly: true
				},
				mname : {
					
					lettersonly: true
				},
				lname : {
					
					minlength : 2,
					lettersonly: true
				},
				email : {
					required : true
				},
				password : {
					required : true,
					minlength : 6,
					maxlength : 8
				},
				pcontact : {
					required : true,
					number : true
				},
				pAddress : {
					required : true
				},
				pState : {
					required : true,
					lettersonly : true
				},
				pCity : {
					required : true,
					lettersonly : true
				},
				pZipcode : {
					required : true,
					number : true
				},
				oAddress : {
					/* required : true */
				},
				oState : {
					/* required : true, */
					lettersonly : true
				},
				oCity : {
					/* required : true, */
					lettersonly : true
				},
				oZipcode : {
					/* required : true, */
					number : true
				}
				/* agree: "required" */
			},
			messages : {
				fname : {
					required : "First name cannot be empty",
					minlength : "Firstname not less then 3 character"
				},
				mname : {
					required : "Middle name cannot be empty"
				},
				lname : {
					required : "Last name cannot be empty"
				},
				email : {
					required : "Email cannot be empty"
				},
				password : {
					required : "Password cannot be empty",
					minlength : "Password length cannot be less then 6 digits or alphabets ",
					maxlength : "Password length cannot be greater then 8 digits or alphabets "
				},
				pcontact : {
					required : "Contact cannot be empty"
				},
				pAddress : {
					required : "Address cannot be empty"
				},
				pState : {
					required : "State cannot be empty"
				},
				pCity : {
					required : "City cannot be empty"
				},
				pZipcode : {
					required : "Zipcode cannot be empty",
					minlength : "Length cannot be less then 6 digits"
				},
				oAddress : {
					/* required : "Address cannot be empty" */
				},
				oState : {
					/* required : "State cannot be empty" */
					
				},
				oCity : {
					/* required : "City cannot be empty" */
				},
				oZipcode : {
					/* required : "zipcode cannot be empty", */
					minlength : "Length cannot be less then 6 digits"
				}
			}
		});
	});

	 $(function() {
		$("#reset").click(function() {
			$("label.error,h4").hide();
		});
	}); 
</script>
<style type="text/css">

</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div id="wrapper">

		<div id="panellogin">
			<div class="panel panel-danger">
				<div class="panel-heading">
					<h3 class="panel-title">Register Here</h3>
				</div>
				<div class="panel-body">
					<form action="register.do" class="form-horizontal" role="form"
						id="register" method="post">
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">First
								Name :<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="fname" name="fname"
									placeholder="First Name" required>
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">Middle
								Name :
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="mname" name="mname"
									placeholder="Middle Name" >
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">Last
								Name :
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="lname" name="lname"
									placeholder="Last Name" >
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-4 control-label">Email :<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Ex:abc@gmail.com" required>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-4 control-label">Password
								:<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" id="password"
									name="password" maxlength="8" placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">Mobile#
								:<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="pcontact"
									name="pcontact" placeholder="Mobile number" maxlength="10"><br> <!-- <input
									type="text" class="form-control" id="lcontact" name="lcontact"
									placeholder="land line contact" required> -->
							</div>
						</div>
						<hr>
						<b>Permanent Address :</b>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="textarea">Address :<em>*</em></label>
							<div class="col-sm-6">
								<textarea class="input-xlarge" id="pAddress" name="pAddress" rows="3" cols="45" placeholder="Address" 
									required></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">City :<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="pCity" name="pCity"
									placeholder="City" required>
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">State :<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="pState" name="pState"
									placeholder="State" required>
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">Zipcode
								:<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="pZipcode"
									name="pZipcode" placeholder="pZipcode" maxlength="6" required>
							</div>
						</div>
						<hr>
						<b>Office Address :</b>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="textarea">Address :</label>
							<div class="col-sm-6">
								<textarea class="input-xlarge" id="oAddress" name="oAddress" rows="3" cols="45" placeholder="Address"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">City :
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="oCity" name="oCity"
									placeholder="City">
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">State :
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="oState" name="oState"
									placeholder="State">
							</div>
						</div>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">Zipcode
								:
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="oZipcode"
									name="oZipcode" placeholder="Zipcode" maxlength="6">
							</div>
						</div>

						<div class="form-group">

							<input type="submit" id="submit" class="btn btn-success"
								id="register" value="Register"> <input type="reset"
								id="reset" class="btn btn-success" value="Reset">
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp"%>
</body>
</html>