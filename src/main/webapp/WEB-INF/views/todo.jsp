<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Mein Lebenslauf</title>
    <link rel="stylesheet" href="../webjars/bootstrap/5.1.3/css/bootstrap.min-jsf.css">
</head>
<body>
<header class="header">

</header>

<div class="container">
    <div class="d-flex justify-content-between align-items-center mt-4">
    <h1>Jay is There!</h1>
    <h2 class="welcomeName">Welcome, <%= session.getAttribute("username") %>!</h2>
    </div>
    <nav class="mt-4">
        <ul class="nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item"><a class="nav-link active" aria-current="page" href="/index">Home</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/resume">About</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/qualification">Job</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/private">Life</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/certificate">Certificate</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/contact">Contact</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/feedback">Feedback</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="auswertung.php">Feedback Table</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/list-todos">ToDo List</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/logout" class="logout">Logout</a></li>
        </ul>
    </nav>
<div class="container">

    <h1>Enter Todo Details</h1>

    <form:form method="post" modelAttribute="todo">
        <label>Title:</label>

        Description: <form:input type="text" path="description" required="required"/>
        <form:errors path="description" cssClass="text-warning"/><br>
        <form:input type="hidden" path="id"/><br>
        <form:input type="hidden" path="isDone"/><br>

        <input type="submit" class="btn btn-primary" value="Submit">
    </form:form>

</div>

</div>

<script src="../webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
