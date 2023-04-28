<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Access Denied Page</title>
</head>
<body>
	<h2 style="color: red">Access Denied-- You are not authorized to
		access the resource.</h2>
	<hr>
	<a href="${pageContext.request.contextPath}">Back to the Home page</a>

</body>
</html>