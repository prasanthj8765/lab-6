<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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
		User:<security:authentication property="principal.username"/>
	</p>
 
	<p>
		Role:<security:authentication property="principal.authorities"/>
	</p>
	<!-- Add Logout Button -->
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value = "logout">
	</form:form>
</body>
</html>