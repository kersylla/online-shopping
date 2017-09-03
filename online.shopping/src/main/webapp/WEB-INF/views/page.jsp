<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="jquery" value="/resources/jquery" />
<spring:url var="popper" value="/resources/popper" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Online shopping - ${title}</title>
<script>
	window.menu = '${title}';
</script>
<!-- Bootstrap core CSS and custom style-->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/style.css" rel="stylesheet">
</head>

<body>
	<div id="wrap">
		<!-- Navigation -->
		<%@ include file="./shared/header.jsp"%>
		<div id="main">
			<!-- Page Content -->
			<c:if test="${userClickHome==true}">
				<%@ include file="home.jsp"%>
			</c:if>
			<c:if test="${userClickAbout==true}">
				<%@ include file="about.jsp"%>
			</c:if>
			<c:if test="${userClickListProducts==true}">
				<%@ include file="listproducts.jsp"%>
			</c:if>
			<c:if test="${userClickContact==true}">
				<%@ include file="contact.jsp"%>
			</c:if>
		</div>

		<!-- /.container -->

		<!-- Footer -->
		<div id="footer">
			<%@ include file="./shared/footer.jsp"%>
		</div>

	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="${jquery}/jquery.min.js"></script>
	<script src="${popper}/popper.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/myapp.js"></script>
</body>

</html>
