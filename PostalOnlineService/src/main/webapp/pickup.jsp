<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pick-Up</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/register.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery-ui.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
$(function() {
	$("#datepicker").datepicker({
		minDate:new Date,
		changeMonth : true,
		changeYear : true
		
	});
});
 $(function() { 
	
	 jQuery.validator.addMethod("lettersonly", function(value, element) 
			{
			return this.optional(element) || /^[a-z," "]+$/i.test(value);
			}, "Letters and spaces only please");
	 
	$("#parcelpickup").validate({
		rules : {
			weight : {
				required : true,
				number : true
			},
			contact : {
				required : true,
				number : true,
				minlength : 10
			},
			cname : {
				required : true,
				lettersonly : true
			},
			timepicker : {
				required : true
				
			},
			pAddress : {
				required : true,
				
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
				number : true,
				minlength : 6
			}
			/* agree: "required" */
		},
		messages : {
			weight : {
				required : "Weight cannot be empty",
				number : "Enter only in number format"
			},
			contact : {
				required : "Contact cannot be empty",
				number : "Enter only numbers",
				minlegth : "Enter valid phone number"
			},
			cname : {
				required : "Name cannot be empty"
			},
			timepicker : {
				required : "Time cannot be empty"
			},
			pAddress : {
				required : "Address cannot be empty"
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
			}
		}

});

$(function() {
	$("#reset").click(function() {
		$("label.error,h4").hide();
	});
}); 
 }); 

</script>
<style type="text/css">
/* #view {
    width: 265px;
    margin-top: -4px;
    margin-bottom: -17px;
    margin-left: 14px;
}
 */
#panellogin {
    width: 726px;
    margin-top: -312px;
    margin-left: 424px;
    margin-bottom: 40px;
}
#view {
    width: 265px;
    margin-top: -4px;
    margin-bottom: -17px;
    margin-left: 113px;
    height: 314px;
    width: 255px;
}
/* #panellogin {
    width: 726px;
    margin-top: 20px;
    margin-left: 317px;
    margin-bottom: 40px;
} */
#weigthin {
    margin-left: 346px;
    margin-top: -34px;
    width: 101px;
}
</style>
</head>
<body>
<%@include file="header.jsp"%>
 	<br>
	<div id="wrapper">
		<div id="view">
		<div class="panel panel-default">
			<div class="panel-body">
			<h4>Welcome ${firstName}</h4><br>
				<c:forEach items="${list}" var="user">
	
	-----Home Address-----	<br>		
	Address:	${user.getpAddress()}<br>
	Phone:	 ${user.getContact()}<br>
	City:	${user.getpCity()}<br>
	State : ${user.getpState()}<br>
	Zipcode:	${user.getpZipcode()}<br>
	<br><br><br>
	-----Office Address-----<br>
	Address:	${user.getoAddress()}<br>
	Phone:	 ${user.getContact()}<br>
	City:	${user.getoCity()}<br>
	State : ${user.getoState()}<br>
	Zipcode:	${user.getoZipcode()}<br>
	</c:forEach>
			</div>
		</div>
	</div>
 		<div id="panellogin">
			<div class="panel panel-danger">
				<div class="panel-heading">
					<h3 class="panel-title">Package Details</h3>
				</div>
				<div class="panel-body">
					<form action="parcelpickup.do" class="form-horizontal" role="form" id="parcelpickup" method="post">
						
						<div class="form-group">
							<label for="time" class="col-sm-4 control-label">Parcel Type :<em>*</em>
							</label>
							<div class="col-sm-6">
								<select class="form-control" id="ptype" name="ptype" required>
									<option>--Select one--</option>
									<option value="greetingcard">Greating Card</option>
									<option value="official">Cart</option>
									<option value="package">Package</option>
									<option value="others">Others</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="Date" class="col-sm-4 control-label">Date :<em>*</em>
							</label>
							<div class="col-sm-6">

								<input type="text" class="form-control" id="datepicker" id="datepicker"
								name="datepicker"
									placeholder="Enter Date" required readonly>
							</div>
						</div>
						<div class="form-group">
							<label for="time" class="col-sm-4 control-label">Time :<em>*</em>
							</label>
							<div class="col-sm-6">
								<select class="form-control" id="timepicker" name="timepicker" required>
									<option>--Select Time--</option>
									<option>9:00 AM</option>
									<option>9:30 AM</option>
									<option>10:00 AM</option>
									<option>10:30 AM</option>
									<option>11:00 AM</option>
									<option>11:30 AM</option>
									<option>12:00 PM</option>
									<option>12:30 PM</option>
									<option>1:00 PM</option>
									<option>1:30 PM</option>
									<option>2:00 PM</option>
									<option>2:30 PM</option>
									<option>3:00 PM</option>
									<option>3:30 PM</option>
									<option>4:00 PM</option>
									<option>4:30 PM</option>
									<option>5:00 PM</option>
									<option>5:30 PM</option>
									<option>6:00 PM</option>
									<option>6:30 PM</option>
									<option>7:00 PM</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="weight" class="col-sm-4 control-label">Weight
								:<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="weight"
									name="weight" placeholder="Enter weight"> <select
									class="form-control" id="weigthin" name="weigthin" required>
									<option value="grams">grams</option>
									<option value="kgs">kgs</option>
								</select>
							</div>
						</div>
						
						<hr>
						<div class="form-group">
							<label for="addresstype" class="col-sm-4 control-label">Select From Address :<em>*</em>
							</label>
							<div class="col-sm-6">
								<select class="form-control" id="addresstype" name="addresstype" required>
									<option>--Select one--</option>
									<option value="home">Home</option>
									<option value="office">Office</option>
								</select>
							</div>
						</div>
						<b>To Address :</b>
						<div class="form-group">
							<label for="text" class="col-sm-4 control-label">
							Reciever Name :<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="cname" name="cname"
									placeholder="Customer name" required>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-4 control-label">Mobile#
								:<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="contact" class="form-control" id="contact"
									name="contact" placeholder="Mobile Number"  maxlength="10" required>
							</div>
						</div>
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
									name="pZipcode" placeholder="Zipcode" maxlength="6" required>
							</div>
						</div>
						<div class="form-group">

							<input type="submit" id="submit" class="btn btn-success"
								value="Submit"> <input type="reset" id="reset"
								class="btn btn-success" value="Reset">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>	
	<%@include file="footer.jsp"%>
</body>
</html>