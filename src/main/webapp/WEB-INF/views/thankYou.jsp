<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="<c:url value='/resources/css/thankYouStyles.css' />" />

<title>Thank You!</title>

</head>

<body>
	<div class="thank-you-container">
		<h1>Thank You, ${sD.name}!</h1>
		<p>Your submission has been received successfully.</p>
		<p class="details">
			Name: <span>${sD.name}</span><br> Email: <span>${sD.email}</span>
		</p>
		<p>We appreciate your effort and will get back to you shortly.</p>
	</div>
</body>
</html>
