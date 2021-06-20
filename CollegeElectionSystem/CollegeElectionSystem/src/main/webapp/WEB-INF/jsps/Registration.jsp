<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
     <link rel="stylesheet" href="<c:url value="/resources/css/Registration.css" />">

<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("a").value;
        var confirmPassword = document.getElementById("b").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return "/userLogin";
    }
</script>
</head>
<body>
    <div class="main">
      <div class="register">
         <h2>Register Here</h2>
         <form  id="register" action="/registration" method="post">
            
            <label>User Name</label>
            <br>
            <input type="text" id="name" name="name" placeholder="Enter your user name">
            <br>
            <label> Registration Number</label>
            <br>
            <input type="number" id="register_no" name="registerno" placeholder="Enter your register no">
            <br>
            <label> Email Id</label>
            <br>
            <input type="text" id="email" name="email" placeholder="Enter your email id">
            <br>
           <label for="gender">Choose your security question:</label><br> 
			<select name="gender" id="gender" >
				<option value="Male">Male</option>
				<option value="Female">Female</option>
				<option value="Others">Others</option>
				</select>
            <br>
            <label>Department</label>
            <br>
            <input type="text" id="department" name="depa" placeholder="Enter your department">
            <br>
            <label> Password</label>
            <br>
            <input type="password" id="a" name="password" placeholder="Enter your password">
            <br>
            <label> Confirm Password</label>
            <br>
            <input type="password"  id="b" name="cpass" placeholder="Enter password for confirmation">
            <br>
		<label for="squestion">Choose your security question:</label><br> 
			<select name="squestions" id="squestion">
				<option value="Which was your favorite location?">Which was your favorite location?</option>
				<option value="What was your childhood nick name?">What was your childhood nick name?</option>
				<option value="Who was your favorite celebrity?">Who was your favorite celebrity?</option>
				</select>
            <br>
            <label> Answer</label>
            <br>
            <input type="text" id="sanswers" name="sanswers" placeholder="Enter your answer">
            <br>
            <br>
            <input type="submit"  value="Submit" >
            <br><br>
            <div id="reg">${reg}</div>
         </form>
        </div>
    </div>
</body>
</html>