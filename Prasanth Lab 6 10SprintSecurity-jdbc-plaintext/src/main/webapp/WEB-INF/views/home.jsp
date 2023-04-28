<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>Company Home Page</h1>
	<hr>
	<h3>Welcome to Home Page</h3>

	<hr>
	<!-- display user name and roles -->
	<p>
		User:
		<security:authentication property="principal.username" />
	</p>
	<hr>
	<p>
		Role:
		<security:authentication property="principal.authorities" />
	</p>
	<hr>

	<security:authorize access="hasRole('MANAGER')">
		<!-- Add link to point to /leaders .... This is for the managers. -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership
				Meetings</a> (only for Manager Person)
		</p>
	</security:authorize>
	<hr>
	<security:authorize access="hasRole('ADMIN')">
		<!-- Add link to point to /systems .... This is for the admins. -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT System Meetings</a> (only for Admin Person)
		</p>
	</security:authorize>
	<hr>

	<!-- Add Logout Button -->
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="logout">
	</form:form>
</body>
</html>