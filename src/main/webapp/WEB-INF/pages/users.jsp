<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="px-4 py-5 my-5 text-center container">
		<c:if test="${resultMsg != null}">
			<div class="alert alert-success alert-dismissible">
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				${resultMsg}
			</div>
		</c:if>
		<h1 class="display-5 fw-bold">PoT - Users List</h1>
		<c:choose>
			<c:when test="${!empty users}">
				<table border="1" bgcolor="cyan" align="center"
					class="table table-striped">
					<tr bgcolor="pink">
						<th>User Name</th>
						<th>Email ID</th>
						<th>Department</th>
						<th>Address</th>
						<th>Edit User</th>
						<th>Delete</th>
					</tr>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.userName}</td>
							<td>${user.email}</td>
							<td>${user.dept}</td>
							<td>${user.address}</td>
							<td><a href="edit_user?uid=${user.uid}" type="button"
								class="btn btn-primary"><span class="bi bi-pencil"></span>
									Edit</a></td>
							<td><a href="delete_user?uid=${user.uid}"
								onclick="confirm('Do u want to delete')" type="button"
								class="btn btn-danger"><span class="bi bi-trash"></span>
									Delete </a></td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			<c:otherwise>
				<h1 style="color: red; text-align: center">Records not found</h1>
			</c:otherwise>
		</c:choose>
<!-- 		<blink> -->
<%-- 			<h1 style="color: green; text-align: center">${resultMsg}</h1> --%>
<!-- 		</blink> -->
		<br>
		<h1 style="text-align: center">
			<a href="add" type="button" class="btn btn-success"><span
				class="bi bi-person-add"></span> Add User</a>
		</h1>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>