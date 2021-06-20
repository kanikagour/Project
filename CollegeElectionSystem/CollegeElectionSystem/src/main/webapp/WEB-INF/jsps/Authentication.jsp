<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User Authentication</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/Authentication.css" />">
</head>

<body
	style="margin: 0; padding: 0; display: grid; place-content: center; min-height: 100vh;">
	<div class="authuntication">
		<h1 style="text-align: center; color: white;">
			<b>User Authentication</b>
		</h1>

		<form style="margin: 40px;" action="/Authentication" method="post">
			<div id="que">${que}</div>
			<br> <br> <input type="text" name="sanswers" id="name">
			<br>
			<br> <input type="submit" id="submit"
				style="text-decoration-thickness: 20px;">


		</form>
	</div>
</body>
</html>