<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/CandidateRegistration.css" />">
    </head>
    <body>
        <div class="main">
            <div class="register">
                <form action="user_reg" method="post">
                    <h1><center>Candidate Registration</h1></center>
                    <table>
                        <tr>
                            <td>Name of the Candidate</td>
                            <td><input type="text" name="Name" placeholder="enter your name"></td>
                        </tr>
                        <tr>
                            <td>University ID</td>
                            <td><input type="text" name="ID" placeholder="enter your ID"></td>
                        </tr>
                        <tr>
                            <td>Image</td>
                            <td> <input type="file" name="img" placeholder="Upload your image"></td>
                        </tr>
                        <tr>
                            <td>Agenda</td>
                            <td><p><textarea rows="8" cols="20" placeholder="Give your agenda as an oath to your fellow students"></textarea></p></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="submit" value="Register"> </td>
                            <td><input type="reset" name="cancel" value="Cancel"> </td>
                        </tr>
                            
                    </table>
                </form>
            </div>
        </div>
     
    </body>
</html>