<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leaders Page</title>
</head>
<body>
	<h1>Company Home Page</h1>
	<hr>
	<h3>Welcome to Home Page</h3>

	<hr>
	<!-- display user name and roles -->
	<p>
		See you in Brazil.... for our annual Leadership retreat! <br>
		Keep this trip a secret, Don't tell the regular employee!
	</p>
	<p>
		Role:
		<security:authentication property="principal.authorities" />
	</p>
	<p>
		<a href="${pageContext.request.contextPath}">Back to the Home Page</a>
	</p>
</body>
</html>