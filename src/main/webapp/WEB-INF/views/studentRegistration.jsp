<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Tag to use CSS file -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/studentRegistrationStyles.css' />" />
	
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

<title>Student Registration Form</title>

<!-- Bootstrap for some tags -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
	
	
	<!-- CSS for Background -->
</head>
<body>
	<div class="form-container">
		<h2>Registration Form</h2>

		<!-- Invalid Data Exception Message -->
		<c:if test="${not empty errorMessage}">
			<div class="alert alert-danger" role="alert">
				<!-- Display all errors -->
				${errorMessage}
				
			</div>
		</c:if>

		<!-- Registration Form -->

		<form action="submitRegistration" method="post"
			enctype="multipart/form-data">
			
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>

			<div class="form-group">
				<label for="id">ID:</label> <input type="text" id="id" name="id"
					required>
			</div>

			<div class="form-group">
				<label for="email">Email:</label> <input type="text" id="email"
					name="email" required>
			</div>

			<div class="form-group">
				<label for="dob">Date of Birth:</label> <input type="text" id="dob"
					name="dob" placeholder="YYYY-MM-DD" required>
			</div>

			<!-- List of Data -->

			<div class="form-group">
				<label for="course">Course:</label> <select id="course"
					name="course" required multiple>
					<option value="java">Java</option>
					<option value="python">C++</option>
					<option value="web">Web Development</option>
					<option value="data">Data Science</option>
				</select>
			</div>

			<div class="form-group">
				<label>Gender:</label>
				<div class="gender-group">
					<label for="male"><input type="radio" id="male"
						name="gender" value="male" required> Male</label> <label
						for="female"><input type="radio" id="female" name="gender"
						value="female" required> Female</label> <label for="other"><input
						type="radio" id="other" name="gender" value="other" required>
						Other</label>
				</div>
			</div>

			<div class="form-group">
				<label>Address</label> <label for="street"></label> <input
					type="text" id="street" name="address.street"
					placeholder="Enter Street" required /> <label for="city"></label>
				<input type="text" id="city" name="address.city"
					placeholder="Enter City" required />
			</div>

			<!-- Adding a field for uploading Image file  -->

			<div class="form-group">
				<label for="exampleFormControlFile1">Upload IdCard</label> <input
					type="file" class="form-control-file" id="profile" name="profile">
			</div>

			<div class="form-group">
				<button type="submit">Register</button>
			</div>
		</form>
	</div>
</body>
</html>
