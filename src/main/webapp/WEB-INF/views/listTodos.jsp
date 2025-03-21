<%@ taglib prefix="c" uri="jakarta.tags.core" %>

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
    <table class="table mt-4">
        <thead>
        <tr>
            <th>id</th>
            <th>Description</th>
            <th>Target Date</th>
            <th>Is Done</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.id}</td>
                <td>${todo.description}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.isDone}</td>
                <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">DELETE</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <button class="btn btn-primary" onclick="window.location.href='/add-todo'">Add Todo</button>
</div>

<script src="../webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
