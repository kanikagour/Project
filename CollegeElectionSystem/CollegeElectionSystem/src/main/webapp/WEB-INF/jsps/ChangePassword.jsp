<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/ChangePassword.css" />">

</head>
<body>
	<div class="main">
		<div class="register">
			<h2>Change Password</h2>
			<form action="/Changepassword" method="post">
				<table>
					<tr>
						<td>New Password</td>
						<td><input type="password" id="a" name="newPassword"
							placeholder="Enter New Password"></td>
					</tr>
					<tr>
						<td>Confirm Password</td>
						<td><input type="password" id="b" name="conPassword"
							placeholder="Enter Confirm Password"></td>
					</tr>
					<tr>
						<td><input type="submit" name="submit"
							value="Change Password"></td>
						<td><input type="reset" name="cancel" value="Cancel"></td>
					</tr>
				</table>

			</form>
		</div>

	</div>
</body>
</html>