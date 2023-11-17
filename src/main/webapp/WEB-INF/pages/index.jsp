<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Index Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" href="../lib/bootstrap.min.css"/> -->
<!-- <script src="../lib/bootstrap.bundle.min.js"></script> -->
</head>
<body>
	<div class="container mt-5">
		<main class="form-signin">
			<c:if test="${resultMsg!=null && resultMsg.length() > 0}">
				<div class="alert alert-danger alert-dismissible">
					<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
					${resultMsg}
				</div>
			</c:if>
			<form:form modelAttribute="login" method="post">
				<!-- 				<img class="mb-4" src="../images/project-on-track-logo.png" alt="" -->
				<!-- 					width="72" height="57" /> -->
				<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

				<div class="form-floating">
					<form:input path="email" type="email" class="form-control"
						id="floatingInput" placeholder="name@projectontrack.net" />
					<label for="floatingInput">Email address</label>
				</div>
				<div class="form-floating mt-2">
					<form:input path="password" type="password" class="form-control"
						id="floatingPassword" placeholder="Password" />
					<label for="floatingPassword">Password</label>
				</div>

				<div class="checkbox mb-3">
					<label> <input type="checkbox" value="remember-me" />
						Remember me
					</label>
				</div>
				<button class="w-100 btn btn-lg btn-primary" type="submit">
					Sign in</button>
				<p class="mt-5 mb-3 text-muted">&copy; 2010-2023 RajuTech India
					Private Limited</p>
			</form:form>
		</main>
	</div>
</body>
</html>
