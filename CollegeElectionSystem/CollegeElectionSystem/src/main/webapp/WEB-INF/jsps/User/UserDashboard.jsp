<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserDashboard</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/UserDashboard.css" />">
</head>
<body>
    <header>
        <div class="main">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="/CandidateRegistration">Candidate registration</a></li>
                <li><a href="/ViewCandidates">View Candidates</a></li>
                <li><a href="/VotersPortal">Vote</a></li>
                <li><a href="/Result">results</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/Logout">Logout</a></li>
            </ul>
        </div>
        <div class="title">
            <p>WELCOME TO DASHBOARD</p>
        </div>
    </header>
</body>
</html>