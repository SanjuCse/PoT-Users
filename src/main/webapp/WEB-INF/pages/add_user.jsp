<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Registration Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">
										Add New User</p>
									<form:form cssClass="mx-1 mx-md-4" modelAttribute="user" method="post">
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Your
													Name</label>
												<form:input path="userName" type="text" id="form3Example1c"
													class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Your
													Email</label>
												<form:input path="email" type="email" id="form3Example3c"
													class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3d">Address</label>
												<form:input path="address" type="text" id="form3Example3d"
													class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3e">Department</label>
												<form:input path="dept" type="text" id="form3Example3e"
													class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Password</label>
												<form:input path="password" type="password"
													id="form3Example4c" class="form-control" />
											</div>
										</div>
										<div class="form-check d-flex justify-content-center mb-5">
											<input class="form-check-input me-2" type="checkbox" value=""
												id="form2Example3c" /> <label class="form-check-label"
												for="form2Example3"> I agree all statements in <a
												href="#!">Terms of service</a>
											</label>
										</div>
										<div class="d-flex">
											<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-primary btn-lg">
													Register</button>
											</div>
											<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="reset" class="btn btn-primary btn-lg">
													Cancel</button>
											</div>

										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
