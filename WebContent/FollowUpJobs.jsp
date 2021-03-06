<%--
FileName   :-FollowUpJobs.jsp
Description:- This page will display the details of Follow Up jobs
Author     :- Abhinav Saini.        
 --%>

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
	<center><h:form style="height: 362px; width: 724px">
		<table width="779" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="120">
				<table width="770" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="500">
						<table width="95%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="name">Infy Auto Sell</td>
							</tr>

						</table>
						</td>
						<td width="270"></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td>
				<table width="770" border="0" cellspacing="0" cellpadding="0">
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
			<c:when test="${role=='E'}">

				<h2>Follow Up Jobs</h2>
				<br>
				<br>
				<h:dataTable border="1" id="Transactiontable"
					value="#{followUpMB.enquiryTOList}" var="follow">
					<h:column id="RequestId">
						<f:facet name="header">
							<h:outputText value="Request Id"></h:outputText>

						</f:facet>
						<h:outputText value="#{follow.requestId}" />
					</h:column>
					<h:column id="ProspectiveCustomerId">
						<f:facet name="header">
							<h:outputText value="Prospective Customer Id"></h:outputText>
						</f:facet>
						<h:outputText value="#{follow.prospectiveCustomerId}" />
					</h:column>
					<h:column id="ModelId">
						<f:facet name="header">
							<h:outputText value="Model Id"></h:outputText>
						</f:facet>
						<h:outputText value="#{follow.modelId}" />
					</h:column>
					<h:column id="DateOfRequest">
						<f:facet name="header">
							<h:outputText value="Date Of Request"></h:outputText>
						</f:facet>
						<h:outputText value="#{follow.dateOfRequest}">
							<f:convertDateTime type="date" dateStyle="medium" />
						</h:outputText>
					</h:column>

				</h:dataTable>
				<br>
				<br>
				<br>

				<h:selectOneMenu id="follow" value="#{followUpMB.requestId}"
					required="true" requiredMessage="Please select a Request Id">
					<f:selectItem itemLabel="Select" />
					<f:selectItems value="#{followUpMB.requestIdList}" />
				</h:selectOneMenu>
				<br>
				<br>

				<h:commandButton value="Follow Up" type="submit"
					action="#{followUpMB.getEnquiryDetails}">
				</h:commandButton>
				<br>

				<h:message for="follow">
				</h:message>
			</c:when>
			<c:otherwise>
				<center><br>
				<br>
				<br>
				<br>
				<h:outputLabel value="You are not authorized to view this page"
					style="font-size: 24px; font-weight: bolder"></h:outputLabel></center>
			</c:otherwise>
		</c:choose></center>

	</h:form></center>
</f:view>
</body>
</html>