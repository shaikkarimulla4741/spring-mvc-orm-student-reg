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
	
	<!-- CSS for Background -->
<style>
body {
	background-image: url('<c:url value="/resources/img/background2.jpg" />');
	/* Replace with the correct path to your image */
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	font-family: Arial, sans-serif;
	color: #333;
}

.container {
	margin-top: 50px;
}

.card {
	background-color: rgba(255, 255, 255, 0.9);
	/* Slight transparency to blend with background */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
}

.card-header {
	background-color: #28a745;
	color: white;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-body {
	padding: 20px;
}

.form-group label {
	font-weight: bold;
}

.form-control {
	border-radius: 5px;
}

.btn-success {
	background-color: #28a745;
	border-color: #28a745;
}

.btn-outline-danger {
	border-color: #dc3545;
	color: #dc3545;
}

.btn-outline-danger:hover {
	background-color: #dc3545;
	color: white;
}

.btn {
	width: 100px;
	margin: 10px;
}
</style>

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
