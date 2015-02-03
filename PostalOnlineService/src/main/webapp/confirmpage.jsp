<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/register.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<style type="text/css">
#panelone {
	width: 300px;
	margin-left: 168px;
	margin-top: 50px;
}

#paneltwo {
	width: 300px;
	margin-left: 694px;
	margin-top: -231px;
}

#panelthree {
	width: 700px;
	margin-left: 325px;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div id="panelone">
		<div class="panel panel-danger" id="panelone">
			<div class="panel-heading">
				<h3 class="panel-title">From Address</h3>
			</div>
			<div class="panel-body">
			<%-- <c:forEach var="pro" items="${regAddress}" > --%>
			<table class="table">
					<tr>
						<td> 
						<!-- String firstname =registerPojo.getFirstName();
					String contactone =registerPojo.getContact();
					String haddress=registerPojo.getpAddress();
					String hcity=registerPojo.getpCity();
					String hstate=registerPojo.getpState();
					String hzipcode=registerPojo.getpZipcode();
						 --><%-- Name : ${pro.getFirstName()}<br>
						Contact : ${pro.getContact()}<br>
						Address : ${pro.getoAddress()}<br>
						City : ${pro.getoCity()}<br>
						State : ${pro.getoState()}<br>
						ZipCode : ${pro.getoZipcode()}
						 --%>
						 Name : ${firstname}<br>
						Contact : ${contactone}<br>
						Address : ${haddress}<br>
						City : ${hcity}<br>
						State : ${hstate}<br>
						ZipCode : ${hzipcode}
						</td>
					</tr>
				</table>
					<%-- </c:forEach> --%>
			</div>
		</div>
	</div>
	
	<div id="paneltwo">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<h3 class="panel-title">To Address</h3>
			</div>
			<div class="panel-body">
			<c:forEach var="pro" items="${parcelList}" >
				<table class="table">
					<tr>
						<td>Customer Name : ${pro.getCname()}<br>
						Contact : ${pro.getContact()}<br>
						Address : ${pro.getAddress()}<br>
						City : ${pro.getCity()}<br>
						State : ${pro.getState()}<br>
						ZipCode : ${pro.getZipcode()}
						</td>
					</tr> 
					
				</table>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<div id="panelthree">
		<div class="panel panel-danger" id="panethree">
			<div class="panel-heading">
				<h3 class="panel-title">Parcel Information</h3>
			</div>
			<div class="panel-body">
				<c:forEach var="pro" items="${parcelList}" >
				<table class="table">
					<th>Parcel Type</th>
					<th>Date</th>
					<th>Time</th>
					<th>Weight</th>
					<tr>
						<td>${pro.getPtype()}</td>
						<td>${pro.getDate()}</td>
						<td>${pro.getTime()}</td>
						<td>${pro.getWeight()} ${pro. getWeigthin()} </td>
					</tr>
				</table>
				</c:forEach>
			</div>
		</div>
	</div>
	<center><h2>Thanks for Visiting</h2></center>
	<%@include file="footer.jsp"%>
</body>
</html>