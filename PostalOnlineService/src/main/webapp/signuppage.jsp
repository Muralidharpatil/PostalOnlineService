<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />
<script src="assets/plugins/jquery-1.11.1.js"></script>
<script type="text/javascript" src="assets/plugins/jvalidate.js"></script>
<script type="text/javascript"
	src="assets/plugins/jquery-validate.bootstrap-tooltip.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#form").validate({
			/* rules: {     
				fname: {required: true},
				lname: {required: true},
				email: {email:true,required: true},
				mobile: {required: true,number:true}
			}, */

			tooltip_options : {
				fname : {
					trigger : 'focus',
					placement : 'right'
				},
				lname : {
					trigger : 'focus',
					placement : 'right'
				},
				mobile : {
					trigger : 'focus',
					placement : 'right'
				},
				email : {
					trigger : 'focus',
					placement : 'right'
				},
				password : {
					trigger : 'focus',
					placement : 'right'
				},
				home : {
					trigger : 'focus',
					placement : 'right'
				}
			},

		});
	});
</script>

<style type="text/css">
.tooltip-inner { /* max-width: 200px; */
	padding: 3px 8px;
	color: #FFF;
	text-align: center;
	text-decoration: none;
	background-color: #C00909;
	border-radius: 4px;
	width: 143px;
}
em {
	color: red;
}
.tooltip.right .tooltip-arrow {
	top: 50%;
	left: 0;
	margin-top: -5px;
	border-width: 5px 5px 5px 0;
	border-right-color: #C00909;
}

#panel {
	width: 52%;
	margin-left: 24%;
	margin-top: 5%;
	
}

#pbody {
	margin-left: 10%;
	margin-top: 1%;
}
</style>
</head>
<body>
<header>
	<%@include file="header.jsp" %>
	</header>
	<div class="panel panel-primary" id="panel">
		<div class="panel-heading">
			<h3 class="panel-title">Registration form</h3>
		</div>
		<div class="panel-body" id="pbody">
			<form class="form-horizontal" role="form" id="form" action="register.do">

				<div class="form-group">
					<label for="firstname" class="col-sm-3 control-label">First
						Name<em>*</em>
					</label>
					<div class="col-sm-6">
						<input type="text" class="form-control required " id="fname"
							name="fname" placeholder="Enter First Name" required="required">
					</div>
				</div>

				<div class="form-group">
					<label for="lastname" class="col-sm-3 control-label">Last
						Name<em>*</em>
					</label>
					<div class="col-sm-6">
						<input type="text" class="form-control required" id="lname"
							name="lname" placeholder="Enter Last Name" required="required">
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">Email<em>*</em></label>
					<div class="col-sm-6">
						<input type="text" class="form-control required email"
							data-trigger="focus" id="email" name="email"
							placeholder="Enter Email" required="required">
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">Password<em>*</em></label>
					<div class="col-sm-6">
						<input type="password" class="form-control required password "
							id="password" name="password" placeholder="Enter password"
							required="required" maxlength="10">
					</div>
				</div>

				<div class="form-group">
					<label for="mobile" class="col-sm-3 control-label">Mobile<em>*</em></label>
					<div class="col-sm-6">
						<input type="tel" class="form-control required number "
							id="mobile" name="mobile" placeholder="Enter Mobile Number"
							required="required" maxlength="10">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">Home-Address<em>*</em>
					</label>
					<div class="col-sm-6">
						<textarea rows="3" cols="38" name="home" id="home"
							class="required" ></textarea>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-6 col-sm-10" style="margin-left: 46%;">
						<button type="button" class="btn btn-success btn-md" id="addbtn">Add
							Office Address</button>
					</div>
				</div>

				<div class="form-group" id="office">
					<label class="col-sm-3 control-label">Office-Address </label>
					<div class="col-sm-6">
						<textarea rows="3" cols="38" name="office" id="office"></textarea>
					</div>
				</div>

				<div class="form-group" id="remove">
					<div class="col-sm-offset-6 col-sm-10" style="margin-left: 46%;">
						<button type="button" class="btn btn-success btn-md">Remove
							Address</button>
					</div>
				</div>

				<br>

				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						<button type="submit" class="btn btn-primary" id="submit">Sign
							in</button>
						&nbsp;&nbsp;&nbsp;
						<button type="reset" class="btn btn-primary" id="clear">Clear</button>
						&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-primary" id="cancle">Cancel</button>
					</div>
				</div>

				
			</form>
		</div>
	</div>


	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<!-- <script src="assets/plugins/jquery.js"></script> -->
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/plugins/bootstrap.js"></script>
	<script type="text/javascript">
		$(function() {

			$("#office").hide();
			$("#remove").hide();
			$("#addbtn").click(function() {
				$("#addbtn").hide();
				$("#office").show();
				$("#remove").show();
			});

		});

		$(function() {

			$("#remove").click(function() {
				$("#addbtn").show();
				$("#office").hide();
				$("#remove").hide();

			});

		});

		$(function() {

			$("#clear")
					.click(
							function() {
								var confim = confirm("All the data will be lost. Do you wish to continue?");
								$(".tooltip.fade.right.in").remove();
							});

			 	$("#submit").click(function() {
					var confim=confirm("Registered Successfully.. Forwarded to Login Page");
				}); 

			$("#cancle")
					.click(
							function() {
								var confim = confirm("Forwarding to Login Page.Do you wish to continue?");
								window.location.href="login.do";
							});

		});
	</script>

<footer id="foot">
<%@include file="footer.jsp" %>
</footer>
</body>
</html>
