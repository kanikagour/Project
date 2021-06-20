<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <h1><center>View Candidates</center></h1>
<link rel="stylesheet" href="<c:url value="/resources/css/ViewCandidate.css" />">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    </head>

    <body>
        <div class="coloumn1">

        <form>
                    <h3><center>Candidate 3</center></h3>
                    <label for="Candidate Name" class="width150px"> Name: </label>
                    <input type="text" name="Name" id="Name"/></br>

                    <label for="University ID" class="width150px">University ID: </label>
                    <input type="text" name="ID" id="ID"></br>
    
                    <label>Image: </label>
                    <img src="img_candidate.jpg" alt="Candidate's Image" width="75" height="75"></br>
                
                    <label>Agenda: </label>
                    <textarea rows="8" cols="20" placeholder="Candidate's Agenda"></textarea>

        
        <form>
        </form></div>

        <div class="coloumn2">
        <form>
            <h3><center>Candidate 1</center></h3>
                <label for="Name of the Candidate" class="width150px"> Name: </label>
                <input type="text" name="Name" id="Name"/></br>
    
                <label for="University ID" class="width150px">University ID: </label>
                <input type="text" name="ID" id="ID"></br>
        
                <label>Image: </label>
                <img src="img_candidate.jpg" alt="Candidate's Image" width="75" height="75"></br>
                    
                <label>Agenda: </label>
                <textarea rows="8" cols="20" placeholder="Candidate's Agenda"></textarea>
            
        <form>
        </div>
        
        
        <div class="coloumn3">

            <h3><center>Candidate 2</center></h3>
        <form>
                <label for="Name of the Candidate" class="width150px"> Name: </label>
                <input type="text" name="Name" id="Name"/></br>
    
                <label for="University ID" class="width150px">University ID: </label>
                <input type="text" name="ID" id="ID"></br>
        
                <label>Image: </label>
                <img src="img_candidate.jpg" alt="Candidate's Image" width="75" height="75"></br>
                    
                <label>Agenda: </label>
                <textarea rows="8" cols="20" placeholder="Candidate's Agenda"></textarea>
            
        <form>
        </div>


        
        

        
        
    </body>
</html>