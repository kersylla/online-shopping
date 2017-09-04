<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1 class="my-4">Shop Name</h1>
<div class="list-group">
	<c:forEach items="${categories}" var="category">
		<a href="#" class="list-group-item">${category.getName()}</a>
	</c:forEach>
</div>