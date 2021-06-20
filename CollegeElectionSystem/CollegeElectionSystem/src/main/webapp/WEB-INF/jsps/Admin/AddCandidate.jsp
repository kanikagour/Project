<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/AddCandidate.css" />">
    </head>
    <body>
        <div class="main">
            <div class="register">
                <h1>Add Candidate</h1>
                <form class="add-cand" action="add-cand" method="post">
                    <table>
                        <tr>
                            <td >Candidate Name</td>
                            <td><input type="text" id="a"name="Name" placeholder="enter your name"></td>
                        </tr>
                        <tr>
                            <td>University ID</td>
                            <td><input type="text" id="a" name="ID" placeholder="enter your ID"></td>
                        </tr>
                        <tr>
                            <td>Image</td>
                            <td> <input type="file" id="a" name="img" placeholder="Upload your image"></td>
                        </tr>
                        <tr>
                        
                        <td> <label for="Department">Select Department</label></td>
                        <td><select id="Select" name="Select">
                                <option value="Default">Select</option>
                                <option value="CSE">CSE</option>
                                <option value="ECE">ECE</option>
                                <option value="EEE">EEE</option>
                                <option value="CE">CE</option>
                            </select></td> 
                        </tr> 
                    </table>
                    <br>
                    <br>
                    <input type="submit" id="sub" name="submit" value="Add"> </td>
                </form>
            </div>
        </div>
    
          
    </body>
</html>