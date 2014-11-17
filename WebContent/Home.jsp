<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<style>
body {
	margin-bottom: 0px;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
	background-repeat: repeat-x;
	background-color: silver;
	font: normal small Arial, Helvetica, sans-serif;
	color: #4E4E4E;
	text-align: justify;
	font-size: 16px;
}

.heading {
	font-weight: bold;
	color: #4477AA;
	height: 35px;
	padding-left: 15px;
}

.footerlinks {
	font-family: tahoma;
	font-size: 11px;
	color: #ffffff;
	text-align: center;
	text-decoration: none;
}

.footerlinks:hover {
	font-family: tahoma;
	font-size: 11px;
	color: #FFA727;
	text-decoration: none;
}

a {
	color: #899193;
	font-weight: bold;
	text-decoration: none;
}

a:hover {
	color: #727272;
	text-decoration: underline;
}

.border {
	border: 1px solid #4477AA;
}

.toplinks {
	width: 155px;
	text-align: center;
	font-size: 12px;
	font-weight: bold;
	line-height: 30px;
	height: 30px;
}

.toplinks a {
	background-color: #878F91;
	color: #ffffff;
	display: block;
	height: 30px;
	text-transform: uppercase;
	text-decoration: none;
}

.toplinks a:hover {
	background-color: #7596C3;
	color: #ffffff;
	text-decoration: none;
}

#main {
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	background-color: #ffffff;
}

#quickheading {
	font-weight: bold;
	background-color: #5B83B6;
	height: 32px;
	padding-left: 15px;
	text-transform: uppercase;
	color: #ffffff;
}

.quicklinks {
	color: #293A72;
	padding-left: 15px;
	text-decoration: underline;
}

.quicklinks:hover {
	color: #000000;
	text-decoration: underline;
}

.name {
	font-family: "century Gothic";
	font-size: 32px;
	color: #ffffff;
	padding-bottom: 5px;
	padding-left: 15px;
}

.tag {
	color: #ffffff;
	padding-left: 17px;
}
</style>
</head>
<body>
<f:view>
	<h:form>


		<table width="779" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="113">
				<table width="779" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="504">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="name">Infy Auto Sell</td>
							</tr>

						</table>
						</td>
						<td width="275"></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td>
				<table width="779" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="toplinks"><a href="Home.jsp">Homepage</a></td>
						<td width="1"></td>
						<td class="toplinks"><a href="SearchCar.jsp">Search Cars</a></td>
						<td width="1"></td>
						<td class="toplinks"><a href="Services.jsp">Services</a></td>
						<td width="1"></td>
						<td class="toplinks"><a href="AboutUs.jsp">About Us</a></td>
						<td width="1"></td>
						<td class="toplinks"><a href="LogOut.jsp">Logout</a></td>
						<td width="1"></td>

					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td valign="top" id="main" />
			</tr>


		</table>
		<center><c:choose>
			<c:when test="${role==null}">
				<h:outputLink value="Login.jsp">
					<h1>Login</h1>
					<br>
					<br>
				</h:outputLink>
			</c:when>
			<c:when test="${role=='E'}">
				<h1>Welcome</h1>

				<h:outputLink value="NewEnquiries.jsp">New Jobs Assigned</h:outputLink>
				<br>
				<h:outputLink value="FollowUpJobs.jsp">Follow Up Jobs</h:outputLink>
				<br>
				<h:outputLink value="UpdateEnquiryStatus.jsp">Change Status</h:outputLink>
				<br>
			</c:when>

			<c:when test="${role=='D'}">
				<h1>Dealer Home</h1>
				<h:outputLink value="DeliverCar.jsp">Deliver Car</h:outputLink>
				<br>
				<h:outputLink value="RegisterCar.jsp">Register Car</h:outputLink>
				<br>
				<h:outputLink value="AddModel.jsp">Add Model</h:outputLink>
				<br>
				<h:outputLink value="WithdrawModel.jsp">Withdraw Model</h:outputLink>
				<br>
				<h:outputLink value="UpdateModel.jsp">Update Model</h:outputLink>
				<br>
				<h:outputLink value="">Add Offer</h:outputLink>
				<br>
				<h:outputLink value="">Withdraw Offer</h:outputLink>
				<br>
				<h:outputLink value="">Update Offer</h:outputLink>
				<br>
				<h:outputLink value="AddCar.jsp">Add Car</h:outputLink>
				<br>
			</c:when>
			<c:otherwise>
				<h1>Customer Home</h1>
				<h:outputLink value="ChangePassword.jsp">Change Password</h:outputLink>
				<br>
				<h:outputLink value="CheckCarStatus.jsp">Check Status</h:outputLink>
				<br>
			</c:otherwise>
		</c:choose></center>
	</h:form>
</f:view>
</body>
</html>