<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot password</title>
 <link rel="stylesheet" href="<c:url value="/resources/css/ForgotPassword.css" />">

</head>
<body>
	<div class="main">
		<div class="register">
			<center><h2>Change Password</h2></center>
			<form action="/ForgotpasswordO" method="post" id="register">
				<label>Register Number</label> <br> <br> <input
					type="number" name="registerno" id="name" /> 
					<br><br>
					<input type="submit" value="submit" id="submit">
			</form>
		</div>
	</div>
</body>
</html>