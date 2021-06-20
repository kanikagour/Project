<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/VotersPortal.css" />">
    </head>
    <body>
        
        <center>
            <div class="slid">
            <marquee behavior="float" direction="right">Please cast your vote below!!</marquee>
            </div>
        </center> 
        <div class="main">
            <div class="register">
                <form action="vote_casting" method="post">
                    <h1><center>Voters' Portal</h1></center>
                    <label for="Candidates">Choose a candidate:</label>
                    <select id="candidates" name="candidates">
                        <option value="A">EID001</option>
                        <option value="B">EID002</option>
                        <option value="C">EID003</option>
                        <option value="D">EID004</option>
                    </select>
                    <br><br><br>
                    <table>
                        <tr>
                            <td>
                                <input type="submit" name="submit" value="Vote">
                            </td>
                            <td>
                                <input type="reset" name="reset" value="Reset">
                            </td>
                        </tr>
                    </table>
            
                </form>
            </div>
        </div>
    
         
    </body>
</html>